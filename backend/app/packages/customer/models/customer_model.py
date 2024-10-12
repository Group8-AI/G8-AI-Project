from app.models.base_model import *
from app.config.Database import db
from pymongo.errors import DuplicateKeyError

class CustomerModel(BaseModel):
    def __init__(self, mongo=db):
        super().__init__(collection_name='customer', mongo=mongo)

    def create(self, data):
        try:
            # Kiểm tra xem khách hàng đã tồn tại chưa
            if super().find_one({"id": data['id']}):
                return {"error": "Customer with this ID already exists"}, 400

            # Kiểm tra xem số điện thoại đã tồn tại chưa
            if super().find_one({"phone": data['phone']}):
                return {"error": "Customer with this phone number already exists"}, 400

            # Thêm thông tin khách hàng vào DB
            result = super().insert(data)
            print(result)  # Có thể xóa dòng này trong môi trường sản xuất
            return {"_id": str(result.inserted_id)}, 201  # Trả về ID khách hàng vừa thêm
        except DuplicateKeyError:
            return {"error": "Duplicate key error"}, 400  # Xử lý lỗi trùng khóa
        except Exception as e:
            return {"error": str(e)}, 500  # Trả về lỗi nếu có vấn đề
