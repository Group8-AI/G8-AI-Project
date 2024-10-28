import tensorflow as tf
import torch
import torch.nn as nn
import torch.nn.functional as F
import numpy as np
import torchvision.models as models
from PIL import Image
from torchvision import transforms

class SiameseResNet(nn.Module):
    def __init__(self):
        super(SiameseResNet, self).__init__()
        # Load pretrained ResNet18 model
        self.resnet = models.resnet18(pretrained=True)

        # Remove the fully connected layer (we are only interested in feature extraction)
        self.resnet = nn.Sequential(*(list(self.resnet.children())[:-1]))

    def forward(self, input1, input2):
        # Extract features from both inputs
        output1 = self.resnet(input1)
        output2 = self.resnet(input2)


        # Flatten the output for both branches
        output1 = torch.flatten(output1, start_dim=1)
        output2 = torch.flatten(output2, start_dim=1)

        return output1, output2

class SignatureProcessor:
    def __init__(self):
        model_path = "app/model/model_resnet18_1.pth"
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
        ])

    def preprocess_image(self, img_path):
        # Load and preprocess the image
        img = Image.open(img_path)
        img_tensor = self.preprocess(img)
        return img_tensor.to(self.device)

    def verify_signature(self, img1_tensor, img2_tensor):

        features1 = None
        features2 = None
        img1_tensor = img1_tensor.unsqueeze(0)  # Add batch dimension
        img2_tensor = img2_tensor.unsqueeze(0)
        with torch.no_grad():
            features1, features2 = self.verification_model(img1_tensor, img2_tensor)
        # Calculate cosine similarity
        similarity = F.cosine_similarity(features1, features2)
        print (similarity)
        # Set threshold for verification
        threshold = 0.85
        preds = (similarity.mean() > threshold)

            # Store predictions and true labels
        print (preds)
        return preds, similarity.mean()
