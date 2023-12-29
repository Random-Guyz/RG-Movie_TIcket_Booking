let image = document.getElementById("top");
let i = 0;
let images = ["url(Images/img1.jpg)", "url(Images/img2.jpg)", "url(Images/img3.jpg)", "url(Images/img4.jpg)"];

function move() {
    if (++i >= images.length) {
        i = 0;
    }

    SetMovieDetails(i)
    image.style.backgroundImage = images[i];
}

SetMovieDetails(0)
setInterval(move, 3000);

function SetMovieDetails(index) {
    let title = document.getElementById("title");
    let genre = document.getElementById("genre");
    let desc = document.getElementById("desc");

    switch (index) {
        case 1:
            title.innerHTML = "Salaar";
            genre.innerHTML = "Action, Dark, Thriller";
            desc.innerHTML = "A gang leader makes a promise to a dying friend by taking on other criminal gangs.";
            break;
        case 2:
            title.innerHTML = "Animal";
            genre.innerHTML = "Action, Crime, Drama";
            desc.innerHTML = "A son undergoes a remarkable transformation as the bond with his father begins to fracture, and he becomes consumed by a quest for vengeance.";
            break;
        case 3:
            title.innerHTML = "Aquaman 2";
            genre.innerHTML = "Action, Adventure, Superhero";
            desc.innerHTML = "After failing to defeat Aquaman the first time, Black Manta wields the power of the mythic Black Trident to unleash an ancient and malevolent force.";
            break;
        default:
            title.innerHTML = "Dunki";
            genre.innerHTML = "Drama, Comedy, Emotional";
            desc.innerHTML = "The film focuses on 'donkey flight' or 'dunki', an illegal backdoor entry technique employed by immigrants to enter countries like the UK, the US and Canada";
            break;
    }
}