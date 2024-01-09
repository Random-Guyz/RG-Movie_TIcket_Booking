<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookingPage.aspx.cs" Inherits="RG_Movie_Website.BookingPage" %>

<%@ Register Src="~/Navbar.ascx" TagName="Navbar" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>RG - Book Tickets</title>
    <link rel="icon" type="image/png" href="Images/favicon-logo.png" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="styles/BookingPage.css" />
    <link rel="stylesheet" type="text/css" href="styles/payModal.css" />
</head>
<body>

    <uc:Navbar runat="server" />

    <div class="MainContainer d-flex justify-space-between">
        <%--left side--%>
        <div class="container py-5 mt-5 m-10 text-white Inner-Container">

            <%--Date Slot--%>
            <div class="dateSection d-flex justify-content-start flex-column px-5">

                <div class="dropdowns d-flex justify-space-between">
                    <select id="theaterDropdown" class="dropdown me-5" name="theaters">
                        <option value="pvr">PVR</option>
                        <option value="cinepolis">Cinepolis</option>
                        <option value="moviemax">Movie Max</option>
                        <option value="inox">Inox</option>
                    </select>

                    <select id="cityDropdown" class="dropdown ms-5" name="location">
                        <option value="mumbai">Mumbai</option>
                        <option value="delhi">Delhi</option>
                        <option value="bangalore">Bangalore</option>
                        <option value="goa">Goa</option>
                    </select>
                </div>
                <%--Days--%>
                <div class="flex-column pe-5 me-2">
                    <div class="AvailableDays mt-3">
                        <div class="MovDate d-inline">
                            <p>08</p>
                            <p>MON</p>
                        </div>
                    </div>
                    <div class="AvailableDays mt-3">
                        <div class="MovDate d-inline">
                            <p>09</p>
                            <p>TUE</p>
                        </div>
                    </div>
                    <div class="AvailableDays days-active mt-3">
                        <div class="MovDate d-inline">
                            <p>10</p>
                            <p>WED</p>
                        </div>
                    </div>
                    <div class="AvailableDays mt-3">
                        <div class="MovDate d-inline">
                            <p>11</p>
                            <p>THU</p>
                        </div>
                    </div>
                    <div class="AvailableDays mt-3">
                        <div class="MovDate d-inline">
                            <p>12</p>
                            <p>FRI</p>
                        </div>
                    </div>
                </div>
            </div>
            <%--Time Slot--%>
            <div class="timingSection d-flex justify-content-start px-5">

                <p style="font-weight: bold;">Timing</p>

                <div class="AvailableTime d-flex flex-row flex-wrap" style="margin: 30px 0px 0px -70px;">

                    <div class="MovTiming time-active ms-3">
                        <p>8:00 AM</p>
                    </div>
                    <div class="MovTiming ms-3">
                        <p>10:00 AM</p>
                    </div>
                    <div class="MovTiming ms-3">
                        <p>12:00 PM</p>
                    </div>
                    <div class="MovTiming ms-3">
                        <p>2:45 PM</p>
                    </div>
                    <div class="MovTiming ms-3">
                        <p>7:30 PM</p>
                    </div>
                    <div class="MovTiming ms-3">
                        <p>9:12 PM</p>
                    </div>
                    <div class="MovTiming ms-3">
                        <p>11:05 PM</p>
                    </div>

                </div>
            </div>

            <%--Movie Details--%>
            <div class="Movie d-flex justify-content-start flex-column px-5">
                <p class="font-weight-bold position-fixed" style="font-size: 26px;"><%= MovTitle %></p>

                <img class="posterImg card-img-top pt-5 mt-2" src="<%=MovImgSrc %>" alt="Movie Poster" />

                <div class="d-flex">
                    <p class="mt-2"><%= MovGenre %></p>
                </div>

            </div>

        </div>

        <%--center side--%>
        <div class="container p-20 m-10 text-white Inner-Container">

            <div class="seating-container pt-5 mt-5">

                <ul class="showcase">
                    <li>
                        <div class="seat"></div>
                        <p class="mt-3">N/A</p>
                    </li>
                    <li>
                        <div class="seat selected-imp"></div>
                        <p class="mt-3">Selected</p>
                    </li>
                    <li>
                        <div class="seat occupied"></div>
                        <p class="mt-3">Occupied</p>
                    </li>
                    <li>
                        <div class="reset"></div>
                        <button id="resetBtn">Reset</button>
                    </li>
                </ul>

                <div class="seat-container">

                    <div class="screen"></div>

                    <%--movie seats container--%>
                    <div class="ms-4 ps-2">
                        <div class="row pt-2">
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                        </div>

                        <div class="row pt-2">

                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                        </div>

                        <div class="row pt-2">

                            <div class="seat occupied"></div>
                            <div class="seat occupied"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat occupied"></div>
                            <div class="seat occupied"></div>
                            <div class="seat occupied"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>

                        </div>

                        <div class="row pt-2">

                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat occupied"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                        </div>

                        <div class="row pt-2">

                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                        </div>

                        <div class="row pt-2">

                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat occupied"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                        </div>

                        <div class="row pt-2">

                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat occupied"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                        </div>

                        <div class="row pt-2">

                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat occupied"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                        </div>

                        <div class="row pt-2">

                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                            <div class="seat"></div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <%--right side--%>
        <div class="container p-20 m-10 text-white Inner-Container">
            <div class="custom-ticket-container">

                <div class="custom-ticket custom-movTicket pt-3">
                    <form method="post">
                        <div class="custom-top bg-dark">
                            <h1 style="width: 120px; margin-top: 8px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;"><%= MovTitle %></h1>

                            <div class="custom-MovPoster">
                                <img src="<%=MovImgSrc %>" alt="<%= MovTitle %> Poster" />
                            </div>
                        </div>

                        <div class="custom-bottom bg-dark">
                            <div class="custom-column">

                                <div class="custom-row custom-row-1">
                                    <p><span>Theater</span><span id="mtheater" name="theater">PVR</span></p>
                                    <p class="custom-row--right"><span>City</span> <span id="mcity" name="city">Mumbai</span> </p>
                                </div>

                                <div class="custom-row custom-row-2">
                                    <p><span>Time</span> <span id="mtime" name="timing">8:00 AM</span></p>
                                    <p class="custom-row--center"><span>Screen</span>1</p>
                                    <p class="custom-row--right"><span>Date</span> <span id="mdate" name="date">22 SAT</span></p>
                                </div>

                            </div>

                            <div id="ticket-actions" class="d-flex px-4 mx-3 justify-content-between">
                                <button id="proceedBtn" class="btn btn-outline-warning" type="submit">Proceed</button>
                                <button class="btn btn-warning">Rs.500/-</button>
                            </div>

                        </div>
                    </form>

                </div>
            </div>
        </div>

        <%--Payment Modal--%>
        <div class="pay-wrapper" id="payModal">
            <div class="payment-container">
                <form id="paymentForm">
                    <h1>
                        <i class="fas fa-shipping-fast"></i>
                        Contact Details
                    </h1>
                    <div class="name">
                        <div>
                            <label for="f-name">First Name</label>
                            <input type="text" name="f-name" id="fn" onkeyup="isempty()" />
                        </div>
                        <div>
                            <label for="l-name">Last Name</label>
                            <input type="text" name="l-name" id="ln" onkeyup="isempty()" />
                        </div>
                    </div>
                    <div class="street">
                        <label for="name">Email Address</label>
                        <input type="text" name="address" id="ad" onkeyup="isempty()" />
                    </div>
                    <div class="street">
                        <div>
                            <label for="city">Mobile no</label>
                            <input type="text" name="city" id="mn" onkeyup="isempty()" />
                        </div>
                    </div>
                    <h1>
                        <i class="far fa-credit-card"></i>Payment Information
                    </h1>
                    <div class="cc-num">
                        <label for="card-num">UPI ID</label>
                        <input type="text" name="card-num" id="up" onkeyup="isempty()" />
                    </div>
                    <div class="cc-num">
                        <label for="card-num">Card No.</label>
                        <input type="text" name="card-num" id="cn" onkeyup="isempty()" />
                    </div>
                    <div class="cc-info">
                        <div>
                            <label for="card-num">Exp</label>
                            <input type="text" name="expire" id="ex" onkeyup="isempty()" />
                        </div>
                        <div>
                            <label for="card-num">CCV</label>
                            <input type="text" name="security" id="cv" onkeyup="isempty()" />
                        </div>
                    </div>

                    <div class="btns">
                        <button onclick="pay(event)" id="buy">Pay</button>
                        <button onclick="pay(event)" id="cancel">Cancel</button>
                    </div>

                </form>
            </div>
        </div>

    </div>
    <script type="text/javascript" src="BookingScript.js"></script>
</body>
</html>
