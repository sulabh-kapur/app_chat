$(document).ready(function(){

    $('.msger-chat').animate({
        scrollTop: $('.msger-chat').prop('scrollHeight')
    },1500);


    setInterval(getChat,1000);
    jQuery('#saveChat').submit(function(e){

        
            e.preventDefault();
            var msg = jQuery('#messageInput').val();
            jQuery('#messageInput').val('');
            var sender = jQuery('#sender_id').val ()
            let url = 'http://localhost/app_groupchat/chat/server/chat_save.php'
            $.ajax({
                type: "POST",
                url: url,
                data: {'message':msg,'sender_id': sender}, // serializes the form's elements.
                success: function(data)
                {
                //   alert(data); // show response from the php script.
                let result = jQuery.parseJSON(data);
                console.log(result);

                if(result.is_success){
                    jQuery('.msger-chat').html(result.html);
                }
                $('.msger-chat').animate({
                    scrollTop: $('.msger-chat').prop('scrollHeight')
                },1500);

                


                }
            });

            
        });

        function getChat(){
            

            let url = 'http://localhost/app_groupchat/chat/server/get_chat.php'
            $.ajax({
                type: "GET",
                url: url,
                success: function(data)
                {
                    let result = jQuery.parseJSON(data);
                console.log(result);

                    if(result.is_success){
                        jQuery('.msger-chat').html(result.html);
                    }
                    $('.msger-chat').animate({
                        scrollTop: $('.msger-chat').prop('scrollHeight')
                    },1500);
                }
            });

            
        }
        

    

});