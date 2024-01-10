<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="INSERT_MOVIEINFO.aspx.cs" Inherits="RG_Movie_Website.INSERT_MOVIEINFO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Add Movie</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyAq05D9x87r5R9TN5CxN5dAfFq9b6I"
        crossorigin="anonymous" />
    <style>
        body {
            background-image: url('/Images/BG.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #fff;
            margin: 0;
            padding: 0;
            height: 100vh;
            font-family: 'Arial', sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .form-container {
            width: 100%;
            max-width: 600px;
            background-color: #0056b3;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .btn-primary {
            background-color: forestgreen;
            border-color: aliceblue;
        }

            .btn-primary:hover {
                background-color: yellowgreen;
                border-color: orangered;
            }
    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-dark fixed-top">
        <div class="container px-4 px-lg-5">
            <a class="navbar-brand" href="/">
                <img src="Images/white_logo.svg" height="30" /></a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    <li class="nav-item me-5"><a class="nav-link text-light" aria-current="page" href="/">Home</a></li>
                    <li class="nav-item"><a class="nav-link text-light" href="/#MovSection">Movies</a></li>

                </ul>
            </div>
        </div>
    </nav>

    <form id="form1" runat="server">
        <div class="form-container">
            <h2 class="text-center">Add Movie</h2>
            <div class="form-group">
                <label for="txtMovieTitle">Movie Title:</label>
                <asp:TextBox ID="txtMovieTitle" runat="server" CssClass="form-control" placeholder="Enter Movie Title" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtMovieGenre">Movie Genre:</label>
                <asp:TextBox ID="txtMovieGenre" runat="server" CssClass="form-control" placeholder="Enter Movie Genre"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtMovieImg">Movie Image URL:</label>
                <asp:TextBox ID="txtMovieImg" runat="server" CssClass="form-control" placeholder="Enter Movie Image URL" Text="Images/Posters/"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnAddMovie" runat="server" Text="Add Movie" CssClass="btn btn-primary btn-block" OnClick="btnAddMovie_Click" Height="31px" />
            </div>
        </div>
    </form>
</body>
</html>
