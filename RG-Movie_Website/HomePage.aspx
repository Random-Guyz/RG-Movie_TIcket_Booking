<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="RG_Movie_Website.HomePage" %>

<%@ Register Src="~/Navbar.ascx" TagName="Navbar" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RG - Movie Ticket Booking</title>
    <link rel="stylesheet" type="text/css" href="~/style.css" />
    <link rel="icon" type="image/png" href="~/Images/favicon-logo.png" />
</head>
<body>
    <uc:Navbar runat="server" />

    <section>
        <div class="slide" id="top"></div>
    </section>

    <script type="text/javascript">
        var image = document.getElementById("top");
        var i = 0;
        var images = ["url(Images/img1.jpg)", "url(Images/img2.jpg)", "url(Images/img3.jpg)", "url(Images/img4.jpg)"];

        function move() {
            if (++i >= images.length) {
                i = 0;
            }

            image.style.backgroundImage = images[i];
        }
        setInterval(move, 3000);
    </script>
</body>
</html>
