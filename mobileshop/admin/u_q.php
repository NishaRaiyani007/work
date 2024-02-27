<?php
include("header.php");
//include("u_ladies.php");
include("conn.php");
?>
<?php
$p=$_GET['p1'];
//$a=$_POST[t1];
$b=$_GET['p2'];
$c=$_GET['p3'];
mysql_query("update product set $b='$c' where id=$p");
echo "</br></br><font color='black' size=2>succesfully update</font>";
?>
<script>
	window.location="manage_product.php";
</script> 