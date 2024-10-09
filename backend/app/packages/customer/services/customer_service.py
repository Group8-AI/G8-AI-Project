

from app.services.base_service import BaseService
from ..models.customer_model import CustomerModel

class CustomerService(BaseService): 
    def __init__(self, model= CustomerModel(), session = None):
        super().__init__(model, session)
