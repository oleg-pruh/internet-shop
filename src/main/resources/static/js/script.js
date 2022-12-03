const search_form = document.getElementById("search-form");

search_form.addEventListener("submit", function (event) {
    event.preventDefault();
    window.location.href = '/search/' + search_form.elements[0].value;
});