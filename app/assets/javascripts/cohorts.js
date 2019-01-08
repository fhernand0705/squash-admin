// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

var cohort_modal = document.getElementById('cohort-modal');
var side_bar = document.getElementById('side-bar')

function cohortOpen() {
 cohort_modal.style.display = "grid";
 cohort_modal.style.justifyContent = "center";
 side_bar.style.zIndex = "0";
};


window.onclick = function(event) {
  if (event.target == cohort_modal) {
    cohort_modal.style.display = "none";
  }
}
