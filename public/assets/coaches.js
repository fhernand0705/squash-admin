// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
var coach_modal = document.getElementById('coach-modal');
var side_bar = document.getElementById('side-bar')

function coachOpen() {
  coach_modal.style.display = "grid";
  coach_modal.style.justifyContent = "center";
  side_bar.style.zIndex = "0";
}
