<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="RG_Movie_Website.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>RG - Login Page</title>
    <link rel="stylesheet" type="text/css" href="styles/login.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
</head>
<body class="formBody">

    <div class="slider-container">
        <div class="slider">
            <img src="./Images/LoginBg/bg.jpg" alt="Background Image 1" />
            <img src="./Images/LoginBg/bg1.jpg" alt="Background Image 2" />
            <img src="./Images/LoginBg/bg2.jpg" alt="Background Image 3" />
            <img src="./Images/LoginBg/bg3.jpg" alt="Background Image 4" />
            <img src="./Images/LoginBg/bg4.jpg" alt="Background Image 5" />
        </div>
    </div>

    <form class="loginForm" runat="server" autocomplete="off">
        <div class="C">
            <div class="neon">WELCOME </div>
            <div class="flux">BACK </div>
        </div>

        <div class="control block-cube block-input">
            <input name="username" type="text" placeholder="Username" autofocus />
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
            <input name="pwd" id="pwd" type="password" placeholder="Password" oninput="validateNumericInput(this)" />
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

        <asp:Button ID="Login" name="Login" role="button" class=" button-54 " runat="server" Text="LOGIN" OnClick="Login_Click" />

        <div class="signup">
            <a href="sign_up.aspx">Sign up</a>
        </div>

        <div class="forgot">
            <a href="forget_password.aspx">Forgot password</a>
        </div>
    </form>

</body>
</html>
