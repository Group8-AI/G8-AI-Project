"use client";
import { callAPI } from '@/utils/api-caller';
import { useRouter } from 'next/navigation';
import { useState } from 'react';
import { setToken, setUser } from '@/utils/helper';

const SignUpPage = () => {
    const [firstName, setFirstName] = useState("");
    const [lastName, setLastName] = useState("");
    const [email, setEmail] = useState("");
    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");
    const [errorText, setErrorText] = useState("");
    const router = useRouter();

    const onSignUpClick = async () => {
        if (!firstName || !lastName || !email || !username || !password) {
            setErrorText("Have missing data!");
            return;
        }

        try {
            const data = {
                firstName,
                lastName,
                email,
                username,
                shoppingCart:[],
                password
            };
            const res = await callAPI("/auth/local/register", "POST", data);
            setToken(res.data.jwt);
            setUser(res.data.user);
            router.replace("/");
        } catch (error) {
            if (error.response && error.response.data && error.response.data.message) {
                setErrorText(error.response.data.message[0].messages[0].message);
            } else {
                setErrorText("Error in creating account!");
            }
            console.log(error);
        }
    };

    const navigateToLogin = () => {
        router.push('/login');
    };

    return (
        <div className="flex min-h-screen items-center justify-center px-6 py-12 lg:px-8 bg-[#fff9e6]">
            <div className="flex flex-col lg:flex-row w-full max-w-5xl bg-[#fff9e6] rounded-lg overflow-hidden" style={{ height: 'calc(100% + 100px)' }}>
                <div className="lg:w-1/2 flex flex-col items-center justify-center p-8 bg-[#fff9e6]">
                <img src="https://s3-alpha-sig.figma.com/img/860d/0dbe/6833eff95c9d3e9e22f2abe5933e0ec7?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=eAMKbGKnY9Zty2F6LqCqAvMTTapIOH-JDMf7FNcQBTwxOS3nFTaOsi81ancHlfUlnzspBG6ZnCDsDKhCJB7-UzxOhCD2E5t9GWDBXRJqhVHUMSMqSsAt-inPHB6CVZa6Vbp5isOoJUtJ1GFik4gFCuXLtutOlUIVarF8zExt1JMUxfEieZM16fgaR90dEvoCKIdesR3PjRJHcCyXR6NF~RU4OCprFo42zoB7lQGbJVGX8kK1wcNegBqxHG0ga12hUgytz--Zy8rJ3Hr0L3ke4vkciOTtJDNiNadjefhGfChJZ45i6CBNXVx0s1w8A2YOZfA1w2ESgDUgFneuOOngOg__" width="100%" height="auto" />
                <h1 className="mt-6 text-5xl font-bold" style={{ color: '#015109', marginTop: 80 }}>SIGN UP</h1>
                </div>

                <div className="lg:w-1/2 p-10 bg-[#fff9e6]" style={{ width: 'calc(50% + 50px)' }}>
                    <form className="space-y-6">
                        <div>
                            <p style={{color: '#015109', marginBottom: 3}}>First name</p>
                            <input
                                id="first-name"
                                name="firstName"
                                type="text"
                                placeholder="Enter your First name"
                                value={firstName}
                                onChange={(e) => { setFirstName(e.target.value); setErrorText(""); }}
                                required
                                className="block w-full bg-[#D7F8DA] rounded-md border border-[#3C8744] px-3 py-2 text-[#3C8744]
                                           focus:outline-[#5CA664] placeholder:text-[#5CA664] font-sm "
                                style={{ fontSize: '14px', borderRadius: '10px', WebkitBoxShadow: '0 0 0px 1000px #D7F8DA inset' }}
                            />
                        </div>

                        <div>
                            <p style={{color: '#015109', marginBottom: 3}}>Last name</p>
                            <input
                                id="last-name"
                                name="lastName"
                                type="text"
                                placeholder="Enter your Last name"
                                value={lastName}
                                onChange={(e) => { setLastName(e.target.value); setErrorText(""); }}
                                required
                                className="block w-full bg-[#D7F8DA] rounded-md border border-[#3C8744] px-3 py-2 text-[#3C8744]
                                           focus:outline-[#5CA664] placeholder:text-[#5CA664] font-sm "
                                style={{ fontSize: '14px', borderRadius: '10px', WebkitBoxShadow: '0 0 0px 1000px #D7F8DA inset' }}
                            />
                        </div>

                        <div>
                            <p style={{color: '#015109', marginBottom: 3}}>Email</p>
                            <input
                                id="email"
                                name="email"
                                type="email"
                                placeholder="email@mail.com"
                                value={email}
                                onChange={(e) => { setEmail(e.target.value); setErrorText(""); }}
                                required
                                className="block w-full bg-[#D7F8DA] rounded-md border border-[#3C8744] px-3 py-2 text-[#3C8744]
                                           focus:outline-[#5CA664] placeholder:text-[#5CA664] font-sm "
                                style={{ fontSize: '14px', borderRadius: '10px', WebkitBoxShadow: '0 0 0px 1000px #D7F8DA inset' }}
                            />
                        </div>

                        <div>
                            <p style={{color: '#015109', marginBottom: 3}}>Username</p>
                            <input
                                id="username"
                                name="username"
                                type="text"
                                placeholder="Enter your new Username"
                                value={username}
                                onChange={(e) => { setUsername(e.target.value); setErrorText(""); }}
                                required
                                className="block w-full bg-[#D7F8DA] rounded-md border border-[#3C8744] px-3 py-2 text-[#3C8744]
                                           focus:outline-[#5CA664] placeholder:text-[#5CA664] font-sm "
                                style={{ fontSize: '14px', borderRadius: '10px', WebkitBoxShadow: '0 0 0px 1000px #D7F8DA inset' }}
                            />
                        </div>

                        <div>
                            <p style={{color: '#015109', marginBottom: 3}}>Password</p>
                            <input
                                id="password"
                                name="password"
                                type="password"
                                placeholder="Enter your new Password"
                                value={password}
                                onChange={(e) => { setPassword(e.target.value); setErrorText(""); }}
                                required
                                className="block w-full bg-[#D7F8DA] rounded-md border border-[#3C8744] px-3 py-2 text-[#3C8744]
                                           focus:outline-[#5CA664] placeholder:text-[#5CA664] font-sm "
                                style={{ color: '#3C8744', fontSize: '14px', borderRadius: '10px', WebkitBoxShadow: '0 0 0px 1000px #D7F8DA inset' }}
                            />
                        </div>

                        <div style={{ minHeight: '24px' }}>
                            {errorText && <span style={{ color: "red" }}>{errorText}</span>}
                        </div>

                        <div>
                            <button
                                onClick={() => onSignUpClick()}
                                type="button"
                                className="flex w-full justify-center rounded-md bg-[#015109] px-4 py-2 text-[#FFF9E2] font-medium hover:bg-[#01630B]"
                                style={{ boxShadow: 'none', fontSize: '17px', borderRadius: '10px' }}
                            >
                                Create account
                            </button>
                        </div>

                        <div className="text-center text-sm text-[#015109] mt-4">
                            Already have an account? <a href="#" className="text-blue-600 hover:underline" onClick={navigateToLogin}>Log In</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    );
};

export default SignUpPage;
