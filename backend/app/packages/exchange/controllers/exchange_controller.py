import os
from flask import Flask, request, jsonify
from app.controllers.base_controller import BaseController
from app import app
from ..services.exchange_service import ExchangeService

class ExchangeController(BaseController):
    def __init__(self, service=ExchangeService()):
        super().__init__(service)

    def create(self, data):
        # Insert data and retrieve the new exchange ID
        result = self.service.create(data)
        if result:
            exchange_id = result  # Assuming MongoDB is used, which returns an ObjectId
            return jsonify({"message": "Exchange created successfully", "id": exchange_id}), 201
        else:
            return jsonify({"error": "Could not create exchange"}), 500

    def verify_signature(self, customer_id, exchange_id):
        # Process signature verification with provided customer_id and exchange_id
        res = self.service.process(customer_id, exchange_id)
        if res:
            return jsonify({"message": "Signature approved"}), 200
        else:
            return jsonify({"error": "Signature not approved"}), 401

exchange_controller = ExchangeController()

@app.route('/api/load_signature', methods=['POST'])
def load_signature():
    # Retrieve customer ID from form data
    customer_id = request.form.get('customerId')
    image = request.files['image'] if 'image' in request.files else None
    
    # Check if an image was uploaded
    if not image:
        return jsonify({"error": "No image uploaded"}), 400

    # Define the image file path and save the image
    image_filename = f"{customer_id}_{image.filename}"
    image_path = os.path.join(os.getenv('STORAGE_EXCHANGE_PATH'), image_filename)
    
    os.makedirs(os.path.dirname(image_path), exist_ok=True)
    image.save(image_path)

    # Prepare exchange data with customer ID and image path
    exchange_data = {
        "customer_id": customer_id,
        "imagePath": image_filename
    }
    
    # Create exchange record and return response with generated ID
    
    return exchange_controller.create(exchange_data)

@app.route('/api/verify_signature', methods=['POST'])
def verify_signature():
    # Retrieve customer_id and exchange_id from JSON payload
    customer_id = request.json.get('customer_id')
    exchange_id = request.json.get('exchange_id')
    
    # Verify signature with customer ID and exchange ID
    return exchange_controller.verify_signature(customer_id, exchange_id)
