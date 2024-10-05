from app.services.base_service import BaseService
from ..models.staff_model import StaffModel
class StaffService(BaseService): 
    def __init__(self, model = StaffModel, session = None):
        super().__init__(model, session)