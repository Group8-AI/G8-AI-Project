from pymongo.errors import DuplicateKeyError
from app.models.base_model import *
from app.config.Database import db
class CustomerModel(BaseModel):
    def __init__(self, mongo):
        super().__init__(collection_name='customer', mongo=db)
    def create(self, data):
        try:
            if super().find_one({"email": data['email']}):
                return {"error": "User already exists"}, 400
            result = super().insert(data)
            print (result)
            return {"_id": str(result.inserted_id)}, 201
        except DuplicateKeyError:
            return {"error": "User already exists"}, 400
    def get_by_email(self, email): 
        user = super().find_one({"email": email})
        if user:
            user["_id"] = str(user["_id"])
            return user
        return None
    def update(self, query, data):
        return super().update(query, data)
