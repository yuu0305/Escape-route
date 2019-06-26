$(function(){
  $('.left-select').fadeIn(700);
  $('.right-select').fadeIn(700);

  $('.left-select').mouseover(function(){
    $(this).css("opacity", "1");
  })
  $('.left-select').mouseleave(function(){
    $(this).css("opacity", "0.6");
  })

  $('.right-select').mouseover(function(){
    $(this).css("opacity", "1");
  })
  $('.right-select').mouseleave(function(){
    $(this).css("opacity", "0.6");
  })
  
})