<?php
session_start();
$server = "localhost";
$user = "root";
$password = "";
$database = "app-groupchat";
$connection = mysqli_connect($server , $user , $password , $database);
?>