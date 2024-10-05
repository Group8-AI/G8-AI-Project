from app.config.Database import db
from app.models.base_model import BaseModel

class StaffModel(BaseModel):
    def __init__(self, collection_name = "staff", mongo=db):
        super().__init__(collection_name, mongo)