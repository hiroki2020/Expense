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

  $(".main").on("mouseover", ".posts-index-item", function(){
    $(this).css({"background-color": "#F1940B", "font-weight": "bold"});
  }).on("mouseout", ".posts-index-item", function(){
    $(this).css({"background-color": "#FFFFFF", "font-weight": "normal"});
  })

});







