

<?php include("connection.php");
header("location:index.php");
$n=$_GET['l1'];
$a=$_GET['a1'];
$m=$_GET['m1'];
$e=$_GET['e1'];
$t=$_GET['text'];

$sql="insert into feedback values(null,'$n','$a','$m','$e','$t')";
$c=mysql_query($sql)or die("can't insert");
	
?>