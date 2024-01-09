//Ticket Details

let theater = document.getElementById("mtheater");
let mdate = document.getElementById("mdate");
let mtime = document.getElementById("mtime");


//Theater dropdown code
let theaterDropdown = document.getElementById("theaterDropdown");

let mTheater = document.getElementById("mtheater");

theaterDropdown.addEventListener('change', () => {
    mTheater.innerText = theaterDropdown.value;
});

//City dropdown code
let cityDropdown = document.getElementById("cityDropdown");

let city = document.getElementById("mcity");

cityDropdown.addEventListener('change', () => {
    city.innerText = cityDropdown.value;
});

// Day 
let dayBoxes = document.querySelectorAll(".AvailableDays");

dayBoxes.forEach(box => {
    box.addEventListener('click', () => {
        // Remove "days-active" class from all elements
        dayBoxes.forEach(otherBox => {
            if (otherBox !== box) {
                otherBox.classList.remove("days-active");
            }
        });

        // Toggle "days-active" class for the clicked element
        box.classList.toggle("days-active");

        mdate.innerHTML = box.innerText;
    });
});

// Time
let timeBoxes = document.querySelectorAll(".MovTiming");

timeBoxes.forEach(tbox => {
    tbox.addEventListener('click', () => {
        // Remove "time-active" class from all elements
        timeBoxes.forEach(otherTBox => {
            if (otherTBox !== tbox) {
                otherTBox.classList.remove("time-active");
            }
        });

        // Toggle "time-active" class for the clicked element
        tbox.classList.toggle("time-active");
        mtime.innerText = tbox.innerText;
    });
});

//Seating Section & Pricing
let seats = document.querySelectorAll(".seat");
let resetBtn = document.getElementById("resetBtn");

let priceLabel = document.getElementById("price");

let price = 0;

seats.forEach(seat => {
    seat.addEventListener('click', () => {
        seat.classList.toggle("selected");

        if (seat.classList.contains('selected') && !seat.classList.contains('occupied')) {
            price += 100;
        }
        else if (seat.classList.contains('occupied')) {
            price = price;
        }
        else if (!seat.classList.contains('selected')) {
            price -= 100;
        }

        priceLabel.innerText = price;
    });
});

resetBtn.addEventListener('click', () => {
    seats.forEach(seat => {
        priceLabel.innerText = 0;
        seat.classList.remove("selected");
    });
});

//Payment Modal Visibility

let proceedBtn = document.getElementById("proceedBtn");
let paymentModal = document.getElementById("payModal");

//Modal Buttons
let payBtn = document.getElementById("buy");
let cancelBtn = document.getElementById("cancel");

proceedBtn.addEventListener('click', (e) => {
    e.preventDefault();
    paymentModal.style.display = "block";

});

function pay(e) {
    e.preventDefault();
    paymentModal.style.display = "none";
}
