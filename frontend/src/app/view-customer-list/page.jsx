"use client";

import React, { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import { callAPI } from '@/utils/api-caller';
import { getToken } from '@/utils/helper';

const StaffCustomerPage = () => {
  const [customers, setCustomers] = useState([]);
  const [error, setError] = useState("");
  const token = getToken();

  useEffect(() => {
    fetchCustomers(token);
  }, [token]);

  const fetchCustomers = async (token) => {
    try {
      const response = await callAPI("/staff/customers", "GET", null, token);
      setCustomers(response.data.map(customer => ({ ...customer })));
    } catch (error) {
      setError("Failed to load customers.");
    }
  };

  return (
    <div style={{ padding: "80px 10px" }}>
      <h2 style={{ textAlign: "center", color: "#458A55" }}>Customer List</h2>

      {/* Customer Table */}
      <table style={{ width: "100%", borderCollapse: "collapse", backgroundColor: "#fff", color: "#000", border: "2px solid #E49F15" }}>
        <thead>
          <tr style={{ backgroundColor: "#458A55", color: "#fff" }}>
            <th style={{ padding: "10px", border: "2px solid #E49F15" }}>ID Customer</th>
            <th style={{ padding: "10px", border: "2px solid #E49F15" }}>Name</th>
            <th style={{ padding: "10px", border: "2px solid #E49F15" }}>Email</th>
            <th style={{ padding: "10px", border: "2px solid #E49F15" }}>Phone Number</th>
          </tr>
        </thead>
        <tbody>
          {customers.length === 0 ? (
            <tr>
              <td colSpan="4" style={{ textAlign: "center", padding: "20px", fontSize: "16px" }}>No data available</td>
            </tr>
          ) : (
            customers.map((customer, index) => (
              <tr key={index}>
                <td style={{ padding: "10px", border: "2px solid #E49F15" }}>{customer.idCustomer}</td>
                <td style={{ padding: "10px", border: "2px solid #E49F15" }}>{customer.name}</td>
                <td style={{ padding: "10px", border: "2px solid #E49F15" }}>{customer.email}</td>
                <td style={{ padding: "10px", border: "2px solid #E49F15" }}>{customer.phoneNumber}</td>
              </tr>
            ))
          )}
        </tbody>
      </table>

      {/* Error message display */}
      {error && (
        <div style={{ color: "red", textAlign: "center", marginTop: "20px" }}>
          {error}
        </div>
      )}
    </div>
  );
};

export default StaffCustomerPage;
