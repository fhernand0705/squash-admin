// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery
//= reqire jquery_ujs

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
