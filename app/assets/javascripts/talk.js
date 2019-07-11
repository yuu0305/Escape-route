$(function(){

  function buildHTML(talk){


    var html = `<div class="my-chat">
                 ${talk.message}
                </div>`
    return html;
  }

  // function scroll_view(){
  //   $(".chat-main__content").animate(
  //     { scrollTop: $(".chat-area")[0].scrollHeight},
  //     "10000"
  //   )
  // }

  $('#new_message').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    $.ajax({
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
  })

  .done(function(data){
    console.log(data);
    var html = buildHTML(data);
    console.log(html);
    $('.chat-area').append(html)
    $('.message-form').val('')
    // scroll_view();
    })

  .fail(function(){
    alert('error');//送信できなければエラーのアラート
  });
})
})

