// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require_tree .

$(function() {
  $(".dish_check_form input").live('change',  function(e) {
    if(!$(e.target).data('submitting')) {
      $(e.target).data('submitting', true);
      $(e.target).parent().submit();
    }
  });
  
  $(".dish_order select").live('change', function(e) {
    if(!$(e.target).data('submitting')) {
      $(e.target).data('submitting', true);
      $(e.target).parent().submit();
    }
  });
  
  $('select').selectmenu();
})