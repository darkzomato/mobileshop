<?php
 session_start();
 

 $con = mysqli_connect('localhost','root');
 if($con){
     echo"connection done";
 }
 else{
     echo"no connection";
 }

 mysqli_select_db($con,'mobileshop');

 $name = $_POST['user'];
 $pass = $_POST['pswd'];
 

 $q = "select * from customer where c_name = '$name' && password = '$pass'";
 $res = mysqli_query($con,$q);
 $n = mysqli_num_rows($res);

 if($n == 1){
     $_SESSION['username'] = $name;
     header('location:home.php');
 }
 else{
    $msg="wrong  username or password";

     header('location:log.php?msg='.$msg);

 }



?>
