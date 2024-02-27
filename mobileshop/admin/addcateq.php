<?php include("conn.php");
$i=$_POST['name'];
$ii=$_POST['name1'];
//echo $i;
$c="insert into cate values (null,'$i','$ii')";
$v=mysql_query($c)or die("can't insert"); 
?>
<script>
	window.location="manage_category.php";
</script> 