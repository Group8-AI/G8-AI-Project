'use client';
import React, { useState } from 'react';
import Header from "@/components/header"; 
import ImageUploading from 'react-images-uploading';

const SignatureCheck = () => {
    const [images, setImages] = useState([]);
    const [result, setResult] = useState(null);
    const [customerId, setCustomerId] = useState('');
    const maxNumber = 69;

    const onChange = (imageList) => {
        setImages(imageList);
    };

    const handleSubmit = async () => {
        if (images.length > 0 && customerId) {  // Kiểm tra xem đã nhập ID khách hàng chưa
            const formData = new FormData();
            images.forEach((image) => {
                formData.append('file', image.file);  // Đổi tên key thành 'file'
            });
            formData.append('customer_id', customerId);  // Thêm ID khách hàng vào formData

            try {
                const response = await fetch('/api/loadsignature', {  // Endpoint mới
                    method: 'POST',
                    body: formData,
                });

                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }

                const data = await response.json();
                setResult(data.message);  // Hiển thị thông báo từ server
            } catch (error) {
                console.error('Error:', error);
            }
        } else {
            alert('Please upload an image and enter a customer ID.');  // Thông báo lỗi nếu thiếu thông tin
        }
    };

    return (
        <div style={{ backgroundColor: '#f9f9f9', padding: '20px' }}>
            <Header />
            <h1 style={{ textAlign: 'center', color: '#458A55', marginBottom: '40px', paddingTop: '100px', fontWeight: 'bolder', fontSize: '30px' }}>
                Try Our Online Handwritten Signature Detection Demo
            </h1>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start' }}>
                {/* Left Side: Image Uploading */}
                <div style={{ flex: 1, marginRight: '20px' }}>
                    <div style={{ padding: '20px', borderRadius: '8px', border: '1px solid #c0c0c0', backgroundColor: '#fff', textAlign: 'center' }}>
                        {images.length > 0 ? (
                            <img src={images[0].data_url} alt="" style={{ borderRadius: '8px', width: '100%', maxWidth: '300px', marginBottom: '20px' }} />
                        ) : (
                            <div style={{ padding: '40px', border: '1px dashed #c0c0c0', borderRadius: '8px', marginBottom: '20px' }}>
                                No image uploaded
                            </div>
                        )}
                        <ImageUploading
                            multiple
                            value={images}
                            onChange={onChange}
                            maxNumber={maxNumber}
                            dataURLKey="data_url"
                        >
                            {({
                                onImageUpload,
                                onImageRemoveAll,
                                isDragging,
                                dragProps
                            }) => (
                                <div style={{display: 'flex',justifyContent: 'space-between', margin: '10px auto'}}>
                                    <button
                                        style={isDragging ? { color: "red" } : null}
                                        onClick={onImageUpload}
                                        {...dragProps}
                                        className="upload-button"
                                        style={{
                                            margin: '10px auto',
                                            padding: '10px 20px',
                                            backgroundColor: '#458A55',
                                            color: '#fff',
                                            border: 'none',
                                            borderRadius: '20px',
                                            cursor: 'pointer',
                                        }}
                                    >
                                        Upload
                                    </button>
                                        <button
                                            onClick={handleSubmit}
                                            style={{
                                                margin: '10px auto',
                                            padding: '10px 20px',
                                            backgroundColor: '#458A55',
                                            color: '#fff',
                                            border: 'none',
                                            borderRadius: '20px',
                                            cursor: 'pointer',
                                            }}
                                        >
                                            Submit
                                        </button>
                                        <button
                                            onClick={onImageRemoveAll}
                                            style={{
                                                margin: '10px auto',
                                            padding: '10px 20px',
                                            backgroundColor: '#458A55',
                                            color: '#fff',
                                            border: 'none',
                                            borderRadius: '20px',
                                            cursor: 'pointer',
                                            }}
                                        >
                                            Remove image
                                        </button>
                                    
                                </div>
                            )}
                        </ImageUploading>
                        <div style={{ marginTop: '20px' }}>
                            <input
                                type="text"
                                placeholder="Enter Customer ID"
                                value={customerId}
                                onChange={(e) => setCustomerId(e.target.value)}  // Cập nhật state ID khách hàng
                                style={{
                                    padding: '10px',
                                    width: '100%',
                                    borderRadius: '5px',
                                    border: '1px solid #c0c0c0',
                                    marginBottom: '10px',
                                }}
                            />
                        </div>
                    </div>
                </div>

                {/* Right Side: Result */}
                <div style={{ flex: 1, paddingLeft: '20px' }}>
                    <div style={{ padding: '20px', borderRadius: '8px', border: '1px solid #c0c0c0', backgroundColor: '#fff', textAlign: 'center' }}>
                        <h2 style={{ color: '#458A55', fontWeight: 'bold', fontSize: '24px' }}>Result:</h2>
                        <div style={{ padding: '10px', border: '1px solid black', borderRadius: '4px', backgroundColor: '#fff', marginBottom: '20px', minHeight: '100px' }}>
                            {result ? <p>{result}</p> : <p>No result yet.</p>}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default SignatureCheck;
