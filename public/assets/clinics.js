// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
var clinic_modal = document.getElementById('clinic-modal');
var side_bar = document.getElementById('side-bar');

function clinicOpen() {
  clinic_modal.style.display = "grid";
  clinic_modal.style.justifyContent = "center";
  side_bar.style.zIndex = "0";
}
