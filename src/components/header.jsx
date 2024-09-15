"use client";
import { callAPI } from "@/utils/api-caller";
import Link from "next/link";
import { useEffect, useState } from "react";
import { getUser, clearAuthData } from '@/utils/helper';
import { useRouter } from "next/navigation";
import { useAppContext } from "./context";


const Header = ({  }) => {
    const [categories, setCategories] = useState([]);
    const [cartCount, setCartCount] = useState(0);
    const router = useRouter();
    const [searchVisible, setSearchVisible] = useState(false);
    const [isLoggedIn, setIsLoggedIn] = useState(false); 
    const [menuVisible, setMenuVisible] = useState(false);
    //const { data: session } = useSession(); //dong nay de lam gi?
    useEffect(() => {
        
        if (isLoggedIn)
            fetchShoppingCart();
        fetchData();
        checkLoginStatus();
        
    }, []);

   

   

  const [searchQuery, setSearchQuery] = useState('');
  const handleSearch = (e) => {
    e.preventDefault();
    if (searchQuery.trim() !== '') {
      router.push(`/search?query=${searchQuery}`);
    }
  };
  const checkLoginStatus = () => {
    // Giả sử kiểm tra đăng nhập thông qua token lưu trữ trong localStorage
    const token = localStorage.getItem('token');
    setIsLoggedIn(!!token);
};
    const fetchData = async () => {
        try {
            const res = await callAPI("/categories", "GET");
            setCategories(res.data.data);
            console.log(res.data.data);
            console.log(user)
        } catch (error) {
            console.log(error);
        }
    };
    const user= getUser();
    
    const handleCartCount = (count) => {
        setCartCount(count);
    };
    const {setShoppingCart, isFetchedShoppingCart, setIsFetchedShoppingCart} = useAppContext()
      const fetchShoppingCart = async()=>{
        if (!isFetchedShoppingCart){
            try {
                const res  = await callAPI("/my-shopping-cart", "GET")
                console.log(res)
                setShoppingCart(res.data)
                setIsFetchedShoppingCart(true)
            } catch (error) {
                console.log(error)
            }
        }
          
      }
      const {shoppingCart} = useAppContext()
    
    const handleAccountClick = () => {
        if (isLoggedIn) {
            // Hiển thị menu cho người dùng đã đăng nhập
            const menu = document.getElementById('account-menu');
            menu.style.display = menu.style.display === 'block' ? 'none' : 'block';
            setMenuVisible(!menuVisible);
        } else {
            router.push('/login');
        }
    };

    const handleLogout = () => {
        
        clearAuthData();
        setIsLoggedIn(false);
        router.push('/login');
    };
    // Inline styles
    const navStyle = {
        display: 'flex',
        backgroundColor: '#015109',
        justifyContent: 'space-between',
        padding: '5px',
        paddingLeft: '300px',
        paddingRight: '300px',
    };

    const linkStyle = {
        padding: '10px 10px',
        textDecoration: 'none',
        color: '#FFF9E2',
        transition: 'color 0.3s',
        display: 'flex',
        justifyContent: 'center',
        alignItems: 'center',
        height: '100%',
width: '100%',
    };

    const hoverStyle = {
        color: '#FFE478',
    };

    const navItemStyle = {
        display: 'flex',
        alignItems: 'center',
        height: '50px',
        width: '8%',
        paddingLeft: '10px',
        paddingRight: '10px',
        fontSize: '20px',
        textAlign: 'center',
        fontWeight: 'bold',
        margin: '0 5px',
    };

    const iconStyle = {
        position: 'relative',
    display: 'flex',
    alignItems: 'center',
    marginRight: '20px',
       
        alignItems: 'center',
        justifyContent: 'center',
        width: '30px',
        height: '30px',
    };

    const cartNumberStyle = {
       
        position: 'absolute',
    top: '-10px',
    right: '-10px',
    backgroundColor: '#ffffff',
    color: '#000',
    borderRadius: '50%',
    padding: '2px 8px',
    fontSize: '12px',
    fontWeight: 'bold',
    zIndex: 1,
    };
    const searchContainerStyle = {
        position: 'absolute',
        top: '40px',
        right: '10px',
        backgroundColor: 'rgba(215, 248, 218, 1)',
        padding: '10px',
        borderRadius: '25px',
        boxShadow: '0 2px 4px rgba(0, 0, 0, 0.1)',
        display: searchVisible ? 'block' : 'none'
      };
    
      const searchFieldStyle = {
        padding: '10px',
        fontSize: '16px',
        border: '1px solid #ccc',
        borderRadius: '25px',
        outline: 'none',
        transition: 'border-color 0.3s',
        backgroundColor: 'rgba(215, 248, 218, 1)',
        width: '400px',
        position: 'relative'
      };
    
      const searchLabelStyle = {
        position: 'absolute',
        top: '50%',
        left: '15px',
        transform: 'translateY(-50%)',
        backgroundColor: 'rgba(215, 248, 218, 1)',
        padding: '0 5px',
        transition: 'all 0.3s',
        color: '#ccc',
        pointerEvents: 'none'
      };
    
      const searchLabelFocusStyle = {
        top: '-10px',
        fontSize: '12px',
        color: '#ccc',
      };
    
      const searchButtonStyle = {
        position: 'absolute',
        top: '50%',
        right: '10px',
        transform: 'translateY(-50%)',
        background: 'none',
        border: 'none',
        cursor: 'pointer',
        outline: 'none'
      };
      const accountMenuStyle = {
        display: menuVisible ? 'block' : 'none',
        position: 'absolute',
        top: '60px', // Điều chỉnh khoảng cách từ icon đến menu
        left: '50%',
        transform: 'translateX(-50%)',
        background: '#3C8744',
        borderRadius: '5px',
        boxShadow: '0px 2px 10px rgba(0,0,0,0.1)',
        zIndex: 1000,
    };


    return (
        <header style={{ background: '#FFF9E2' }}>
            <nav style={{ background: '#FFF9E2' }}>
                <div className="header" style={{ display: 'block', background: '#FFF9E2' }}>
                    <div className="first-line" style={{ display: 'flex' }}>
                        <div className="fleft" style={{ display: 'flex', justifyContent: 'center', paddingLeft: '600px' }}>
                            <Link href="/">
                                <img
                                    width="300px"
                                    height="150px"
                                    src="https://s3-alpha-sig.figma.com/img/73ca/704c/09052c70ce0d6357e5a13b02cf8c8d78?Expires=1717977600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GYcd5-F5S0iARqshzQvoBJRcZPgBF34YpqkPygFPaNLz0ZkaYv5ejcLN3ueIckNzcYePEcTbpwN62qpiiNEkvOps4lsG8OPPvp437HzyC8mSkiLc31Bm14tJ09fVLt3W0ygZIaYnGVjL7GG2mca6xgfKcDxI68EHgXfKvV7hh9xq043mWrRuaw2wbxC8ij9GLiwbmhBdLG~qowivbWHZQdE14cK3nwo6zMJ2UBK~QWAZ3KjGUSR70sw~JomRpIxIDlFIOg0NUHy564vJloblFesU1bi4rq7erfKVZ2OxcS9IU9q2e906RWO1u8sHG~6SU9m7hIWcWn3axHVWMIAjPA__"
                                    alt="Logo"
                                    decoding="async"
                                />
                            </Link>
                       </div>
                        <div className="fright" style={{ display: 'flex', justifyContent: 'flex-end', gap: '15px', alignItems: 'center', paddingLeft: '350px' }}>
                        <div className="account" style={iconStyle} onClick={handleAccountClick}>
                                <img
                                    src="https://s3-alpha-sig.figma.com/img/a790/e615/0e4e0458a7acc3af053c78bf22623111?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=V6TkS3TyHNRju4UBwxlV5vjuOHybFhLcNXFW3KplEdcCS~TWTvshqZqrFEkfQGNaAEVSxGp-e~QZTDBSsaW7tskeD~NRlj3KNdy2bQIOq6HuZ4K11aEaOaggPgq1JpUZSFsipX3ghpw~BD0JR48xZtHywFr2kau0uZVh8QFPhV1G52AC8HWm--0CdrPPNeXI6bTAi38GxBqXR4zFjrRkSsdLCNohF4EXv26FEUBJa~3rSh8ihEPAF5B9FCIhvnKAC7uzaLl1qkbTWcxp8KaA81gu07NDdJ1H9B5tUL9o7TsVkx4f9cNn1nzvN3fsMR4PCCWuYssmz3~k9ylnPZCRbA__"
                                    width="30px"
                                    height="30px"
                                    alt="Account"
                                    style={{ cursor: 'pointer' }}
                                    
                                />
                            </div>
                            {isLoggedIn && (
                                <div id="account-menu" style={{ display: 'none', position: 'absolute', top: '80px', right: '100px', background: '#3C8744', borderRadius: '20px',color:'#FFF9E2' , padding:'10px'}}>
                                    <Link href="/account">
                                        <p style={{ display: 'block', padding: '10px', textDecoration: 'none', color:'#FFF9E2',fontWeight:'bold' }} onMouseOver={(e) => {
                                    e.currentTarget.style.color = hoverStyle.color;
                                }}onMouseOut={(e) => {
                                    e.currentTarget.style.color = linkStyle.color;
                                }}>My Account</p>
                                    </Link>
                                    <p onClick={handleLogout} onMouseOver={(e) => {
                                    e.currentTarget.style.color = hoverStyle.color;
                                }}onMouseOut={(e) => {
                                    e.currentTarget.style.color = linkStyle.color;
                                }}style={{ display: 'block', padding: '10px', textDecoration: 'none', color:'#FFF9E2', cursor: 'pointer' ,fontWeight:'bold'}}>Log Out</p>
                                </div>
                            )}
                            
                            
                                <div className="search-icon-container" style={iconStyle}>
                                    <img
                                        src="https://s3-alpha-sig.figma.com/img/27f8/138c/a0adcffc3c068ec0d20518b59b1c7507?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LLFrsO-BK5Q6Yo-SopF~yoEtcz~6UZgtu0t7h3k0mt-tszW-av8hxlIiwLhT3VkSV6vXfKdXF7sgrehUXxPxOhpj5lnjuZrc5ORLewhupOOyOoVhHfktO6d-X-A7XzwvwYFsTLEi6qIgXlvPMJODF5kEhRkYDPRGc~AcjKJlPWFBzpnWxNU6IW62ncls-3jDHOKlvyxpAtGanhgYKtheDX6ZzpoTNT6DYZrL~kjj7dkVHXKlJxqeC7Ql3Eyc-WJ0InnX77S67gFKFYyIX2SMsNlgUO3tjz0eIiuKZxpe7xos7d1~hvlP9B9gwZbaNKR7MrvMFZMuIzGRM7r~-9V3-g__"
                                        width="30px"
                                        height="30px"
                                        alt="Search"
                                        className="search-icon"
                                        onClick={() => setSearchVisible(!searchVisible)}
                                        style={{ cursor: 'pointer' }}
                                    />
                                {searchVisible && (
                                    <div className="search-container" style={searchContainerStyle}>
                                        <form onSubmit={handleSearch} className="relative">
                                            <input
                                                type="text"
                                                id="search-field"
                                                className="search-field"
                                                placeholder=" "
                                                value={searchQuery}
                                                onChange={(e) => setSearchQuery(e.target.value)}
                                                style={searchFieldStyle}
                                            />
                                            <label
                                                htmlFor="search-field"
                                                className="search-label"
                                                style={searchQuery ? { ...searchLabelStyle, ...searchLabelFocusStyle } : searchLabelStyle}
                                            >
                                                Search
                                            </label>
                                            <button type="submit" className="search-button" style={searchButtonStyle}>
                                                <img
                                                    src="https://s3-alpha-sig.figma.com/img/27f8/138c/a0adcffc3c068ec0d20518b59b1c7507?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LLFrsO-BK5Q6Yo-SopF~yoEtcz~6UZgtu0t7h3k0mt-tszW-av8hxlIiwLhT3VkSV6vXfKdXF7sgrehUXxPxOhpj5lnjuZrc5ORLewhupOOyOoVhHfktO6d-X-A7XzwvwYFsTLEi6qIgXlvPMJODF5kEhRkYDPRGc~AcjKJlPWFBzpnWxNU6IW62ncls-3jDHOKlvyxpAtGanhgYKtheDX6ZzpoTNT6DYZrL~kjj7dkVHXKlJxqeC7Ql3Eyc-WJ0InnX77S67gFKFYyIX2SMsNlgUO3tjz0eIiuKZxpe7xos7d1~hvlP9B9gwZbaNKR7MrvMFZMuIzGRM7r~-9V3-g__"
                                                    alt="Search"
width="20"
                                                    height="20"
                                                />
                                            </button>
                                        </form>
                                    </div>
                                )}
                                </div>
                                {isLoggedIn && (
                                    <Link href="/cart">
                                    <div className="hd-cart CartOpen" style={iconStyle}>
                                        <div className="hd-cart-inner" style={{ position: 'relative', display: 'flex', alignItems: 'center' }}>
                                            <img
                                                src="https://s3-alpha-sig.figma.com/img/9fbf/8808/ba9395f07ead590ea5eab5ab2834306b?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=kKClrGDkNYbWV-69cbn1uDVIIEz4jE-VfTZRHGh3yc7uGsa5KJAoILrVbVW83El1by9eyhScy7H2UuVhgm7t0DY93EDOM~8Ncp6ZfRX30dCgG5ylG3eufSY~d9EWkl5Jbipn~W1Bz~K3YEh3qyJWRmu7~MCKi~Ey-dC1gNbvA1iezLZUaxixdNi~9yfMZM443OpOiZnxfv3we26trKQxW6p8kZOg7rQWnvcrHIgMXTHkajU4dZdLdkdx5JtoPP0F0mr3J1b9d8hNsuYRC8259CPvHcukp~OPlyJesFdN5uN0lg8v1UuxzGTvBx3lsEg3hRmHUlhtCQKY7PUl~dCU-w__"
                                                width="30px"
                                                height="30px"
                                                alt="Cart"
                                            />
                                        </div>
                                        
                                        {cartCount > 0 && (
                                            <span className="hd-cart-number" style={cartNumberStyle}>
                                                {cartCount}
                                            </span>
                                        )}
                                        <div className=" rounded-full text-white text-center absolute top-0 right-[-1.2em] text-xs px-1 fw-bold" style={{color:'#015109C2',fontWeight:'bold',fontSize:'15px'}}>({shoppingCart.length})</div>
                                    </div>
                                    
                                </Link>
                                
                            )}
                            
                            
                        </div>
                    </div>
                    <div className="menu" style={navStyle}>
                        <div className="nav-item" style={navItemStyle}>
                            <a
                                href="/women"
                                data-name="women"
                                data-title="women"
                                style={linkStyle}
                                onMouseOver={(e) => {
                                    e.currentTarget.style.color = hoverStyle.color;
                                }}
                                onMouseOut={(e) => {
                                    e.currentTarget.style.color = linkStyle.color;
                                }}
                            >
                                Women's
                            </a>
                        </div>
                        <div className="nav-item" style={navItemStyle}>
                            <a
                                href="/men"
                                data-name="men"
                                data-title="men"
style={linkStyle}
                                onMouseOver={(e) => {
                                    e.currentTarget.style.color = hoverStyle.color;
                                }}
                                onMouseOut={(e) => {
                                    e.currentTarget.style.color = linkStyle.color;
                                }}
                            >
                                Men's
                            </a>
                        </div>
                        <div className="nav-item" style={navItemStyle}>
                            <a
                                href="/unisex"
                                data-name="unisex"
                                data-title="unisex"
                                style={linkStyle}
                                onMouseOver={(e) => {
                                    e.currentTarget.style.color = hoverStyle.color;
                                }}
                                onMouseOut={(e) => {
                                    e.currentTarget.style.color = linkStyle.color;
                                }}
                            >
                                Unisex
                            </a>
                        </div>
                        <div className="nav-item" style={navItemStyle}>
                            <a
                                href="/gifting"
                                data-name="gifting"
                                data-title="gifting"
                                style={linkStyle}
                                onMouseOver={(e) => {
                                    e.currentTarget.style.color = hoverStyle.color;
                                }}
                                onMouseOut={(e) => {
                                    e.currentTarget.style.color = linkStyle.color;
                                }}
                            >
                                Gifting
                            </a>
                        </div>
                        <div className="nav-item" style={navItemStyle}>
                            <a
                                href="/brand"
                                data-name="brand"
                                data-title="brand"
                                style={linkStyle}
                                onMouseOver={(e) => {
                                    e.currentTarget.style.color = hoverStyle.color;
                                }}
                                onMouseOut={(e) => {
                                    e.currentTarget.style.color = linkStyle.color;
                                }}
                            >
                                Brand                       </a>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
    );
};

export default Header;