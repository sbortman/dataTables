//= require jquery-3.5.1.min.js
//= require bootstrap.bundle.min.js
//= require_self

$("#accordion").on("hide.bs.collapse show.bs.collapse", e => {
    $(e.target)
        .prev()
        .find("i:last-child")
        .toggleClass("fa-minus fa-plus");
});