$(function(){

  function buildHTML(talk){


    var html = `<div class="my-chat">
                ${talk.message.replace(/\r?\n/g,"<br>")}
                </div>`
    return html;
  }


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
    var html = buildHTML(data);
    $('.chat-area').append(html)
    $('.message-form').val('')
    })

  .fail(function(){
    alert('error');//送信できなければエラーのアラート
  });
})
})

