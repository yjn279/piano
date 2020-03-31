$(function() {

  $('#signup-show').click(function(){
    $('#top-modal').fadeIn().css('display', 'flex');
    $('#signup-form').fadeIn().css('display', 'flex');
  });

  $('#login-show').click(function(){
    $('#top-modal').fadeIn().css('display', 'flex');
    $('#login-form').fadeIn().css('display', 'flex');
  });

  $('#close-modal').click(function(){
    $('#top-modal').fadeOut();
    $('#signup-form').fadeOut();
    $('#login-form').fadeOut();
  });

});
