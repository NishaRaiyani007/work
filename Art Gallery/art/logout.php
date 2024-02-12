<?php
session_start();
session_destroy();
$link=mysql_connect("localhost","root","");
$db=mysql_select_db("art");
mysql_query("delete from item_detail");
header("Location:index.php");
?>