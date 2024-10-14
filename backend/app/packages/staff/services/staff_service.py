from app.config.Hash import Hash
from app.services.base_service import BaseService
from ..models.staff_model import StaffModel
from app.models.base_model import BaseModel
from app.models.customer_model import CustomerModel  # Model khách hàng

class StaffService(BaseService):
    def __init__(self, model=StaffModel(), session=None):
        super().__init__(model, session)

    def create(self, data):
        hash_util = Hash()  # Tạo một đối tượng Hash
        # Băm mật khẩu nếu có trong dữ liệu
        if 'password' in data:
            data['password'] = hash_util.getHash(data['password'])  # Thay thế mật khẩu bằng mật khẩu đã băm
        response = self.model.create(data)  # Tạo người dùng mới
        return response

    def get_by_email(self, email):
        user = self.model.get_by_email(email)
        return user

    # Hàm để lấy dữ liệu bảng điều khiển
    def get_dashboard_data(self):
        try:
            # Lấy tổng số lượng chữ ký thật và giả (dữ liệu mẫu)
            verified_signatures = self.model.mongo.db['signatures'].count_documents({"verified": True})
            forged_signatures = self.model.mongo.db['signatures'].count_documents({"forged": True})

            # Lấy khách hàng có chữ ký được xác thực nhiều nhất
            top_customer = self.model.mongo.db['signatures'].aggregate([
                {"$group": {"_id": "$customer_id", "count": {"$sum": 1}}},
                {"$sort": {"count": -1}},
                {"$limit": 1}
            ])

            result = {
                "verified_signatures": verified_signatures,
                "forged_signatures": forged_signatures,
                "top_customer": list(top_customer)  # Chuyển kết quả sang list
            }
            return result
        except Exception as e:
            raise e
