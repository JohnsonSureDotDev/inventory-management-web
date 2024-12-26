<?php
// going to use above code 
require 'database.php'; 
 
// printing column name above the data 
echo 'ID'.' '.'First Name'.' '.'Last Name'.' '.'GFG Username'.'<br>'; 
 
// sql query to fetch all the data 
$query = "SELECT * FROM `user_info`"; 
// mysql_query will execute the query to fetch data 
if ($is_query_run = mysqli_query($mysqli,$query)) 
{ 
    // echo "Query Executed"; 
    // loop will iterate until all data is fetched 
    while ($query_executed = $is_query_run->fetch_assoc()) 
    { 
        // these four line is for four column 
        echo $query_executed['id'].' '; 
        echo $query_executed['first_name'].' '; 
        echo $query_executed['last_name'].' '; 
        echo $query_executed['gfg_username'].'<br>'; 
    } 
} 
else
{ 
    echo "Error in execution!"; 
} 
?>