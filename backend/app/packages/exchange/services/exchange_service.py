from app.services.base_service import BaseService
from ..models.exchange_model import ExchangeModel
class ExchangeService(BaseService):
    def __init__(self, model = ExchangeModel, session = None):
        super().__init__(model, session)
    def create(self, data):
        print(data)
        response = self.model.create(data)  # Tạo khách hàng mới
        print(data)
        return response
    
