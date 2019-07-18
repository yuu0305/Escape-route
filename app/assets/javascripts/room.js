$(function(){
  $('.message-box').fadeIn(700);

  $('.message-box').mouseover(function(){
    $(this).css("opacity", "1");
  })
  $('.message-box').mouseleave(function(){
    $(this).css("opacity", "0.8");
  })

})