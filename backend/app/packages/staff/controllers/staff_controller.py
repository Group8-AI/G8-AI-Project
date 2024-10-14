from flask import request, jsonify
from app.controllers.base_controller import BaseController
from ..services.staff_service import StaffService
from app import app
import jwt
import os

class StaffController(BaseController):
    def __init__(self, service=StaffService()):
        super().__init__(service)

    def create(self, data):
        return super().create(data)

    def dashboard(self):
        token = None
        if 'Authorization' in request.headers:
            token = request.headers['Authorization'].split(" ")[1]  # Lấy JWT token từ header

        if not token:
            return jsonify({"error": "Token is missing!"}), 403

        try:
            data = jwt.decode(token, os.getenv('JWT_SECRET_KEY'), algorithms=["HS256"])
            if data['role'] != 'admin':  # Kiểm tra quyền admin
                return jsonify({"error": "You are not authorized to access this resource"}), 403
        except Exception as e:
            return jsonify({"error": "Invalid token!"}), 403

        try:
            data = self.service.get_dashboard_data()
            return jsonify({"message": "Success", "data": data}), 200
        except Exception as e:
            return jsonify({"error": str(e)}), 500

user_controller = StaffController()

@app.route('/api/user/signup', methods=['POST'])
def create_user():
    data = request.json
    if not data or 'email' not in data or 'password' not in data:  # Validate data
        return jsonify({"error": "Missing required fields"}), 400

    result = user_controller.create(data)
    return result

# Route cho API dashboard (chỉ cho phép admin)
@app.route('/api/admin/dashboard', methods=['GET'])
def admin_dashboard():
    return user_controller.dashboard()
