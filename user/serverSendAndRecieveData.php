<?php 
 $servername = "localhost"; 
 $username = "root"; 
 $password = ""; 
 $databasename = "360_stock_record"; 
function refreshUserTableContents($w,$x,$y,$z){
  // CREATE CONNECTION 
  $conn = mysqli_connect($w,$x,$y,$z); 
  
  // GET CONNECTION ERRORS 
  if (!$conn) { 
      die("Connection failed: " . mysqli_connect_error()); 
  } 
  
  // SQL QUERY 
  $query = "SELECT*  FROM records;"; 
  // FETCHING DATA FROM DATABASE 
  $result = mysqli_query($conn, $query); 
  
  $rows=mysqli_fetch_all($result, MYSQLI_ASSOC);
   echo json_encode($rows);
     
  $conn->close(); 
}
refreshUserTableContents($servername,$username, $password, $databasename);

function getFromDb($w,$x,$y,$z,$query){
  // CREATE CONNECTION 
  $conn = mysqli_connect($w,$x,$y,$z); 
  
  // GET CONNECTION ERRORS 
  if (!$conn) { 
      die("Connection failed: " . mysqli_connect_error()); 
  } 
  // FETCHING DATA FROM DATABASE 
  $result = mysqli_query($conn, $query); 
  
  $rows=mysqli_fetch_all($result, MYSQLI_ASSOC);
   echo json_encode($rows);
     
  $conn->close(); 
}











?>