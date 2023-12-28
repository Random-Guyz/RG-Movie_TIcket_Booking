<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="RG_Movie_Website.HomePage" %>

<%@ Register Src="~/Navbar.ascx" TagName="Navbar" TagPrefix="uc" %>

<%@ Register Src="~/MovieSection.ascx" TagName="MovieSection" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RG - Movie Ticket Booking</title>
    <link rel="stylesheet" type="text/css" href="~/style.css" />
    <link rel="icon" type="image/png" href="~/Images/favicon-logo.png" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
</head>
<body class="bg-dark">
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


    <!-- Movie List Section -->

    <uc:MovieSection runat="server" />

    <!-- Force next columns to break to new line <div class="w-100"></div> -->

    <script type="text/javascript">
        let image = document.getElementById("top");
        let i = 0;
        let images = ["url(Images/img1.jpg)", "url(Images/img2.jpg)", "url(Images/img3.jpg)", "url(Images/img4.jpg)"];

        function move() {
            if (++i >= images.length) {
                i = 0;
            }

            SetMovieDetails(i)
            image.style.backgroundImage = images[i];
        }

        SetMovieDetails(0)
        setInterval(move, 3000);

        function SetMovieDetails(index) {
            let title = document.getElementById("title");
            let genre = document.getElementById("genre");
            let desc = document.getElementById("desc");

            switch (index) {
                case 1:
                    title.innerHTML = "Salaar";
                    genre.innerHTML = "Action, Dark, Thriller";
                    desc.innerHTML = "A gang leader makes a promise to a dying friend by taking on other criminal gangs.";
                    break;
                case 2:
                    title.innerHTML = "Animal";
                    genre.innerHTML = "Action, Crime, Drama";
                    desc.innerHTML = "A son undergoes a remarkable transformation as the bond with his father begins to fracture, and he becomes consumed by a quest for vengeance.";
                    break;
                case 3:
                    title.innerHTML = "Aquaman 2";
                    genre.innerHTML = "Action, Adventure, Superhero";
                    desc.innerHTML = "After failing to defeat Aquaman the first time, Black Manta wields the power of the mythic Black Trident to unleash an ancient and malevolent force.";
                    break;
                default:
                    title.innerHTML = "Dunki";
                    genre.innerHTML = "Drama, Comedy, Emotional";
                    desc.innerHTML = "The film focuses on 'donkey flight' or 'dunki', an illegal backdoor entry technique employed by immigrants to enter countries like the UK, the US and Canada";

                    break;
            }

        }

    </script>
</body>
</html>
