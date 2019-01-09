// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

var user_modal = document.getElementById('user-modal');

function userOpen() {
  user_modal.style.display = 'grid';
  user_modal.style.justifyContent = 'center';

};

// $('.add-user-btn').on('click', function() {
//   if ($('.user-body').css('opacity') == 0) $('.user-body').css('opacity', 1);
//   else $('.user-body').css('opacity', 0);
// });
