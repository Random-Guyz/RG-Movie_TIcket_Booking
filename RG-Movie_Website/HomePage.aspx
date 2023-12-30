<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="RG_Movie_Website.HomePage" %>

<%@ Register Src="~/MovieSection.ascx" TagName="MovieSection" TagPrefix="uc" %>

<%@ Register Src="~/Navbar.ascx" TagName="Navbar" TagPrefix="uc" %>

<%@ Register Src="~/Footer.ascx" TagName="Footer" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RG - Movie Ticket Booking</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel="icon" type="image/png" href="~/Images/favicon-logo.png" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
</head>
<body style="background-color: black;">

    <uc:Navbar runat="server" />

    <section class="Movie-Poster-Section">

        <div class="slide" id="top"></div>

        <div class="Movie-Details">
            <div>
                <h1 id="title">Dunki</h1>
                <p id="genre">Drama, Comedy, Emotional</p>
                <p id="desc">Description about the movie should be lengthy but concise and helpful for people who would by tickets</p>
            </div>
        </div>

        <button id="bookNowBtn">Book Now</button>

    </section>


    <%--Movie List Section--%>

    <uc:MovieSection runat="server" />

    <%--Force next columns to break to new line <div class="w-100"></div>--%>

    <section class="bg-dark">
        <uc:Footer runat="server" />
    </section>

    <script type="text/javascript" src="script.js"></script>

</body>
</html>
