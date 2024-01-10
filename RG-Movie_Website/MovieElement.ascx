<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MovieElement.ascx.cs" Inherits="RG_Movie_Website.MovieElement1" %>

<div class="col mb-5">
    <div class="card bg-dark text-white h-100">
        <!-- Product image-->
        <img runat="server" class="card-img-top" id="MovCardImg" src="#" alt="Movie Image" />
        <!-- Product details-->
        <div class="card-body p-4">
            <div class="text-center">
                <!-- Product name-->
                <h5 class="fw-bolder" runat="server" id="MovieName"></h5>
                <!-- Product genre-->
                <p runat="server" id="MovieGenreParagraph"></p>
            </div>
        </div>

        <!-- Product actions-->
        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
            <div class="text-center">
                <!-- Product action button-->
                <button id="btn" class="text-light btn btn-outline-warning mt-auto" onclick="direct()">Book Ticket</button>
                <script>function direct() { window.location.href = "BookingPage.aspx"; }</script>
            </div>
        </div>
    </div>
</div>
