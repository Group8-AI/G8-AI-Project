import os
from bson import ObjectId
from app.services.base_service import BaseService
from ..models.exchange_model import ExchangeModel
from app.utils.signature_processor import SignatureProcessor
class ExchangeService(BaseService):
    def __init__(self, model = ExchangeModel(), session = None):
        super().__init__(model, session)
        self.signature_processor = SignatureProcessor()
    def create(self, data):
        id = self.model.create(data) 
        return id
    def process(self, customer_id, exchange_id):
        # Lấy ảnh chữ ký mẫu từ collection customer
        customer = self.model.find_customerId(customer_id)
        if not customer: 
            return False
        print(exchange_id)
        exchange = self.model.find_one({"_id": ObjectId(exchange_id)})
        print (exchange)
        
        real_signature_path = os.path.join(os.getenv('STORAGE_PATH'), customer['imagePath'])
        sign_path = os.path.join(os.getenv('STORAGE_EXCHANGE_PATH'), exchange['imagePath'])
        # Xử lý ảnh input
        input_img = self.signature_processor.preprocess_image(sign_path)
        template_img = self.signature_processor.preprocess_image(real_signature_path)
        print (sign_path)
        print (real_signature_path)
        # Verify chữ ký
        is_verified, similar = self.signature_processor.verify_signature(input_img, template_img)
        print("độ giống nhau: ", similar)

        self.model.update_status(exchange["_id"], is_verified, similar)        
        return is_verified