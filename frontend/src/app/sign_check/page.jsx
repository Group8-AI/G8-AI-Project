'use client';
import React, { useState } from 'react';
import Header from "@/components/header"; 
import ImageUploading from 'react-images-uploading';

const SignatureCheck = () => {
    const [images, setImages] = useState([]);
    const [result, setResult] = useState(null);
    const maxNumber = 69;

    const onChange = (imageList) => {
        setImages(imageList);
    };

    const handleSubmit = async () => {
        if (images.length > 0) {
            const formData = new FormData();
            images.forEach((image) => {
                formData.append('images', image.file);
            });

            try {
                const response = await fetch('/api/your-ai-endpoint', { // Đổi thành endpoint thực tế của bạn
                    method: 'POST',
                    body: formData,
                });

                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }

                const data = await response.json();
                setResult(data.result);
            } catch (error) {
                console.error('Error:', error);
            }
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
                                            Remove all images
                                        </button>
                                    
                                </div>
                            )}
                        </ImageUploading>
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
