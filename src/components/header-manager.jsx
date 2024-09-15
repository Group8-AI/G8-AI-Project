"use client";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import React from "react";
import { clearAuthData } from '@/utils/helper'; // Import hàm clearAuthData

const HeaderManager = () => {
  const pathname = usePathname();
  const router = useRouter();

  const menuItems = [
    { name: "Dashboard", path: "/manager" },
    { name: "Orders", path: "/manager/orders" },
    { name: "Statistics", path: "/manager/statistics" },
  ];

  const navItemStyle = {
    padding: "15px 20px",
    color: "#FFF9E2",
    cursor: "pointer",
    textAlign: "center",
    fontSize: "20px",
  };

  const activeNavItemStyle = {
    backgroundColor: "#014007",
  };

  const hoverNavItemStyle = {
    backgroundColor: "#024C09",
  };

  const logoutItemStyle = {
    ...navItemStyle,
    backgroundColor: "#015109",
  };

  const handleLogout = () => {
    clearAuthData(); // Xóa dữ liệu xác thực
    router.push('/'); // Chuyển hướng về trang chủ
  };

  return (
    <div style={{ display: "flex", flexDirection: "column", backgroundColor: "#015109", width: "28%", height: "100vh", justifyContent: "space-between" }}>
      <div>
        <div style={{ display: "flex", justifyContent: "center", padding: "20px 0" }}>
          <img
            src="https://s3-alpha-sig.figma.com/img/12df/fb7f/c044114a93036246efe3ca449c02eee0?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Nm8f0jUclkGUiSC0QXhuwKmDAv8IHPTZHla8NWseeoglih14l7QdCJRGSWLVOKvyyTFSj0QWdCGlQ1hyiBv~e-ElgGlzB9wR7Kvd2wYPkJ1uou9nWf7JPH4VHXTWm0YUyuLr~Cme90NqrSJOAS~4c1geZ~f0LsslCFoq-A-Gyfq9ZBzLJH6awCxDfEC4WOe2Q2MQ7NrVbohvFUHIeGsyRWiz1WOStKHC-PH~PUKTvL~C3nD56HqGm0LzwgKSw18-HZX0F6sz4JR5kSO6wQPxA~2Ju3ieXf1TYdPjdOcHIA8Dhw9VHmDpUr7oh1amzTLAiT3zhBD~1lIUu-8Go3ubuA__"
            alt="Eclipse Perfume Logo"
            style={{ width: "350px", marginTop: "40px", marginBottom: "80px" }}
          />
        </div>
        <nav style={{ display: "flex", flexDirection: "column" }}>
          {menuItems.map((item) => (
            <Link href={item.path} key={item.name} style={{ textDecoration: 'none' }}>
              <div
                style={{
                  ...navItemStyle,
                  ...(pathname === item.path ? activeNavItemStyle : {}),
                }}
                onMouseEnter={(e) => e.currentTarget.style.backgroundColor = hoverNavItemStyle.backgroundColor}
                onMouseLeave={(e) => e.currentTarget.style.backgroundColor = pathname === item.path ? activeNavItemStyle.backgroundColor : "transparent"}
              >
                {item.name}
              </div>
            </Link>
          ))}
        </nav>
      </div>
      <div style={{ marginBottom: "40px", padding: "0 20px" }}>
        <div
          style={logoutItemStyle}
          onMouseEnter={(e) => e.currentTarget.style.backgroundColor = hoverNavItemStyle.backgroundColor}
          onMouseLeave={(e) => e.currentTarget.style.backgroundColor = logoutItemStyle.backgroundColor}
          onClick={handleLogout}
        >
          Logout
        </div>
      </div>
    </div>
  );
};

export default HeaderManager;
