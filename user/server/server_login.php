<?php

include ($_SERVER['DOCUMENT_ROOT'].'/app_groupchat/connection.php');
$required_fields = ['email','password'];
$error = [];


foreach($required_fields as $key => $value){

    if(isset($_POST[$value]) AND empty($_POST[$value])){

     $error[] = "This field required <nsbp>".$value;

    }

 }
    $email = $_POST['email'];
    $password = $_POST['password'];


    if(count($error) ==0){

        $email = $_POST['email'];
        $password = $_POST['password'];
       

    $query = "SELECT * FROM app_groupchat WHERE email = '$email' AND password = '$password'";
    $result = mysqli_query($connection,$query);

    $count =  mysqli_num_rows($result);


    if($count > 0){
        while($row = mysqli_fetch_assoc($result)){

            $_SESSION['id'] = $row['id'];
            $_SESSION['name'] = $row['first_name'].' '.$row['last_name'];
            header('Location:http://localhost/app_groupchat/chat/chat.php');
            exit;
        }
    
    }else{
        $_SESSION['error'] = "Invalid !";
        header('Location:http://localhost/app_groupchat/user/login.php');
        exit;
     }
    } else{
        $_SESSION['error'] = $error;
     }
  
   header('Location:http://localhost/app_groupchat/user/login.php');
   exit;
?>