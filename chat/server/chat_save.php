<?php 

// print_r($_POST);die;
include ($_SERVER['DOCUMENT_ROOT'].'/app_groupchat/chat/function.php');
$object = new \stdClass();
$object->is_success = false;
$msg = mysqli_real_escape_string($connection,$_POST['message']);
$sender_id = $_POST['sender_id'];

$query = "INSERT INTO chat (`message` ,`sender_id`) VALUES ('$msg' , $sender_id)";

$result = mysqli_query($connection,$query); 

if($result){

    $object->is_success = true;
    $object->msg = "Inserted Successfully";

    ob_start();
     $chatHistory =  getChatHistory();
     include($_SERVER['DOCUMENT_ROOT'].'/app_groupchat/chat/server/chat_history.php');
     $html = ob_get_contents();
     ob_end_clean();  

    
    $object->html = $html;

}

print_r(json_encode($object));
exit;


?>
