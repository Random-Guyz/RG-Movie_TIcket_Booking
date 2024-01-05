<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="RG_Movie_Website.HomePage" %>

<%@ Register Src="~/MovieSection.ascx" TagName="MovieSection" TagPrefix="uc" %>

<%@ Register Src="~/Navbar.ascx" TagName="Navbar" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>RG - Movie Ticket Booking</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel="icon" type="image/png" href="Images/favicon-logo.png" />
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
        <footer class="container py-5 bg-dark">
            <div class="row">

                <div class="col-6 col-md-2 mb-3">
                    <h5 class="text-white">Links</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item mb-2 foot-li"><a href="#" class="nav-link p-0 text-secondary">Home</a></li>
                        <li class="nav-item mb-2 foot-li"><a href="#MovSection" class="nav-link p-0 text-secondary">Movies</a></li>
                        <li class="nav-item mb-2 foot-li"><a href="./LoginPage.aspx" class="nav-link p-0 text-secondary">Login</a></li>
                        <li class="nav-item mb-2 foot-li"><a href="#" class="nav-link p-0 text-secondary">Sign up</a></li>
                    </ul>
                </div>

                <div class="col-6 col-md-2 mb-3">
                    <h5 class="text-white">Popular Movies</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item mb-2 foot-li"><a href="#" class="nav-link p-0 text-secondary">Dunki</a></li>
                        <li class="nav-item mb-2 foot-li"><a href="#" class="nav-link p-0 text-secondary">Salaar</a></li>
                        <li class="nav-item mb-2 foot-li"><a href="#" class="nav-link p-0 text-secondary">Animal</a></li>
                        <li class="nav-item mb-2 foot-li"><a href="#" class="nav-link p-0 text-secondary">Sam Bahadur</a></li>
                    </ul>
                </div>

                <div class="col-6 col-md-2 mb-3">
                    <h5 class="text-white">Help</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item mb-2 foot-li">
                            <a href="#" class="nav-link p-0 text-secondary d-flex align-items-center" style="font-size: 12px;">
                                <i class="bi bi-envelope" style="font-size: 16px; margin-right: 8px;"></i>team.randomguyz@gmail.com
                            </a>
                        </li>
                        <li class="nav-item mb-2 foot-li">
                            <a href="#" class="nav-link p-0 text-secondary d-flex align-items-center" style="font-size: 12px;">
                                <i class="bi bi-telephone" style="font-size: 16px; margin-right: 8px;"></i>+91 8988763410
                            </a>
                        </li>
                        <li class="nav-item mb-2 foot-li">
                            <a href="#" class="nav-link p-0 text-secondary" style="font-size: 12px;">
                                <i class="bi bi-signpost-split" style="font-size: 16px; margin-right: 8px;"></i>1234 Imaginary Street Cityville, Stateville Countryland Postal Code: 12345
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-5 offset-md-1 mb-3">
                    <form method="post" autocomplete="off">
                        <div class="form-group mb-2">
                            <label class="text-white" for="exampleFormControlInput1">Your Email</label>
                            <input type="email" class="form-control" name="userEmail" placeholder="email@example.com" />
                        </div>
                        <div class="form-group mt-2">
                            <label class="text-white" for="exampleFormControlTextarea1">Write your queries</label>
                            <textarea class="form-control" name="userMsg" rows="3"
                                placeholder="Write your valuable opinions here...."></textarea>
                        </div>
                        <button class="btn btn-warning mt-2" id="submitBtn" type="submit">Submit</button>
                    </form>
                </div>
            </div>

            <div class="row border-top pt-4 my-4 ">
                <div class="col">
                    <p class="text-secondary">© 2022 RG Movie Ticket Booking, Inc. All rights reserved.</p>
                </div>
                <div class="col-auto">
                    <div class="socialIcons">
                        <a href="#" class="me-4 text-decoration-none" style="color: white;"><i class="fab fa-facebook"></i></a>
                        <a href="#" class="me-4 text-decoration-none" style="color: white;"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="me-4 text-decoration-none" style="color: white;"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="text-decoration-none" style="color: white;"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
            </div>
        </footer>
    </section>

    <script type="text/javascript" src="script.js"></script>

</body>
</html>
