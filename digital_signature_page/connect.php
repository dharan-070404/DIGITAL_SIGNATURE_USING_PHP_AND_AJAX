<?php
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "db_web_cert";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully today";
//echo date("l jS \of F Y h:i:s A");
 
?>
