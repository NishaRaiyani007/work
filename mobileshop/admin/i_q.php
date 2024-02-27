<?php
include("header.php");
include("conn.php");
$a=$_REQUEST['t1'];
$b=$_REQUEST['t2'];
$c=$_REQUEST['t3'];
$d=$_REQUEST['t4'];
$e=$_REQUEST['t5'];
$f=$_REQUEST['t6'];
$g=$_REQUEST['t7'];



//$q="insert into product(pro_id,'pro_name','price','pro_cat','pro_image','pro_type') values($a,'$b',$c,'$d','$e','$f');
mysql_query("insert into  `mobile`.`product` (
id,
`c_nm` ,
`category` ,
`image` ,
`price` ,
`description`,
`pro_stock`

 )values(
 '".$a."','".$b."',  '".$d."',  '".$e."',  '".$c."',  '".$f."',  '".$g."')");
 
 echo "</br></br></br></br><font color='black' size=+3>successfully inserted</font>";
?>
<script>
	window.location="manage_product.php";
</script> 