<html>
<head>
<title>Feedback Confirmation</title>
</head>
<body background="file:///F|/Images/other/white-bubble.jpg">
<font color="blue" face="Tahoma" size="5px">

<?php
include "connection.php";
mysql_connect('localhost','root','');
$db = mysql_select_db('art');

$rname = trim($_POST['txtname']);
//$radd = $_POST['ad'];
$rphno =trim($_POST['txtphone']);
$remail =trim( $_POST['txtemail']);
$rcomment = trim($_POST['txtcomment']);
echo $_POST['ad'];
echo $rname;
//echo $radd;
echo $phno;
echo $remail;
echo $rcomment;
if($rname=="" || $remail=="" || $rphno=="" || $rcomment=="")
 {
	echo "<script type='text/javascript'>alert('Please fill each field of the form. All fields are mandatory.');</script>";

?>
<script type="text/javascript">
	window.location.href('contactus.php');
</script>
<?
}
else
{ 
	

	$sql = "insert into feedback values('".$rname."','".$_POST['adrs']."','".$rphno."','".$remail."','".$rcomment."')";
	echo $sql; 
	$result = mysql_query($sql);
	if(!$result)
	{
		echo "<center><br><br><br>Sorry.....Your record cannot be added. Please try again.</center>";
	}
	else
	{
		echo "<script type='text/javascript'>alert('Record has been successfully added.'); window.location.href('contactus.php');</script>";
	}
}

?>
<script type="text/javascript">
	
</script>

</font>
<a href="file:///F|/index.php"><img src="file:///F|/buttons/arrow.jpg" border="0" width="40" height="32"></a><br>

</body>
</html>
