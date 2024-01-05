<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MovieElement.ascx.cs" Inherits="RG_Movie_Website.MovieElement1" %>

<div class="col mb-5">
    <div class="card bg-dark text-white h-100">
        <!-- Product image-->
        <img class="card-img-top" id="MovCardImg" src="<%= MovieImg %>" height="300" width="450" alt="<%= MovieTitle %>" />
        <!--  <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." /> -->
        <!-- Product details-->
        <div class="card-body p-4">
            <div class="text-center">
                <!-- Product name-->
                <h5 class="fw-bolder"><%= MovieTitle %></h5>
                <!-- Product price-->
                <%= MovieGenre %>
            </div>
        </div>
        <!-- Product actions-->
        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
            <div class="text-center">
                <a id="btn" runat="server" class="text-light btn btn-outline-warning mt-auto">Book Ticket</a>
            </div>
        </div>
    </div>
</div>
