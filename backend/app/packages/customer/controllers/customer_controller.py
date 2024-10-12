import os
from flask import request, jsonify
from ..services.customer_service import CustomerService
from app.controllers.base_controller import BaseController
from app.packages.customer.models.customer_model import CustomerModel
from app import app
class UserController(BaseController): 
    def __init__(self, service = CustomerService()): 
        super().__init__(service)

    def create(self, data):
        return super().create(data)
    
    

@app.route('/api/addcustomer', methods=['POST'])
def add_customer():
    
    # Kiểm tra xem có dữ liệu gửi lên hay không
    if 'firstname' not in request.form or 'lastname' not in request.form or 'customerId' not in request.form or 'phoneNumber' not in request.form or 'image' not in request.files:
        return jsonify({"error": "Missing required fields"}), 400

    firstname = request.form['firstname']
    lastname = request.form['lastname']
    customerId = int(request.form['customerId'])
    phone = request.form['phone']
    
    # Lấy hình ảnh chữ ký từ yêu cầu
    signature_file = request.files['image']
    
    if signature_file and allowed_file(signature_file.filename):
        # Chuyển đổi hình ảnh thành dạng base64
        import base64
        from io import BytesIO
        from PIL import Image

        # Đọc và chuyển đổi hình ảnh
        img = Image.open(signature_file.stream)
        buffered = BytesIO()
        img.save(buffered, format="PNG")  # Lưu dưới dạng PNG
        img_str = base64.b64encode(buffered.getvalue()).decode('utf-8')  # Chuyển đổi thành base64
    else:
        return jsonify({"error": "Invalid file type. Only JPEG and PNG are allowed."}), 400

    # Tạo đối tượng CustomerModel và lưu thông tin khách hàng
    customer_data = {
        'firstname': firstname,
        'lastname': lastname,
        'customerId': customerId,
        'phone': phone,
        'image': img_str  # Lưu hình ảnh dưới dạng base64
    }

    customer_model = CustomerModel()
    result = customer_model.create(customer_data)  # Gọi phương thức lưu vào DB

    if 'error' in result:
        return jsonify(result), 400

    return jsonify({"message": "Customer added successfully", "customer": customer_data}), 201

def allowed_file(filename):
    ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg'}
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS