<?php
header("location:manage_product.php");
include_once("conn.php");
$con=mysql_connect("localhost","root","") or die("can't connect");

mysql_select_db("mobile") or die("can't select database");
$k=$_GET['id'];
//echo $k;
$p="delete from product where id='$k'";
mysql_query($p)or die("can't delete");


?>