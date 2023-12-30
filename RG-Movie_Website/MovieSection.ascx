<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MovieSection.ascx.cs" Inherits="RG_Movie_Website.MovieElement" %>

<%@ Register Src="~/MovieElement.ascx" TagName="MovieElement" TagPrefix="uc" %>

<section id="MovSection" class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <uc:MovieElement runat="server" MovieImg="./Images/Posters/dunki_poster.jpg" MovieTitle="Dunki" MovieGenre="Drama, Comedy" />
            <uc:MovieElement runat="server" MovieImg="./Images/Posters/salaar_poster.jpg" MovieTitle="Salaar" MovieGenre="Action, Thriller" />
            <uc:MovieElement runat="server" MovieImg="./Images/Posters/animal_poster.jpeg" MovieTitle="Animal" MovieGenre="Action, Crime" />
            <uc:MovieElement runat="server" MovieImg="./Images/Posters/aquaman_poster.jpg" MovieTitle="Aquaman and the lost kingdom" MovieGenre="Action, Adventure" />

            <uc:MovieElement runat="server" MovieImg="./Images/Posters/sam_bahadur_poster.jpg" MovieTitle="Sam Bahadur" MovieGenre="Historic, Action" />
            <uc:MovieElement runat="server" MovieImg="./Images/Posters/wonka_poster.jpg" MovieTitle="Wonka" MovieGenre="Comedy, Drama" />
            <uc:MovieElement runat="server" MovieImg="./Images/Posters/migration_poster.jpeg" MovieTitle="Miration" MovieGenre="Animation, Comedy" />
            <uc:MovieElement runat="server" MovieImg="./Images/Posters/12_fail_poster.jpg" MovieTitle="12th Fail" MovieGenre="Drama" />
        </div>
    </div>
</section>
