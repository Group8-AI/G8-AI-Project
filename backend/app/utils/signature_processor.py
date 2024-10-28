import tensorflow as tf
import torch
import torch.nn as nn
import torch.nn.functional as F
import numpy as np
import torchvision.models as models
from tensorflow.keras.preprocessing import image
from torchvision import transforms

class SiameseResNet(nn.Module):
    def __init__(self):
        super(SiameseResNet, self).__init__()
        # Load pretrained VGG16 model
        self.vgg16 = models.vgg16(pretrained=True)
        # Use only the feature extraction part of VGG16
        self.feature_extractor = self.vgg16.features

    def forward(self, input1, input2):
        # Extract features from both inputs
        output1 = self.feature_extractor(input1)
        output2 = self.feature_extractor(input2)

        # Flatten the output for both branches
        output1 = torch.flatten(output1, start_dim=1)
        output2 = torch.flatten(output2, start_dim=1)

        return output1, output2

class SignatureProcessor:
    def __init__(self):
        model_path = "app/model/model_vgg16.pth"
        # Set up the device
        self.device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

        # Initialize and load the Siamese model
        self.verification_model = SiameseResNet().to(self.device)
        self.verification_model.load_state_dict(torch.load(model_path, map_location=self.device))
        self.verification_model.eval()

        # Define preprocessing transformations
        self.preprocess = transforms.Compose([
            transforms.Resize((224, 224)),
            transforms.ToTensor(),
            transforms.Normalize([0.485, 0.456, 0.406], [0.229, 0.224, 0.225])
        ])

    def preprocess_image(self, img_path):
        # Load and preprocess the image
        img = image.load_img(img_path, target_size=(224, 224))
        img_array = image.img_to_array(img)
        img_tensor = self.preprocess(image.array_to_img(img_array)).unsqueeze(0)
        return img_tensor.to(self.device)

    def verify_signature(self, img1_tensor, img2_tensor):


        with torch.no_grad():
            features1, features2 = self.verification_model(img1_tensor, img2_tensor)
        
        # Calculate cosine similarity
        similarity = F.cosine_similarity(features1, features2)
        
        # Set threshold for verification
        threshold = 0.85
        return similarity.item() > threshold, similarity.item()
