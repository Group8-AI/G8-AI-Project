from app.models.base_model import *
from app.config.Database import db
class CustomerModel(BaseModel):
    def __init__(self, mongo = db):
        super().__init__(collection_name='customer', mongo=db)


