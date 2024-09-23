"use client";
import Header from "@/components/header";
import Footer from "@/components/footer";
import img1 from "@/img/Layer_1.png";
import { getUser, isLogined } from "@/utils/helper";
import ProductComponent from "@/components/product-component";
import { callAPI } from "@/utils/api-caller";
import { useEffect, useState } from "react";
import { useSearchParams, usePathname, useRouter } from "next/navigation";
import Image from 'next/image';
const pageSize = 9;  // Set page size to 9

const ProductsPage = () => {
  const [bestSellers, setBestSellers] = useState([]);
  const [products, setProducts] = useState([]);
  const searchParams = useSearchParams();
  const pathname = usePathname();
  const [pageCount, setPageCount] = useState(1);
  const router = useRouter();
  
  
  
  const page = searchParams.get("page") !== null ? +searchParams.get("page") : 1;

  
  // useEffect(() => {
  //   fetchData();
  //   console.log(getUser())
  // }, [pathname, searchParams]);

  console.log(img1)
  return (
    <>
    <div className=" text-[#015109]">
      <Header />
      
      <div className="container mx-auto mt-10" style={{padding:'100px', display:'flex'}}>
        <div className="left">
          <div className="img">
            <Image src={img1} width="100%" height="auto" alt="Layer 1" />
          </div>
        </div>
        <div className="right">
          <div style={{fontWeigt:'500', fontSize:'30px',color:'#458A55'}}>
          Handwritten Signature Detection
          </div>
          <div className="" style={{fontSize:'20px',color:'#000000'}}>
          Deep Learning Based Handwritten Signature Detection
          Sign-Check  setup your own Handwritten Signature Detection solution. The models are trained and optimized for text on natural scene and scanned documents.
          </div>
          <div className="button">
            <button style={{border: '2px solid #458A55',borderRadius: '20px',padding: '5px 15px',background: '#458A55',color: '#FFFFFF',fontSize: '16px',cursor: 'pointer'}}> Get started</button>
          </div>
        </div>

        
        
      </div>
      <Footer/>
    </div>
    </>
  );
};

export default ProductsPage;
