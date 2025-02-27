<?php 
 $servername = "localhost"; 
 $username = "root"; 
 $password = ""; 
 $databasename = "360_stock_record"; 
$conn=new mysqli($servername,$username, $password, $databasename);
if($conn->connect_error){
  echo "conection error";
}
?>