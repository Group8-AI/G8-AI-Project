import os
from flask import request, jsonify,session,redirect,url_for
from app.controllers.base_controller import BaseController
from app.packages.auth.controllers.password_controller import password_controller
from ..services.staff_service import StaffService
from werkzeug.utils import secure_filename
from app.packages.customer.models.customer_model import CustomerModel

from app import app

class StaffController(BaseController):
    def __init__(self, service=StaffService()):
        super().__init__(service)
    def create(self, data):
        return super().create(data)
    


user_controller = StaffController()

@app.route('/api/user/signup', methods=['POST'])
def create_user():
    data = request.json
    if not data or 'email' not in data or 'password' not in data:  # Validate data
        return jsonify({"error": "Missing required fields"}), 400

    result = user_controller.create(data)
    return result
@app.route('/api/logout', methods=['POST'])
def logout():
    data = request.json  # Nhận dữ liệu JSON từ yêu cầu
    if data:
        if 'token' in data:  # Kiểm tra nếu có token trong dữ liệu
            return password_controller.logout(data)
        else:
            return jsonify({"error": "Missing token"}), 400
    else:
        return jsonify({"error": "Missing data"}), 400
