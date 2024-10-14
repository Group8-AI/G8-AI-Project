"use client";

import React from 'react';
import { Doughnut, Bar } from 'react-chartjs-2';
import { Chart, ArcElement, CategoryScale, LinearScale, BarElement } from 'chart.js';

// Register necessary components
Chart.register(ArcElement, CategoryScale, LinearScale, BarElement);

const SignCheckDashboard = () => {
    // Mock data simulating the response from the backend
    const dashboardData = {
        totalSignaturesVerified: 150,
        signatureStats: {
            forged: 40,
            original: 110,
        },
        topCustomers: [
            { name: 'Customer A', forgedSignatures: 10 },
            { name: 'Customer B', forgedSignatures: 15 },
            { name: 'Customer C', forgedSignatures: 5 },
            { name: 'Customer D', forgedSignatures: 8 },
            { name: 'Customer E', forgedSignatures: 12 },
            { name: 'Customer F', forgedSignatures: 6 },
            { name: 'Customer G', forgedSignatures: 3 },
            { name: 'Customer H', forgedSignatures: 2 },
            { name: 'Customer I', forgedSignatures: 1 },
            { name: 'Customer J', forgedSignatures: 7 },
        ],
    };

    const { totalSignaturesVerified, signatureStats, topCustomers } = dashboardData;

    const doughnutData = {
        labels: ['Forged Signature', 'Original Signature'],
        datasets: [
            {
                data: [signatureStats.forged, signatureStats.original],
                backgroundColor: ['#D4A344', '#688A5D'],
                hoverBackgroundColor: ['#D4A344', '#688A5D'],
            },
        ],
    };

    const barData = {
        labels: topCustomers.map(customer => customer.name),
        datasets: [
            {
                label: 'Forged Signatures',
                data: topCustomers.map(customer => customer.forgedSignatures),
                backgroundColor: '#688A5D',
                borderColor: '#688A5D',
                borderWidth: 1,
            },
        ],
    };

    const barOptions = {
        scales: {
            y: {
                beginAtZero: true,
                ticks: {
                    stepSize: 5, // Adjust step size as needed
                },
            },
        },
    };

    return (
        <div style={{ backgroundColor: '#f9f9f9', padding: '20px' }}>
            <h1 style={{ textAlign: 'center', color: '#458A5D', marginBottom: '40px', paddingTop: '100px', fontWeight: 'bolder', fontSize: '30px' }}>
                Sign-Check Dashboard
            </h1>

            <h2 style={{ textAlign: 'center', color: '#688A5D', marginBottom: '20px' }}>Numbers of signatures verified</h2>
            <h3 style={{ textAlign: 'center', fontSize: '48px', color: '#688A5D', marginBottom: '50px' }}>{totalSignaturesVerified}</h3>

            <div style={{ display: 'flex', justifyContent: 'center', alignItems: 'flex-start' }}>
                <div style={{ flex: 1, marginRight: '20px', textAlign: 'center' }}>
                    <div style={{ padding: '20px', borderRadius: '8px', border: '1px solid #c0c0c0', backgroundColor: '#fff' }}>
                        <Doughnut data={doughnutData} />
                    </div>
                </div>

                <div style={{ flex: 1, paddingLeft: '20px', textAlign: 'center' }}>
                    <div style={{ padding: '20px', borderRadius: '8px', border: '1px solid #c0c0c0', backgroundColor: '#fff' }}>
                        <h2 style={{ color: '#458A55', fontWeight: 'bold', fontSize: '24px' }}>Top 10 customers with most forged signatures</h2>
                        <Bar data={barData} options={barOptions} />
                    </div>
                </div>
            </div>
        </div>
    );
};

export default SignCheckDashboard;