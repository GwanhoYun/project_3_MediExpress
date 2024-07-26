const items = [
    document.querySelector(".view_item_container_1"),
    document.querySelector(".view_item_container_2"),
    document.querySelector(".view_item_container_3"),
    document.querySelector(".view_item_container_4")
];

const buttonStyle = [
    document.querySelector(".view_item_btn1"),
    document.querySelector(".view_item_btn2"),
    document.querySelector(".view_item_btn3"),
    document.querySelector(".view_item_btn4")
];

function activateItem(index) {
    items.forEach((item, idx) => {
        item.style.display = (idx === index) ? "flex" : "none";
    });

    buttonStyle.forEach((btn, idx) => {
        btn.style.borderTop = (idx === index) ? "3px solid #0079e9" : "3px solid #7B7B7B";
        btn.style.borderBottom = (idx === index) ? "3px solid #0079e9" : "3px solid #7B7B7B";
        btn.style.color = (idx === index) ? "#0079e9" : "#7B7B7B";
    })

};

function activateAllMenu() {
    const activeAllMenu = document.querySelector('.all_menu_list');
    if (activeAllMenu.style.display === "none" || activeAllMenu.style.display === "") {
        activeAllMenu.style.display = "grid";
        activeAllMenu.style.animation = "onAllMenu 1s forwards";
    } else {
        activeAllMenu.style.display = "none";
        activeAllMenu.style.animation = "offAllMenu 1s forwards";
    }
}

document.addEventListener('click', function(event) {
    const activeAllMenu = document.querySelector('.all_menu_list');
    const menuButton = document.querySelector('.all_menu_container p');

    if (!activeAllMenu.contains(event.target) && !menuButton.contains(event.target)) {
        activeAllMenu.style.display = "none";
    }
});


let firstSlide = 1;
let autoSlideInterval = setInterval(nextSlide, 5000);
const slides = document.querySelectorAll(".slider-container li");
const lastSlide = slides.length;

function showSlide(slideIndex) {
    slides.forEach(slide => slide.style.display = 'none');
    slides.forEach(slide => slide.style.animation = 'none');
    document.querySelector('.slide' + slideIndex).style.display = 'block';
    document.querySelector('.slide' + slideIndex).style.animation = 'slideAnimation 1s';
}

function nextSlide() {
    firstSlide = firstSlide === lastSlide ? 1 : firstSlide + 1;
    showSlide(firstSlide);
    resetAutoSlide();
}

function prevSlide() {
    firstSlide = firstSlide === 1 ? lastSlide : firstSlide - 1;
    showSlide(firstSlide);
    resetAutoSlide();
}

document.querySelector(".next").addEventListener('click', nextSlide);
document.querySelector(".prev").addEventListener('click', prevSlide);

function resetAutoSlide() {
    clearInterval(autoSlideInterval);
    autoSlideInterval = setInterval(nextSlide, 5000);
}

showSlide(firstSlide);
