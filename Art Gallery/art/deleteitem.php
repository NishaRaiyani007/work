<?php
$link=mysql_connect('localhost','root','');
$db=mysql_select_db('art');
//$d=$HTTP_GET_VARS['c1'];
$x=$_GET['x'];
$q=mysql_query("delete from item_detail where item_id='$x'");
header('Location:viewcart.php');
?> 