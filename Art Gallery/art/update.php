<?php
include "connection.php";
$conn=mysql_connect('localhost','root','');
$db=mysql_select_db('art');
$x=$HTTP_GET_VARS['nm'];
$i=0;
foreach($HTTP_GET_VARS['Qty'] as $v)
{
	//mysql_query("update image set item_id='".$item_id."', sub_cat_id='".$sub_cat_id."',image='".$image."',Qty='".$Qty."',Price='".$Price."' where id='".$_GET[item_id]."'");
	mysql_query("update image set Qty=$v where item_id=$x[$i]");
	$i=$i+1;
}




header("location:addtocart.php");
?>