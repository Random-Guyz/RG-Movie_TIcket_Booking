<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SignUpForm.ascx.cs" Inherits="RG_Movie_Website.SignUpForm" %>


<form method="post" class="loginForm" autocomplete="off" id="myForm">
    <div class="C">
        <div class="neon">SIGN </div>
        <div class="flux">UP </div>
    </div>

    <div class="control block-cube block-input">
        <input name="name" pass="name" type="text" placeholder="Enter Your Name" autofocus="autofocus" required />
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
        <input name="email" pass="uname" type="email" placeholder="Enter Your Email" />
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
        <input name="mob" pass="uname" type="number" placeholder="Enter Your Mobile Number" />
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
        <input name="username" pass="uname" type="text" placeholder="Enter Your Username" />
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
        <input name="password" id="pwd" type="password" placeholder="Enter Your Password" />
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
        <input name="CONpassword" id="Conpwd" type="password" placeholder="Conform Your Password" />
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
        <input type="checkbox" id="termsCheckbox" name="termsCheckbox" />
        <label for="termsCheckbox">
            <div class="tick_mark"></div>
        </label>
    </div>

    <div class="terms-text">
        <label for="termsCheckbox">I Read & Agree to the <a href="#" id="termBtn">Terms and Conditions</a></label>
    </div>

    <button class="btn block-cube block-cube-hover" id="loginBtn">
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
        <input type="text" id="otpInput" maxlength="4" />
        <button id="btnVerify" onclick="verifyOTP()">Verify OTP</button>
    </div>
</form>
