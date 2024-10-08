
from flask import request, jsonify
from ..services.customer_service import CustomerService
from app.controllers.base_controller import BaseController
from app import app
class UserController(BaseController): 
    def __init__(self, service = CustomerService()): 
        super().__init__(service)

    def create(self, data):
        return super().create(data)
    

