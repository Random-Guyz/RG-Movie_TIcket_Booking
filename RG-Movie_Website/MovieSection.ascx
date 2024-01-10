<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MovieSection.ascx.cs" Inherits="RG_Movie_Website.MovieSection" %>
<%@ Register Src="~/MovieElement.ascx" TagName="MovieElement" TagPrefix="uc" %>

<section id="MovSection" class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <asp:PlaceHolder runat="server" ID="MoviesPlaceholder"></asp:PlaceHolder>
        </div>
    </div>
</section>
