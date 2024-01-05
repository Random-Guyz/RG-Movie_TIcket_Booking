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

//Seating Section 
let seats = document.querySelectorAll(".seat");
let resetBtn = document.getElementById("resetBtn");

seats.forEach(seat => {
    seat.addEventListener('click', () => {
        seat.classList.toggle("selected");
    });
});

resetBtn.addEventListener('click', () => {
    seats.forEach(seat => {
        seat.classList.remove("selected");
    });
});