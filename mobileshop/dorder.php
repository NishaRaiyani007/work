<?php
header("location:shoppingcart.php");
include_once("connection.php");
$con=mysql_connect("localhost","root","") or die("can't connect");

mysql_select_db("mobile") or die("can't select databage");
$k=$_GET['path'];
//echo $k;
$p="delete from order1 where or_path='$k'";
mysql_query($p)or die("can't delete");


?>
