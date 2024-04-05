<?php
include ('./function.php');
// include ($_SERVER['DOCUMENT_ROOT'].'/app_groupchat/chat/function.php');

if(!isUserLoggedIn()){
  redirect('http://localhost/app_groupchat/user/login.php');
}
$id = $_SESSION['id'];
// echo $id;die;
$chatHistory = getChatHistory(); 



?>
<!DOCTYPE html>
<html>
<head>
  <?php include ('./partial/head.php'); ?>

</head>
<body> 


<section class="msger">
  <?php  include ('./partial/header.php');?>

  <main class="msger-chat">
   
  <?php foreach($chatHistory as $key=> $value){
    
    $createdTime = date('H:i',strtotime($value['created_date']));
    
    ?>
      
<?php if($value['sender_id'] != $id){
  // print_r($value);?>
    <div class="msg left-msg">
      <div
        class="msg-img"
       style="background-image: url(https://image.flaticon.com/icons/svg/327/327779.svg)" -->
       <img width="70" height="80" src= "../user/uploads/<?php echo $value['image']; ?>"/>

      </div>

      <div class="msg-bubble">
        <div class="msg-info">
          <div class="msg-info-name"><?php echo $value['first_name'].' '.$value['last_name']?></div>
          <div class="msg-info-time"><?php echo $createdTime; ?></div>
        </div>

        <div class="msg-text">
          <?php echo $value['message'];?>
        </div>
      </div>
    </div>
    <?php }else{ ?>

    <div class="msg right-msg">
      <div
       class="msg-img"
       style="background-image: url(https://image.flaticon.com/icons/svg/145/145867.svg)" -->
       <img width="70" height="80" src= "../user/uploads/<?php echo $value['image']; ?>"/>
      </div>


      <div class="msg-bubble">
        <div class="msg-info">
          <div class="msg-info-name"><?php echo $value['first_name'].' '.$value['last_name']?></div>
          <div class="msg-info-time"><?php echo $createdTime; ?></div>
        </div>

        <div class="msg-text">
        <?php echo $value['message'];?>
        </div>
      </div>
    </div>
<?php }}?>
  </main>

  <form class="msger-inputarea" id="saveChat">
    <input type="text"  name="message" id="messageInput" class="msger-input" value="" placeholder="Enter your message..."/>
    <input type="hidden" name="sender_id" id ="sender_id" value ="<?php echo $id; ?>">
    <button type="submit" class="msger-send-btn">Send</button>
  </form>
</section>
<?php include ('./partial/footer.php');?>
</body>
</html>