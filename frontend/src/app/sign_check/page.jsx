'use client';
import React, { useState } from 'react';
import Header from "@/components/header"; 
import ImageUploading from 'react-images-uploading';
import { callAPI } from "@/utils/api-caller";
const SignatureCheck = () => {
    const [images, setImages] = useState(null);
    const [customerId, setCustomerId] = useState(""); // State for customer ID
    const [result, setResult] = useState(null);
    const [errorText, setErrorText] = useState("");
    const maxNumber = 69;

    const buttonStyle = {
        margin: '10px auto',
        padding: '10px 20px',
        backgroundColor: '#458A55',
        color: '#fff',
        border: 'none',
        borderRadius: '20px',
        cursor: 'pointer',
    };

    const onChange = (imageList) => {
        setImages(imageList);
        setErrorText(""); // Clear any previous error message when an image is uploaded
    };

    const handleSubmit = async () => {
        try {
            if (images && images.length > 0 && customerId) { // Ensure customerId is entered
                const formData = new FormData();
                formData.append('image', images[0].file); // Send the uploaded image
                formData.append('customerId', customerId); // Include customerId

                // First call to load the signature
                const loadResponse = await callAPI("/load_signature", "POST", formData, null, true);
                
                if (loadResponse) {
                    console.log('Load image successfully');
                    
                    // Now call /api/verify_signature after loading the signature
                    const verifyData = { customerId }; // Create a payload for verification
                    const verifyResponse = await callAPI("/verify_signature", "POST", JSON.stringify(verifyData), {
                        'Content-Type': 'application/json'
                    });

                    // Check if verification response is successful
                    if (verifyResponse && verifyResponse.result) {
                        setResult(verifyResponse.result); // Set the result to be displayed
                    } else {
                        setErrorText("Error: Unable to verify signature.");
                        setResult(null);
                    }
                } else {
                    console.error('Error loading image', loadResponse.message);
                    setErrorText('Error loading image.');
                }
            } else {
                console.error('No image or customer ID entered');
                setErrorText('Please select an image and enter a customer ID.');
            }
        } catch (error) {
            console.error('Error when calling server:', error);
            setErrorText('Server error. Please try again later.');
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
                        {/* Customer ID Input */}
                        <div style={{ marginTop: '20px' }}>
                            <label htmlFor="customer-id" style={{ display: 'block', marginBottom: '10px', fontWeight: 'bold' }}>Customer ID:</label>
                            <input
                                id="customer-id"
                                type="text"
                                placeholder="Enter customer ID"
                                value={customerId}
                                onChange={(e) => setCustomerId(e.target.value)}
                                style={{
                                    width: '100%',
                                    padding: '10px',
                                    borderRadius: '4px',
                                    border: '1px solid #c0c0c0',
                                    fontSize: '16px',
                                    marginBottom: '20px'
                                }}
                            />
                        {images && images.length > 0 ? (
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
                                <div style={{ display: 'flex', justifyContent: 'space-between', margin: '10px auto' }}>
                                    <button
                                        style={isDragging ? { ...buttonStyle, color: "red" } : buttonStyle}
                                        onClick={onImageUpload}
                                        {...dragProps}
                                    >
                                        Upload
                                    </button>
                                    <button
                                        onClick={handleSubmit}
                                        style={buttonStyle}
                                    >
                                        Submit
                                    </button>
                                    <button
                                        onClick={onImageRemoveAll}
                                        style={buttonStyle}
                                    >
                                        Remove all images
                                    </button>
                                </div>
                            )}
                        </ImageUploading>
                        {/* Error message display */}
                        {errorText && (
                            <div style={{ color: 'red', marginTop: '10px' }}>
                                {errorText}
                            </div>
                        )}
                        
                        </div>
                    </div>
                </div>

                {/* Right Side: Result and Customer ID Input */}
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
