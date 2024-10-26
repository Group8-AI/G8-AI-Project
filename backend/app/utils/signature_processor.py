import tensorflow as tf
import torch
import torch.nn as nn
import numpy as np
import torchvision.models as models
from tensorflow.keras.preprocessing import image

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

        # Flatten the output for both branches (VGG16 outputs a 3D tensor [batch_size, 512, 7, 7])
        output1 = torch.flatten(output1, start_dim=1)
        output2 = torch.flatten(output2, start_dim=1)

        return output1, output2
class SignatureProcessor:
    def __init__(self):
        model_path = "app/model/model_vgg16.pth"
        # Load các model
        device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

        # Khởi tạo mô hình từ lớp SiameseResNet
        self.verification_model = SiameseResNet()

        # Chuyển mô hình sang thiết bị
        self.verification_model = self.verification_model.to(device)

        # Tải trọng số mô hình
        self.verification_model.load_state_dict(torch.load(model_path, map_location=device))

        # Đặt mô hình về chế độ đánh giá
        self.verification_model.eval()

        

    def preprocess_image(self, img_path):
        # Xử lý ảnh đầu vào
        img = image.load_img(img_path, target_size=(224, 224))
        img_array = image.img_to_array(img)
        img_array = np.expand_dims(img_array, axis=0)
        return img_array / 255.0

    def verify_signature(self, img1_array, img2_array):
        # So sánh 2 chữ ký
        features1, features2 = self.verification_model(img1_array.to(device), img2_array.to(device))
        
        # Tính cosine similarity
        similarity = np.dot(features1.flatten(), features2.flatten()) / (
            np.linalg.norm(features1.flatten()) * np.linalg.norm(features2.flatten())
        )
        
        # Trả về True nếu similarity > threshold
        return similarity > 0.85, similarity