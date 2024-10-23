from app.config.Database import db
from app.models.base_model import BaseModel
from pymongo.errors import DuplicateKeyError

class ExchangeModel(BaseModel):
    def __init__(self, collection_name='exchange', mongo=db):
        super().__init__(collection_name, mongo)
    