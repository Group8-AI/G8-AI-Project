import jwt
import os
from datetime import datetime, timedelta
from app.config.Hash import *
from .auth_service import AuthService
from ..models.password_model import PasswordModel

class PasswordService(AuthService):
    def __init__(self):
        super().__init__(model=PasswordModel())

    def authenticate(self, data):
        user = self.model.get_by_username(username=data["identifier"])
        if not user:
            raise Exception('Username không tồn tại')

        # Kiểm tra mật khẩu
        hash_util = Hash()
        if not hash_util.checkHash(self.model.get_authen_method(user["email"]), data["password"]):
            raise Exception('Mật khẩu không đúng')

        # Tạo JWT token
        token = jwt.encode({
            'email': user['email'],
            'role': user['role'],  # Đảm bảo role được thêm vào JWT
            'exp': datetime.utcnow() + timedelta(hours=1)  # Thời gian hết hạn là 1 giờ
        }, os.getenv('JWT_SECRET_KEY'), algorithm="HS256")

        user_data = {
            "username": user['username'],
            "role": user['role']  # Thêm role vào dữ liệu trả về
        }

        return token, user_data
