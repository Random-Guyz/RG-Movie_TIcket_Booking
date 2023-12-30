﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="RG_Movie_Website.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RG - Login Page</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
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

    <form class="loginForm" autocomplete="off">
        <div class="control">
            <h1>
                <center><bold>Login<bold></center>
            </h1>
        </div>

        <div class="control block-cube block-input">
            <input name="username" pass="uname" type="text" placeholder="Username" autofocus/>
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
            <input name="password" id="pwd" type="password" placeholder="Password" />
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

        <button class="btn block-cube block-cube-hover" id="loginBtn" type="button">
            <div class="bg-top">
                <div class="bg-inner"></div>
            </div>
            <div class="bg-right">
                <div class="bg-inner"></div>
            </div>
            <div class="bg">
                <div class="bg-inner"></div>
            </div>
            <div class="text">Login</div>
        </button>
    </form>

    <script type="text/javascript">
        // Login Page Script

        let uname = document.querySelector("input[type=text]");
        let pass = document.querySelector("input[type=password]");
        let btn = document.getElementById('loginBtn');

        btn.addEventListener('click', () => {
            if (uname.value != "") {
                if (pass.value != "") {
                    window.location.href = "/";
                }
                else {
                    alert("Password Field is Empty");
                }
            }
            else {
                alert("Username Field is Empty");
            }
        });
    </script>

</body>
</html>