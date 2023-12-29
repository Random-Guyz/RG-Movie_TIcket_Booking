<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navbar.ascx.cs" Inherits="RG_Movie_Website.Navbar" %>

<!--Main Navigation-->

    <!-- Jumbotron -->
    <nav class="p-3 text-center custom-navbar">
        <div class="container">
            <div class="row">
                <!-- Left elements -->
                <div class="col-md-4 d-flex justify-content-center justify-content-md-start mb-3 mb-md-0">
                    <a href="#!" class="ms-md-2">
                        <img src="./Images/white_logo.svg" height="35" alt="Logo" title="RG Movie Ticket Booking" />
                    </a>
                </div>
                <!-- Left elements -->

                <!-- Center elements -->
                <div class="col-md-4">
                    <form class="d-flex input-group w-auto my-auto mb-3 mb-md-0">
                        <input autocomplete="off" type="search" class="form-control rounded-pill" placeholder="Search" title="Press Enter to Proceed" />
                    </form>
                </div>
                <!-- Center elements -->

                <!-- Right elements -->
                <div class="col-md-4 d-flex justify-content-center justify-content-md-end align-items-center">
                    <div class="d-flex">
                        <a href="#MovSec" class="text-white btn text-decoration-none me-5">Movies</a>

                        <!-- User -->
                        <% 
                            string user = "";

                            if (user != "")
                            {
                        %>
                        <div>
                            <a class="text-reset dropdown-toggle d-flex align-items-center" href="#"
                                id="navbarDropdownMenuLink" role="button" data-mdb-toggle="dropdown" aria-expanded="false">
                                <img src="https://mdbootstrap.com/img/Photos/Avatars/img (31).jpg" class="rounded-circle" height="30" title="Profile"
                                    alt="User Profile" loading="lazy" />
                            </a>
                        </div>
                        <% }
                            else
                            { %>
                        <a href="#" class="text-white btn btn-primary text-decoration-none ms-3 px-3">Login</a>
                        <%} %>
                    </div>
                </div>
                <!-- Right elements -->
            </div>
        </div>
    </nav>
<!--Main Navigation-->
