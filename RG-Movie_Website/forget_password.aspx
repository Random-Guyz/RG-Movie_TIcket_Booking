<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forget_password.aspx.cs" Inherits="RG_Movie_Website.forget_password" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Forgot Password</title>
    <link rel="stylesheet" type="text/css" href="styles/forget_password.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
</head>
<body>

    <div class="container">
        <h2 class="title">
            <span class="title-word title-word-1">DON,T</span>
            <span class="title-word title-word-2">WORRY</span>
            <span class="title-word title-word-3">WE</span>
            <span class="title-word title-word-4">HAVE</span>
            <span class="title-word title-word-1">GOT</span>
            <span class="title-word title-word-2">YOU</span>
            <span class="title-word title-word-3">COVERED ! ! !</span>
        </h2>

        <form class="forgotForm" autocomplete="off">
            <div class="C">
                <div class="neon">FORGOT </div>
                <div class="flux">PASSWORD </div>
            </div>

            <div class="control block-cube block-input">
                <input name="mobile" type="number" placeholder="Enter Mobile Number"  autofocus required />
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

            <button class="button-54" role="button" id="resetBtn" type="button">
                Reset Password
            </button>

            <div class="signup">
                <a href="LoginPage.aspx">Back to Login</a>
            </div>

        </form>

    </div>
    <script type="text/javascript">
        // Forgot Password Page Script
        let mob = document.querySelector("input[type=number]");
        let resetBtn = document.getElementById('resetBtn');

        resetBtn.addEventListener('click', () => {
            if (mob.value !== "") {
                if (mob.value.trim().length === 10) {
                    alert("Password reset link sent to your email.");
                    mob.value = ""; // Use assignment operator (=) instead of comparison operator (==)
                } else {
                    alert("Please Enter Correct Mobile Number");
                }
            } else {
                alert("Please enter your Mobile Number");
            }
        });
    </script>
</body>
</html>
