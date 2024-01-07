<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_up.aspx.cs" Inherits="RG_Movie_Website.sign_up" %>

<%@ Register Src="~/Navbar.ascx" TagName="Navbar" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RG - Sign Up Page</title>
    <%--Main Style Sheet--%>
    <link rel="stylesheet" type="text/css" href="styles/sign_up.css" />
    <%--Terms & Condition Style Sheet--%>
    <link rel="stylesheet" type="text/css" href="styles/TermsStyle.css" />

    <link rel="icon" type="image/png" href="Images/favicon-logo.png" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />

</head>
<body class="formBody">

    <uc:Navbar runat="server" />

    <div class="slider-container">
        <div class="slider">
            <img src="./Images/LoginBg/bg.jpg" alt="Background Image 1" />
            <img src="./Images/LoginBg/bg1.jpg" alt="Background Image 2" />
            <img src="./Images/LoginBg/bg2.jpg" alt="Background Image 3" />
            <img src="./Images/LoginBg/bg3.jpg" alt="Background Image 4" />
            <img src="./Images/LoginBg/bg4.jpg" alt="Background Image 5" />
        </div>
    </div>

    <form class="loginForm" autocomplete="off">
        <div class="C">
            <div class="neon">SIGN </div>
            <div class="flux">UP </div>
        </div>

        <div class="control block-cube block-input">
            <input name="name" pass="name" type="text" placeholder="Enter Your Name" autofocus="autofocus" required />
            <div class="bg-top">
                <div class="bg-inner"></div>
            </div>
            <div class="bg-right">
                <div class="bg-inner"></div>
            </div>
            <div class="bg">
                <div class="bg-inner"></div>
            </div>
        </div>

        <div class="control block-cube block-input">
            <input name="email" pass="uname" type="email" placeholder="Enter Your Email" />
            <div class="bg-top">
                <div class="bg-inner"></div>
            </div>
            <div class="bg-right">
                <div class="bg-inner"></div>
            </div>
            <div class="bg">
                <div class="bg-inner"></div>
            </div>
        </div>

        <div class="control block-cube block-input">
            <input name="mob" pass="uname" type="number" placeholder="Enter Your Mobile Number" />
            <div class="bg-top">
                <div class="bg-inner"></div>
            </div>
            <div class="bg-right">
                <div class="bg-inner"></div>
            </div>
            <div class="bg">
                <div class="bg-inner"></div>
            </div>
        </div>

        <div class="control block-cube block-input">
            <input name="username" pass="uname" type="text" placeholder="Enter Your Username" />
            <div class="bg-top">
                <div class="bg-inner"></div>
            </div>
            <div class="bg-right">
                <div class="bg-inner"></div>
            </div>
            <div class="bg">
                <div class="bg-inner"></div>
            </div>
        </div>

        <div class="control block-cube block-input">
            <input name="password" id="pwd" type="password" placeholder="Enter Your Password" />
            <div class="bg-top">
                <div class="bg-inner"></div>
            </div>
            <div class="bg-right">
                <div class="bg-inner"></div>
            </div>
            <div class="bg">
                <div class="bg-inner"></div>
            </div>
        </div>

        <div class="control block-cube block-input">
            <input name="CONpassword" id="Conpwd" type="password" placeholder="Conform Your Password" />
            <div class="bg-top">
                <div class="bg-inner"></div>
            </div>
            <div class="bg-right">
                <div class="bg-inner"></div>
            </div>
            <div class="bg">
                <div class="bg-inner"></div>
            </div>
        </div>

        <div class="checkbox-wrapper-26">
            <input type="checkbox" id="termsCheckbox" name="termsCheckbox" />
            <label for="termsCheckbox">
                <div class="tick_mark"></div>
            </label>
        </div>

        <div class="terms-text">
            <label for="termsCheckbox">I Read & Agree to the <a href="#" id="termBtn">Terms and Conditions</a></label>
        </div>

        <button class="btn block-cube block-cube-hover" id="loginBtn" type="button">
            <div class="bg-top">
                <div class="bg-inner"></div>
            </div>
            <div class="bg-right">
                <div class="bg-inner"></div>
            </div>
            <div class="bg">
                <div class="bg-inner"></div>
            </div>
            <div class="text">SIGN UP</div>
        </button>

        <div class="otp-container" id="otp-container">
            <label for="otpInput" id="otplable">Enter OTP:</label>
            <input type="text" id="otpInput" maxlength="3" />
            <button id="btnVerify" onclick="verifyOTP()">Verify OTP</button>
        </div>

    </form>

    <%--Terms & Condition Modal--%>

    <div id="terms" class="wrapper flex_align_justify">
        <div class="tc_wrap">
            <div class="tabs_list">
                <ul>
                    <li data-tc="tab_item_1" class="active">Purchasing tickets online</li>
                    <li data-tc="tab_item_2">Booking of Tickets</li>
                    <li data-tc="tab_item_3">Cancellation of tickets</li>
                    <li data-tc="tab_item_4">Terms of cancellation</li>
                    <li data-tc="tab_item_5">General Conditions</li>
                </ul>
            </div>
            <div class="tabs_content">
                <div class="tab_head">
                    <h2>Terms & Conditions</h2>
                </div>
                <div class="tab_body">
                    <div class="tab_item tab_item_1">
                        <h3>Purchasing tickets online</h3>
                        <p>Children aged 3 years and above will require a separate ticket.Only UP Locations Ticket is compulsory for children of 5 years & above</p>
                        <p>The 3D glasses will be available at the cinema for 3D films and must be returned before you exit the premises. 3D Glasses are chargeable (refundable/non-refundable) as per individual cinema policies.</p>
                        <p>Items like laptop, cameras, knifes, lighter, match box, cigarettes, firearms and all types of inflammable objects are strictly prohibited.</p>
                        <p>Items like carrybags eatables, helmets, handbags are not allowed inside the theaters are strictly prohibited. Kindly deposit at the baggage counter of mall/ cinema.</p>
                    </div>
                    <div class="tab_item tab_item_2" style="display: none;">
                        <h3>Booking of Tickets</h3>
                        <p>The user must provide RG with the correct information pertaining to the cardholders name, card type, the card number, the card expiry date and the security code on the back of the card (if any) in order to make payment to RG Cinemas. The user shall be responsible for the correctness of the information provided and shall not be indemnified if the information is wrongly entered whether intentional or unintentional. </p>
                        <p>The user must ensure the correctness of all details of the booking before finally booking their tickets as RG will accept no responsibility and will not issue a refund for wrong bookings that are the fault of the user. If the user experiences problems with the booking process, they are to call the helpline number of RG specified on the booking page. The Portal shall not cancel any bookings once the transaction is completed.</p>
                        <p>Once the booking has been processed, the user will receive a confirmation e-mail to their e-mail address with all the relevant details of their booking. RG is not responsible and will not issue a refund to the user for selecting the wrong tickets or if the user does not meet the minimum age requirements for that particular film. The online booking is non transferable and cannot be further sold.</p>
                        <p>To collect the tickets the user must present the credit/debit card that was used to book the tickets in that particular cinema. The user has to carry the print out of the confirmation mail. The user may procure the ticket from the automatic ticket collection points or they can present the print out to the RG representative at the ticket counter of the concerned Cineplex. The user shall also carry proof of age for movies certified 'A'.</p>
                    </div>
                    <div class="tab_item tab_item_3" style="display: none;">
                        <h3>Cancellation of tickets</h3>
                        <p>The booking shall be deemed to be cancelled in the following circumstances:-</p>
                        <p>The booking is valid only for the viewing of the film at a specified multiplex of RG. The booking shall become valueless and non refundable if not used on the date specified on its face.</p>
                        <p>If, in the opinion of a representative of the RG, the user is in breach of these Online Booking Terms or is under the influence of drugs or alcohol, or that it is necessary for the safety or comfort or security of other customers or for the protection of property, the representative reserves the right to refuse the entry or request the Customer to leave the multiplex and may if necessary physically remove the Customer from the multiplex or physically restrain the Customer.</p>
                        <p>RG is required to abide by and enforce the age restrictions as specified by the Law for the time being in force. In the event that an authorised RG representative is of the opinion that the user does not meet the minimum age requirement and the user cannot provide photographic proof that they are of the required age, RG will not permit entry to that performance or film.</p>
                        <p>The customer has an option to cancel the ticket booked online on www.pvrcinemas.com.., RG mobile App, in.bookmyshow.com or BookMyShow App on the terms as mentioned herein-below. However, no ticket and F& B cancellation will be entertained once patron enters the cinema premises. This facility is currently only available in all theatres barring RG Opulent.</p>
                        <p>User shall not be allowed to cancel more than 5 booked tickets in one financial quarter. Post that their profile will be blocked from making further cancellations until the start of the next quarter.</p>
                        <p>Users can contact RG customer care for authentication to get their profiles unlocked.</p>
                        <p>Unlocking may take upto 7 business days</p>

                    </div>
                    <div class="tab_item tab_item_4" style="display: none;">
                        <h3>Terms of cancellation are as follows:</h3>
                        <p>Transaction can be cancelled only after 10 minutes of booking the ticket/F&B.</p>
                        <p>No cancellation will be allowed within 20 minutes and movie start time.</p>
                        <p>For tickets cancelled 2 hours before show start time, 75% of ticket value and 100% of F&B value will be refunded</p>
                        <p>For tickets cancelled from 20 mins to 2 hours before show start time, 50% of ticket value, 100% of F&B value will be refunded</p>
                        <p>In case of F&B booking (without ticket) through any mode, there is no cancellation available.</p>
                        <p>No refund will be given for booking done through or amount paid by M-coupon/Gift card/Star Pass/Voucher/Promo. Also ticket cancellation cannot be applied/clubbed on a booking done through or an offer given by us or facilitate for business partner.</p>
                        <p>No partial cancellation is allowed. The patron will have to cancel the complete transaction.</p>
                        <p>Convenience fee and taxes applicable thereon will not be refunded in case of cancellation</p>
                        <p>The refund for the cancelled ticket will be processed in minimum 7 working days.</p>

                    </div>
                    <div class="tab_item tab_item_5" style="display: none;">
                        <h3>General Conditions</h3>
                        <p>RG will do everything possible to ensure the show and operating times of the cinema are true to the advertisements. However due to circumstances beyond RG's control there may be times that a film has to be cancelled or shown at a different time. In this instance the user may be given a refund of the ticket only. The mode of refund shall be at the sole discretion of RG. If any show is cancelled or cancellation is done from the management of RG then the formalities for the same will be taken in to consideration. The user agrees not to bring in any action against RG in such instance.</p>
                        <p>The user who has booked for a movie certified as 'A', must provide RG Cinemas with the relevant proof of entitlement when the tickets are being collected or upon entry to the cinema.</p>
                        <p>The Company reserves its rights to suspend the operations of any Cineplex/ Multiplex/Audi due to some exigencies and any offer, scheme, promotions shall not be valid/ applicable in respect of such Multiplex/ Cineplex/ Audi. The Company shall not be liable for any losses/ damages arising \ connected with such suspension. This clause shall also be applicable and binding on all Company's agents, partners and agents, partners of its affiliate/ group companies.</p>

                    </div>
                </div>
                <div class="tab_foot flex_align_justify">
                    <button class="decline" id="decBtn">
                        Decline
                    </button>
                    <button class="agree" id="acpBtn">
                        Agree
                    </button>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="TermsScript.js"></script>
    <script type="text/javascript">

        let uname = document.querySelector("input[name=name]");
        let emaill = document.querySelector("input[name=email]");
        let mobi = document.querySelector("input[name=mob]");
        let usname = document.querySelector("input[name=username]");
        let pass = document.querySelector("input[name=password]");
        let cpass = document.querySelector("input[name=CONpassword]");
        let terms = document.getElementById("termsCheckbox");
        let btn = document.getElementById('loginBtn');

        btn.addEventListener('click', () => {
            if (uname.value.trim() !== "") {
                if (emaill.value.trim() !== "") {
                    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                    if (emailRegex.test(emaill.value.trim())) {
                        if (mobi.value.trim() !== "") {
                            if (mobi.value.trim().length === 10) {
                                if (usname.value.trim() !== "") {
                                    if (pass.value.trim() !== "") {
                                        if (cpass.value.trim() !== "") {
                                            if (pass.value.trim() === cpass.value.trim()) {
                                                if (terms.checked) {
                                                    // Display the OTP container and blur the background
                                                    document.getElementById("otp-container").style.display = "block";
                                                    document.getElementById("blur-container").style.backdropFilter = "blur(8px)";

                                                } else {
                                                    alert("Please Agree Terms&Conditions");
                                                }
                                            } else {
                                                alert("Both Passwords Do Not Match");
                                            }
                                        } else {
                                            alert("Please Confirm Password");
                                        }
                                    } else {
                                        alert("Password Field is Empty");
                                    }
                                } else {
                                    alert("UserName Field is Empty");
                                }
                            } else {
                                alert("Enter Mobile Number Correctly");
                            }
                        } else {
                            alert("Mobile Field is Empty");
                        }
                    } else {
                        alert("Please enter a valid email address.");
                    }
                } else {
                    alert("Email Field is Empty");
                }
            } else {
                alert("Name Field is Empty");
            }
        });

        function verifyOTP() {
            var enteredOTP = document.getElementById("otpInput").value;

            if (enteredOTP === "123") {
                alert("OTP Verified Successfully!");
                // Hide the OTP container
                document.getElementById("otp-container").style.display = "none";

                window.location.href = "HomePage.aspx";

            } else {
                alert("Invalid OTP. Please try again.");
            }
        }
    </script>
</body>
</html>
