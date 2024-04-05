<?php
include ('../../connection.php');
session_destroy();

header('Location:http://localhost/app_groupchat/user/login.php');
exit;
?>