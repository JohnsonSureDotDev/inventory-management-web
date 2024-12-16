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

 
function updateDb($w,$x,$y,$z){
  // Create connection
  $conn = mysqli_connect($w,$x,$y,$z);

  // Check connection
  if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }
  
  $sql = "INSERT INTO user_info (first_name, last_name, gfg_username)
  VALUES ('John', 'Doe', 'john@example.com');";
  $sql .= "INSERT INTO user_info (first_name, last_name, gfg_username)
  VALUES ('John', 'Doe', 'john@example.com');";
  $sql .= "INSERT INTO user_info (first_name, last_name, gfg_username)
  VALUES ('Mary', 'Moe', 'mary@example.com');";
  $sql .= "INSERT INTO user_info (first_name, last_name, gfg_username)
  VALUES ('Julie', 'Dooley', 'julie@example.com')";
  
  if ($conn->multi_query($sql) === TRUE) {
    echo "New record created successfully";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }
  
  mysqli_close($conn);
}
function getFromDb($w,$x,$y,$z){
$name=$_POST['name'];
echo $name; 
}









?>