$(function(){
  $('#new_message').on('submit', function(e){
    e.preventDefault();
    console.log("aaaa")
    var formData = new FormData(this);
  })
})