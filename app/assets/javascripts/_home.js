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

  // $(".main").on("mouseover", ".posts-index-item", function(){
  //   $(this).css({"font-weight": "bold"});
  // }).on("mouseout", ".posts-index-item", function(){
  //   $(this).css({"font-weight": "normal"});
  // })

  
  $(".scroll_arrow").on("click", function(){
    $(".container").animate({scrollTop:0}, 300, "swing");
    return false;
  });

});







