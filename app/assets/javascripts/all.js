//= require jquery
//= require jquery.mobile
//= require rails
//= require forms

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
