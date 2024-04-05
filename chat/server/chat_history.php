<?php 
 $id = $_SESSION['id'];
  foreach($chatHistory as $key=> $value){
    
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