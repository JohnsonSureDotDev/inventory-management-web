<?php
include 'connect.php';
include 'index.php';

if(isset($_POST['login'])){


     $userName=$_POST['userName'];
    $password=$_POST['password'];
/*       $password=md5($password); */  

$checkUser="SELECT * FROM logins WHERE username='$userName' AND pwd='$password';";
$resul1=$conn->query($checkUser);
if($resul1->num_rows>0){
session_start();
$row=$resul1->fetch_assoc();
/* $_SESSION['user']=$row['username']; 
exit();*/
header("Location: main.php");
}
else{
   $invalidCreds="incorrect username or password";
    header("Location: index.php");
   } } ?>