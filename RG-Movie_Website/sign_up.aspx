<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_up.aspx.cs" Inherits="RG_Movie_Website.sign_up" %>

<%@ Register Src="~/Navbar.ascx" TagName="Navbar" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RG - Sign Up Page</title>
    <link rel="stylesheet" type="text/css" href="styles/sign_up.css" />
    <%--<link rel="stylesheet" type="text/css" href="style.css" />--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
</head>
<body class="formBody">
    <uc:Navbar runat="server" />
    <div class="slider-container">
        <div class="slider">
            <img src="./Images/LoginBg/bg.jpg" alt="Background Image 1" />
            <img src="./Images/LoginBg/bg1.jpg" alt="Background Image 2" />
            <img src="./Images/LoginBg/bg2.jpg" alt="Background Image 3" />
            <img src="./Images/LoginBg/bg3.jpg" alt="Background Image 4" />
            <img src="./Images/LoginBg/bg4.jpg" alt="Background Image 5" />
        </div>
    </div>

    <form class="loginForm" autocomplete="off">
        <div class="C">
            <div class="neon">SIGN </div>
            <div class="flux">UP </div>
        </div>

        <div class="innerForm">

            <div class="control block-cube block-input">
                <input name="name" pass="name" type="text" placeholder="Enter Your Name" autofocus required />
                <div class="bg-top">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg-right">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg">
                    <div class="bg-inner"></div>
                </div>
            </div>

            <div class="control block-cube block-input">
                <input name="email" pass="uname" type="email" placeholder="Enter Your Email" required />
                <div class="bg-top">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg-right">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg">
                    <div class="bg-inner"></div>
                </div>
            </div>

            <div class="control block-cube block-input">
                <input name="mob" pass="uname" type="tel" maxlength="10" placeholder="Enter Mobile No." required />
                <div class="bg-top">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg-right">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg">
                    <div class="bg-inner"></div>
                </div>
            </div>

            <div class="control block-cube block-input">
                <input name="username" pass="uname" type="text" placeholder="Enter Your Username" required />
                <div class="bg-top">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg-right">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg">
                    <div class="bg-inner"></div>
                </div>
            </div>

            <div class="control block-cube block-input">
                <input name="password" id="pwd" type="password" placeholder="Enter Your Password" required />
                <div class="bg-top">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg-right">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg">
                    <div class="bg-inner"></div>
                </div>
            </div>

            <div class="control block-cube block-input">
                <input name="CONpassword" id="pwd" type="password" placeholder="Confirm Password" required />
                <div class="bg-top">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg-right">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg">
                    <div class="bg-inner"></div>
                </div>
            </div>

            <div class="checkbox-wrapper-26">
                <input type="checkbox" id="termsCheckbox" name="termsCheckbox" required />
                <label for="termsCheckbox">
                    <span class="tick_mark"></span>
                </label>
            </div>

            <div class="terms-text">
                <label for="termsCheckbox" class="termsTxt">I Read & Agree to the <a href="TermsModal.aspx">Terms and Conditions</a></label>
            </div>


 <button class="btn block-cube block-cube-hover" id="loginBtn" type="button" onclick="redirectToChkOtp()">
 <div class="bg-top">
 <div class="bg-inner"></div>
 </div>
 <div class="bg-right">
 <div class="bg-inner"></div>
 </div>
 <div class="bg">
 <div class="bg-inner"></div>
 </div>
 <div class="text">SIGN UP</div>
 </button>

     <div class="otp-container" id="otp-container">
                <label for="otpInput" id="otplable">Enter OTP:</label>
                <input type="text" id="otpInput" maxlength="3" />
                <button id="btnVerify" onclick="verifyOTP()">Verify OTP</button>
            </div>

        </div>
    </form>

    <script type="text/javascript">
        let uname = document.querySelector("input[name=name]");
        let emaill = document.querySelector("input[name=email]");
        let mobi = document.querySelector("input[name=mob]");
        let usname = document.querySelector("input[name=username]");
        let pass = document.querySelector("input[name=password]");
        let cpass = document.querySelector("input[name=CONpassword]");
        let terms = document.getElementById("termsCheckbox");
        let btn = document.getElementById('loginBtn');

        btn.addEventListener('click', () => {
            if (uname.value.trim() !== "") {
                if (emaill.value.trim() !== "") {
                    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                    if (emailRegex.test(emaill.value.trim())) {
                        if (mobi.value.trim() !== "") {
                            if (mobi.value.trim().length === 10) {
                                if (usname.value.trim() !== "") {
                                    if (pass.value.trim() !== "") {
                                        if (cpass.value.trim() !== "") {
                                            if (pass.value.trim() === cpass.value.trim()) {
                                                if (terms.checked) {
                                                    // Display the OTP container and blur the background
                                                    document.getElementById("otp-container").style.display = "block";
                                                    document.getElementById("blur-container").style.backdropFilter = "blur(8px)";
                                                } else {
                                                    alert("Please Agree Terms&Conditions");
                                                }
                                            } else {
                                                alert("Both Passwords Do Not Match");
                                            }
                                        } else {
                                            alert("Please Confirm Password");
                                        }
                                    } else {
                                        alert("Password Field is Empty");
                                    }
                                } else {
                                    alert("UserName Field is Empty");
                                }
                            } else {
                                alert("Enter Mobile Number Correctly");
                            }
                        } else {
                            alert("Mobile Field is Empty");
                        }
                    } else {
                        alert("Please enter a valid email address.");
                    }
                } else {
                    alert("Email Field is Empty");
                }
            } else {
                alert("Name Field is Empty");
            }
        });

        function verifyOTP() {
            var enteredOTP = document.getElementById("otpInput").value;

            //  actual OTP verification logic will come here

            // Assuming your OTP container has an ID of "otp-container"
            if (enteredOTP === "123") {
                alert("OTP Verified Successfully!");

                // Redirect to HomePage.aspx
                window.location.href = "/HomePage.aspx";

                // Hide the OTP container
                document.getElementById("otp-container").style.display = "none";
            } else {
                alert("Invalid OTP. Please try again.");
            }
        }
    </script>
</body>
</html>
