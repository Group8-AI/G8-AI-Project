"use client"; 

import { useEffect } from "react";
import { useRouter } from "next/navigation";
import { FaCheckCircle } from "react-icons/fa"; // Nhập biểu tượng xác nhận

const Confirm = () => {
  const router = useRouter();

  useEffect(() => {
    const timer = setTimeout(() => {
      router.push("/sign-check"); 
    }, 3000); 
    return () => clearTimeout(timer); 
  }, [router]);

  return (
    <div className="flex min-h-screen items-center justify-center bg-[#F5F5F5]">
      <div className="bg-white p-10 rounded-lg shadow-lg text-center">
        <div className="flex justify-center mb-4"> {/* Căn giữa biểu tượng */}
          <FaCheckCircle className="text-green-500 text-5xl" /> {/* Biểu tượng xác nhận */}
        </div>
        <h1 className="text-3xl font-bold text-[#458A55] mb-4">Added Successfully!</h1>
        <p className="text-lg text-[#00000080]">Khách hàng đã được thêm thành công vào danh sách.</p>
        <p className="text-sm text-[#00000080]">Bạn sẽ được chuyển hướng về trang chủ trong 3 giây...</p>
      </div>
    </div>
  );
};

export default Confirm;
