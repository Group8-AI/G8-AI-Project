import os
from flask import request, jsonify
from app.controllers.base_controller import BaseController
from app import app
import jwt
from app.controllers.base_controller import BaseController
from ..services.exchange_service import ExchangeService

class ExchangeController(BaseController):
    def __init__(self, service=ExchangeService):
        super().__init__(service)
    def create(self,data):
        return super().create(data)
    
exchange_controller=ExchangeController()

@app.route('/api/load_signature', methods=['POST'])
def load_signature():

    customer_id = request.form.get('customerId')
    # Kiểm tra file ảnh trong request
    image = request.files['image'] if 'image' in request.files else None
    if not image:
        return jsonify({"error": "No image uploaded"}), 400

    image_filename = f"{customer_id}_{image.filename}"
    image_path = os.path.join(os.getenv('STORAGE_PATH'), image_filename)
    
    # Tạo thư mục nếu chưa tồn tại
    os.makedirs(os.path.dirname(image_path), exist_ok=True)
    
    # Lưu ảnh vào đường dẫn
    image.save(image_path)
    exchange_data={
        "customer_id":customer_id,
        "imagePath":image_filename
    }
    return exchange_controller.create(exchange_data)
   

    