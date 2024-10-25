import os
from app.services.base_service import BaseService
from ..models.exchange_model import ExchangeModel
from app.utils.signature_processor import SignatureProcessor
class ExchangeService(BaseService):
    def __init__(self, model = ExchangeModel(), session = None):
        super().__init__(model, session)
        self.signature_processor = SignatureProcessor()
    def create(self, data):
        response = self.model.create(data) 
        return response
    def process(self, customer_id):
        # Lấy ảnh chữ ký mẫu từ collection customer
        customer = self.model.find_customerId(customer_id)
        print(customer)
        if not customer: 
            return False
        exchange = self.model.find_one({"customer_id": customer_id})
        print (exchange["_id"])
        
        real_signature_path = os.path.join(os.getenv('STORAGE_PATH'), customer['imagePath'])
        sign_path = os.path.join(os.getenv('STORAGE_EXCHANGE_PATH'), exchange['imagePath'])
        # Xử lý ảnh input
        input_img = self.signature_processor.preprocess_image(sign_path)
        template_img = self.signature_processor.preprocess_image(real_signature_path)

        # Verify chữ ký
        is_verified, similar = self.signature_processor.verify_signature(input_img, template_img)
        print("độ giống nhau: ", similar)

        self.model.update_status(exchange["_id"], is_verified, similar)        
        return is_verified