// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

var player_modal = document.getElementById('player-modal');
var side_bar = document.getElementById('side-bar');

function playerOpen() {
  player_modal.style.display = 'grid';
  player_modal.style.justifyContent = 'center';
  side_bar.style.zIndex = '0';
};

window.onclick = function(event) {
  if (event.target == player_modal) {
    player_modal.style.display = "none";

  }
}
