let tab_lists = document.querySelectorAll(".tabs_list ul li");
let tab_items = document.querySelectorAll(".tab_item");

tab_lists.forEach(function (list) {
    list.addEventListener("click", function () {
        let tab_data = list.getAttribute("data-tc");

        tab_lists.forEach(function (list) {
            list.classList.remove("active");
        });
        list.classList.add("active");

        tab_items.forEach(function (item) {
            let tab_class = item.getAttribute("class").split(" ");
            if (tab_class.includes(tab_data)) {
                item.style.display = "block";
            }
            else {
                item.style.display = "none";
            }
        })
    })
})

let acceptBtn = document.getElementById("acpBtn");
let declineBtn = document.getElementById("decBtn");

acceptBtn.addEventListener('click', () => {
    alert("Thank you for accepting our Terms & Conditions");
    window.location.href = "sign_up.aspx";
});

declineBtn.addEventListener('click', () => {
    alert("Accept Terms & Conditions to move further");
});