<?php  
include ($_SERVER['DOCUMENT_ROOT'].'/app_groupchat/connection.php');

function isUserLoggedIn(){


    if(isset($_SESSION['id']) AND !empty($_SESSION['id'])){
        return $_SESSION['id'];
    }
    return false;
}

function redirect($url=false){
    if($url){
        header('Location:'.$url);
        exit;

    }
}

function getChatHistory(){

    global $connection;
    
    $query = 'SELECT `app_groupchat`.`first_name` , `app_groupchat`.`last_name` , `app_groupchat`.`image` , `app_groupchat`.`created_date` , `chat`.`sender_id`,`chat`.`message` FROM app_groupchat INNER JOIN chat ON app_groupchat.id = chat.sender_id';
    $result = mysqli_query($connection,$query);
    return $result;
}

?>