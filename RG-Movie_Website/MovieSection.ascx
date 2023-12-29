<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MovieSection.ascx.cs" Inherits="RG_Movie_Website.MovieElement" %>

<%@ Register Src="~/MovieElement.ascx" TagName="MovieElement" TagPrefix="uc" %>

<section id="MovSec">
    <div class="container px-4 px-lg-5 mt-5">
    <h2 class="text-light my-5">Now Showing</h2>
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <!-- Column -->
            <uc:MovieElement runat="server" MovieTitle="Dunki" MovieGenre="Drama, Comedy" MovieImg="./Images/Posters/dunki_poster.jpg"/>
            <uc:MovieElement runat="server" MovieTitle="Salaar" MovieGenre="Action, Crime, Drama" MovieImg="./Images/Posters/salaar_poster.jpg"/>
            <uc:MovieElement runat="server" MovieTitle="Aquaman and the lost kingdom" MovieGenre="Action, Adventure" MovieImg="./Images/Posters/aquaman_poster.jpg"/>
            <uc:MovieElement runat="server" MovieTitle="Animal" MovieGenre="Action, Crime, Drama" MovieImg="./Images/Posters/animal_poster.jpeg"/>
            <uc:MovieElement runat="server" MovieTitle="Sam Bahadur" MovieGenre="Biography, Drama" MovieImg="./Images/Posters/sam_bahadur_poster.jpg"/>
            <uc:MovieElement runat="server" MovieTitle="Migration" MovieGenre="Animation, Comedy" MovieImg="./Images/Posters/migration_poster.jpeg"/>
            <uc:MovieElement runat="server" MovieTitle="12th Fail" MovieGenre="Drama" MovieImg="./Images/Posters/12_fail_poster.jpg"/>
            <uc:MovieElement runat="server" MovieTitle="Wonka" MovieGenre="Drama, Comedy" MovieImg="./Images/Posters/wonka_poster.jpg"/>
        </div>
    </div>
</section>
