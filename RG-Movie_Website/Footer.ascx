<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="RG_Movie_Website.Footer" %>

<style>
    .foot-li {
    position: relative;
    transition: margin-left 0.3s ease;
}

.foot-li::before {
    content: '';
    height: 100%;
    width: 3px;
    position: absolute;
    top: 0;
    left: -10px;
    background-color: #0b5ed7;
    opacity: 0;
    transition: opacity 0.3s ease;
}

.foot-li:hover::before {
    opacity: 1;
}

.foot-li:hover {
    margin-left: 15px;
}

</style>

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
                <li class="nav-item mb-2 foot-li"><a href="#" class="nav-link p-0 text-secondary d-flex align-items-center" style="font-size: 12px;"><i class="bi bi-envelope" style="font-size: 16px; margin-right: 8px;"></i>team.randomguyz@gmail.com</a>
                <li class="nav-item mb-2 foot-li"><a href="#" class="nav-link p-0 text-secondary d-flex align-items-center" style="font-size: 12px;"><i class="bi bi-telephone" style="font-size: 16px; margin-right: 8px;"></i>+91 8988763410</a>
                <li class="nav-item mb-2 foot-li"><a href="#" class="nav-link p-0 text-secondary" style="font-size: 12px;"><i class="bi bi-signpost-split" style="font-size: 16px; margin-right: 8px;"></i>1234 Imaginary Street Cityville, Stateville Countryland Postal Code: 12345</a>
                </li>
            </ul>
        </div>

        <div class="col-md-5 offset-md-1 mb-3">
            <form>
                <div class="form-group mb-2">
                    <label class="text-white" for="exampleFormControlInput1">Your Email</label>
                    <input type="email" class="form-control" name="userEmail" placeholder="email@example.com">
                </div>
                <div class="form-group mt-2">
                    <label class="text-white" for="exampleFormControlTextarea1">Write your queries</label>
                    <textarea class="form-control" name="userMsg"  rows="3"
                        placeholder="Write your valuable opinions here...."></textarea>
                </div>
                <button class="btn btn-primary mt-2" id="submitBtn" type="submit">Submit</button>
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
