<?php

$servername = "localhost"; 
 $username = "root"; 
 $password = ""; 
 $databasename = "360_stock_record"; 


function updateDb($w,$x,$y,$z){
  // Create connection
  $conn = mysqli_connect($w,$x,$y,$z);

  // Check connection
  if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }
  $sql = $_POST['query'];
  if ($conn->multi_query($sql) === TRUE) {
    echo "New record created successfully";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }
  
  mysqli_close($conn);
}
updateDb($servername,$username, $password, $databasename)

?>