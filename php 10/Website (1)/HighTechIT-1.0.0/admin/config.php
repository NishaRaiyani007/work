<?php
error_reporting(0);
// connect to the databse
$servername = "localhost";
$username = "root";
$password = "";
$database = "hight_tech";

//create a connection object
$conn = mysqli_connect($servername, $username, $password, $database);


// die if connection not successful
// if (!$conn) {
//     die("connection failed:" . mysqli_connect_error());
// } else {
//     echo "connection successful <br>";
// }