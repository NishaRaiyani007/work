<?php
header("location:manage_customer.php");
include_once("conn.php");
$con=mysql_connect("localhost","root","") or die("can't connect");

mysql_select_db("mobile") or die("can't select databage");
$k=$_GET['id'];
//echo $k;
$p="delete from userinfo where u_id='$k'";
mysql_query($p)or die("can't delete");


?>