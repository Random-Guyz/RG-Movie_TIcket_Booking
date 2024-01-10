<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicketPage.aspx.cs" Inherits="RG_Movie_Website.TicketPage" %>

<%@ Register Src="~/Navbar.ascx" TagName="Navbar" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Ticket Booked</title>
    <link rel="stylesheet" type="text/css" href="styles/TicketStyle.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
</head>
<body>

    <uc:Navbar runat="server" />

    <div class="ticket">
        <div class="left">
            <div class="image" style="background-image: url('<%= Session["MovImgSrc"] %>');">

                <p class="admit-one">
                    <span>ADMIT ONE</span>
                    <span>ADMIT ONE</span>
                    <span>ADMIT ONE</span>
                </p>
                <div class="ticket-number">
                    <p>
                        #20030220
                    </p>
                </div>
            </div>
            <div class="ticket-info">
                <p class="date">
                    <span id="movDay">WEDNESDAY</span>
                    <span id="movDate" class="june-29">JAN 10TH</span>
                    <span>2024</span>
                </p>
                <div class="show-name">
                    <h1 id="movTitle"><%=Session["title"]%></h1>
                    <h2>Actor Name</h2>
                </div>
                <div class="time">
                    <p>4:00 PM <span>TO</span> 7:00 PM</p>
                    <p>DOORS <span>@</span> 3:00 PM</p>
                </div>
                <p class="location">
                    <span>Sahyog college</span>
                    <span class="separator"><i class="far fa-smile"></i></span><span>Thane</span>
                </p>
            </div>
        </div>
        <div class="right">
            <p class="admit-one">
                <span>ADMIT ONE</span>
                <span>ADMIT ONE</span>
                <span>ADMIT ONE</span>
            </p>
            <div class="right-info-container">
                <div class="show-name">
                    <h1><%=Session["title"]%></h1>
                </div>
                <div class="time">
                    <p>4:00 PM <span>TO</span> 7:00 PM</p>
                    <p>DOORS <span>@</span> 3:00 PM</p>
                </div>
                <div class="barcode">
                    <img src="https://external-preview.redd.it/cg8k976AV52mDvDb5jDVJABPrSZ3tpi1aXhPjgcDTbw.png?auto=webp&s=1c205ba303c1fa0370b813ea83b9e1bddb7215eb"
                        alt="QR code" />
                </div>
                <p class="ticket-number">
                    #20030220
                </p>
            </div>
        </div>
        <div>
            <button id="printBtn" onclick="window.print()">Print your ticket</button>
        </div>
    </div>
</body>
</html>
