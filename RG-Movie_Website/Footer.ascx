<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="RG_Movie_Website.Footer" %>


<%--<footer class="bg-dark text-white">
    <div class="container">
        <br />
        <div class="row">
            <!-- 1st Column -->
            <div class="col-md-3 d-flex flex-column align-items-center">
                <div class="social1 mb-3 bg-light rounded-circle p-3">
                    <a href="#">
                        <img src="./Images/footerImgs/NewMovies.png" style="width: 50px; height: 50px;"></a>
                </div>
                <h4>NEW RELEASE MOVIES</h4>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-decoration-none">Dunki</a></li>
                    <li><a href="#" class="text-decoration-none">Salaar</a></li>
                    <li><a href="#" class="text-decoration-none">Animal</a></li>
                    <li><a href="#" class="text-decoration-none">Aquaman 2</a></li>
                </ul>
            </div>

            <!-- 2nd Column -->
            <div class="col-md-3 d-flex flex-column align-items-center">
                <div class="social1 mb-3 bg-light rounded-circle p-3">
                    <a href="#">
                        <img src="./Images/footerImgs/Upcomming.png" style="width: 50px; height: 50px;"></a>
                </div>
                <h4>LINKS</h4>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-decoration-none">Home</a></li>
                    <li><a href="#" class="text-decoration-none">Movies</a></li>
                    <li><a href="#" class="text-decoration-none">Contact</a></li>
                    <li><a href="#" class="text-decoration-none">About us</a></li>
                </ul>
            </div>

            <!-- 3rd Column -->
            <div class="col-md-3 d-flex flex-column align-items-center">
                <div class="social1 mb-3 bg-light rounded-circle p-3">
                    <a href="#">
                        <img src="./Images/footerImgs/CustSrvc.png" style="width: 50px; height: 50px;"></a>
                </div>
                <h4>24/7 CUSTOMER CARE</h4>
                <form>
                    <input type="email" placeholder="Your Email" class="form-control mb-2">
                    <input type="text" placeholder="Your Message" class="form-control mb-2">
                    <input type="submit" value="Submit" class="btn btn-primary">
                </form>
            </div>

            <!-- 4th Column -->
            <div class="col-md-3 d-flex flex-column align-items-center">
                <div class="social1 mb-3 bg-light rounded-circle p-3">
                    <a href="#">
                        <img src="./Images/footerImgs/ticket.png" style="width: 50px; height: 50px;"></a>
                </div>
                <h4>RESEND BOOKED TICKET</h4>
                <form>
                    <input type="number" placeholder="Your Number" class="form-control mb-2">
                    <input type="email" placeholder="Your Email" class="form-control mb-2">
                    <input type="submit" value="Submit" class="btn btn-primary">
                </form>
            </div>

        </div>

        <hr class="bg-light">
        <div class="row">
            <div class="col">
                <p>&#169; 2023 college project. All Rights Reserved.</p>
            </div>
            <div class="col-auto">
                <div class="socialIcons">
                    <a href="#" class="me-4 text-decoration-none"><i class="fab fa-facebook"></i></a>
                    <a href="#" class="me-4 text-decoration-none"><i class="fab fa-instagram"></i></a>
                    <a href="#" class="me-4 text-decoration-none"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="text-decoration-none"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
        </div>

    </div>
</footer>--%>

<%--
    
    ORIGINAL FOOTER
    --%>
    <footer class="container py-5 bg-dark">
    <div class="row">
        <div class="col-6 col-md-2 mb-3">
            <h5 class="text-white">Links</h5>
            <ul class="nav flex-column">
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-secondary">Home</a></li>
                <li class="nav-item mb-2"><a href="#MovSection" class="nav-link p-0 text-secondary">Movies</a></li>
                <li class="nav-item mb-2"><a href="./LoginPage.aspx" class="nav-link p-0 text-secondary">Login</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-secondary">Sign up</a></li>
            </ul>
        </div>

        <div class="col-6 col-md-2 mb-3">
            <h5 class="text-white">Popular Movies</h5>
            <ul class="nav flex-column">
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-secondary">Dunki</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-secondary">Salaar</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-secondary">Animal</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-secondary">Sam Bahadur</a></li>
            </ul>
        </div>

        <div class="col-6 col-md-2 mb-3">
            <h5 class="text-white">Help</h5>
            <ul class="nav flex-column">
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-secondary d-flex align-items-center" style="font-size: 12px;"><i class="bi bi-envelope" style="font-size: 16px; margin-right: 8px;"></i>team.randomguyz@gmail.com</a>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-secondary d-flex align-items-center" style="font-size: 12px;"><i class="bi bi-telephone" style="font-size: 16px; margin-right: 8px;"></i>+91 8988763410</a>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-secondary" style="font-size: 12px;"><i class="bi bi-signpost-split" style="font-size: 16px; margin-right: 8px;"></i> 1234 Imaginary Street Cityville, Stateville Countryland Postal Code: 12345</a>
                </li>
            </ul>
        </div>

        <div class="col-md-5 offset-md-1 mb-3">
            <form method="post">
                <div class="form-group mb-2">
                    <label class="text-white" for="exampleFormControlInput1">Your Email</label>
                    <input type="email" class="form-control" id="exampleFormControlInput1"
                        placeholder="email@example.com">
                </div>
                <div class="form-group mt-2">
                    <label class="text-white" for="exampleFormControlTextarea1">Write your queries</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"
                        placeholder="Write your valuable opinions here...."></textarea>
                </div>
                <button class="btn btn-primary mt-2" type="button">Submit</button>
            </form>
        </div>
    </div>

   <%-- <div class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
        <p class="text-secondary">© 2022 RG Movie Ticket Booking, Inc. All rights reserved.</p>
    </div>--%>

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
