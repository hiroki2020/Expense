$(function() {

    document.addEventListener('turbolinks:load', function(){
    
    $('#btn').click(function() {
      $('#login-modal').fadeIn();
    });

    $('.close-modal').click(function(){
      $('#login-modal').fadeOut();
    });

    $('#hide').click(function() {
      $('#amount-modal').fadeIn();
    });

    $('.close-modal').click(function(){
      $('#amount-modal').fadeOut();
    });

    $('#hide').prop('disabled', false);
    $('#login-show').prop('disabled', false);

  });

  

});







