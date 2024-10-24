import os
from flask import request, jsonify
from app.controllers.base_controller import BaseController
from app import app
from app.controllers.base_controller import BaseController
from ..services.exchange_service import ExchangeService
from app.utils.signature_processor import SignatureProcessor

class ExchangeController(BaseController):
    def __init__(self, service=ExchangeService):
        super().__init__(service)
        self.signature_processor = SignatureProcessor()
    def create(self,data):
        return super().create(data)
    def process_signature(self, image_path, customer_id):
        # Lấy ảnh chữ ký mẫu từ collection customer
        customer = self.db.customer.find_one({"customerId": customer_id})
        if not customer:
            return {"error": "Customer not found"}, 404

        template_signature_path = os.path.join(os.getenv('STORAGE_PATH'), customer['imagePath'])
        
        # Xử lý ảnh input
        input_img = self.signature_processor.preprocess_image(image_path)
        template_img = self.signature_processor.preprocess_image(template_signature_path)

       
        
        # Verify chữ ký
        is_verified = self.signature_processor.verify_signature(input_img, template_img)
        
        return jsonify({"isVerified": is_verified})

    
exchange_controller=ExchangeController()

@app.route('/api/load_signature', methods=['POST'])
def load_signature():

    customer_id = request.form.get('customerId')
    # Kiểm tra file ảnh trong request
    image = request.files['image'] if 'image' in request.files else None
    if not image:
        return jsonify({"error": "No image uploaded"}), 400

    image_filename = f"{customer_id}_{image.filename}"
    image_path = os.path.join(os.getenv('STORAGE_EXCHANGE_PATH'), image_filename)
    
    # Tạo thư mục nếu chưa tồn tại
    os.makedirs(os.path.dirname(image_path), exist_ok=True)
    
    # Lưu ảnh vào đường dẫn
    image.save(image_path)
    exchange_data={
        "customer_id":customer_id,
        "imagePath":image_filename
    }
    return exchange_controller.create(exchange_data)

@app.route('/api/verify_signature', methods=['POST'])
def verify_signature():
    image_path = request.form['image_path']
    customer_id = request.form['customer_id']
    return exchange_controller.process_signature(image_path, customer_id)