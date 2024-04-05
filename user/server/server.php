<?php

    include('../../connection.php');
    $required_fields = ['first_name' , 'last_name' , 'email' , 'password' , 'contact'];
    $error = [];

    foreach($required_fields as $key => $value){
        if(!isset($_POST[$value]) || empty($_POST[$value])){
            $error[] = "This field required <nsbp>".$value;
        }
      
    }

    $unique_img_name = '';
    if(count($error) ==0){

        if(isset($_FILES['image']) && !empty($image_name=$_FILES['image']['name'])){

            $image_temp_name = $_FILES['image']['tmp_name'];
            $allowed_extension = ['jpeg' , 'png' , 'jpg'];
        
            $path = pathinfo($image_name);

            $basename = $path['basename'];
            
            $extension = $path['extension'];

            if(in_array($extension,$allowed_extension)){
            
                $unique_img_name = time().'.'.$extension;
                

                $destination = '../uploads/'.$unique_img_name ;
                $is_uploaded = move_uploaded_file($image_temp_name,$destination);

                if($is_uploaded==true){ 

                    $_SESSION['success'] = "Image Uploaded";

                }
 
            } else{
                $error[] = "Invalid Image";
                $_SESSION['error'] = "Invalid Image";
                
            }

    }
    if(count($error) ==0){
        $fname = $_POST['first_name'];
        $lname = $_POST['last_name'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $contact = $_POST['contact'];


        $query = "INSERT INTO app_groupchat ( `first_name`,`last_name`,`email`,`password`,`contact`,`image`) VALUES ('$fname','$lname' ,'$email' , '$password' , '$contact','$unique_img_name' )";
        $result = mysqli_query($connection,$query);


        $_SESSION['success'] = 'Form has been Submitted Sucessfully !';


    }
}
else{
    $_SESSION['error'] = $error;
}

 header('Location: http://localhost/app_groupchat/user/registration.php');
 exit;
?>
