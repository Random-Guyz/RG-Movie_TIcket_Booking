<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navbar.ascx.cs" Inherits="RG_Movie_Website.Navbar" %>

<nav class="navbar navbar-expand-lg navbar-light bg-dark fixed-top">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="/">
            <img src="Images/white_logo.svg" height="30" /></a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                <li class="nav-item me-5"><a class="nav-link text-light" aria-current="page" href="/">Home</a></li>
                <li class="nav-item"><a class="nav-link text-light" href="/#MovSection">Movies</a></li>

            </ul>
            <form runat="server" class="d-flex">
                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-outline-warning me-4" OnClick="LoginBtn_Click" />
                <asp:Button ID="Button2" runat="server" Text="Sign In" CssClass="btn btn-outline-warning me-4" OnClick="SignInBtn_Click" />
            </form>
        </div>
    </div>
</nav>
