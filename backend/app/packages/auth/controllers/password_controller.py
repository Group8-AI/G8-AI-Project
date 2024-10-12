from .auth_controller import AuthController
from flask import  jsonify
from ..services.password_service import PasswordService
valid_tokens = []
class PasswordController(AuthController):
    def __init__(self, service = PasswordService()):
        super().__init__(service)
    def logout(data):
        token = data['token']
    # Kiểm tra nếu token có trong danh sách token hợp lệ
        if token in valid_tokens:
            valid_tokens.remove(token)  # Xóa token khỏi danh sách
            return jsonify({"message": "Successfully logged out"}), 200
        else:
            return jsonify({"error": "Token is invalid or already logged out"}), 400
    
    
password_controller = PasswordController()
