document.addEventListener("turbo:load", () => {
    const stars = document.querySelectorAll(".star");
    const ratingInput = document.getElementById("rating-vlaue");

    if (!stars.length) return;

    let currentRating = 0;

    stars.forEach((star) => {
        star.addEventListener("mouseover", () => {
            const value = parseInt(star.dataset.value);
            highlightStars(value);
        });

        star.addEventListener("mouseout", () => {
            highlightStars(currentRating);
        });

        star.addEventListener("click", () => {
            currentRating = parseInt(star.dataset.value);
            ratingInput.value = currentRating;
            highlightStars(currentRating);
        });
    });

    function highlightStars(value) {
        stars.forEach((s) => {
            s.classList.remove("hovered", "selected");
            if (parseInt(s.dataset.value) <= value) {
                s.classList.add(value == currentRating ? "selected" : "hovered");
            }
        });
    }
});