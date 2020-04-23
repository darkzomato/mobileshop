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
 $age = $_POST['age'];
 $pass = $_POST['pswd'];
 $bid = $_POST['bid'];

 if(empty($_POST['user'])){
    $msg="user name required";
     header('location:sign.php?msg='.$msg);
     die();
 }
 if(empty($_POST['age'])){
    $msg="user age required";
    header('location:sign.php?msg='.$msg);
    die();
}
if(empty($_POST['pswd'])){
    $msg="user password required";
    header('location:sign.php?msg='.$msg);
    die();
}
if(empty($_POST['bid'])){
    $msg="user branch id required";
    header('location:sign.php?msg='.$msg);
    die();
}


 $q = "select * from customer where c_name = '$name' ";
 $res = mysqli_query($con,$q);
 $n = mysqli_num_rows($res);

 if($n != 0){
    $msg="username already exist";
    header('location:sign.php?msg='.$msg);

 }
 else{
     $qy = "insert into customer(c_name,age,password,b_id) values ('$name','$age','$pass','$bid')";
     mysqli_query($con,$qy);
     header('location:log.php');
 }



?>
