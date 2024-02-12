<?php
session_start();
if(isSet($_SESSION['valid']))
{
?>
<html>
<head>
<title>Registration Confirmation</title>
</head>
<body background="file:///F|/Images/other/white-bubble.jpg"">
<font color="blue" face="Tahoma" size="5px">

<?php
include "connection.php";
mysql_connect('localhost','root','');
$db = mysql_select_db('art');


$cno = trim($_POST['cno']);

//echo $cno;




if( $cno=="" )
 {
	echo "<script type='text/javascript'>alert('Please fill each field of the form. All fields are mandatory.');</script>";

?>
<script type="text/javascript">
	window.location.href('credit.php');
</script>
<?
}
else
{ 


	$sql = "insert into credit values('".$cno."')";
	//echo $sql; 
	$result = mysql_query($sql);
/*$s1="insert into master(Creditcardno)values('".$cno."')";
echo $s1;
$result = mysql_query($sl);*/
	
	
	if(!$result)
	{
		echo "<center><br><br><br>Sorry.....Your record cannot be added. Please try again.</center>";
	}
	else
	{
		echo "<script type='text/javascript'>alert('Record has been successfully added.'); window.location.href('billing_info.php');</script>";
	}
	}
?>
<script type="text/javascript">
	
</script>

</font>
<a href="file:///F|/index1.php"><img src="file:///F|/buttons/arrow.jpg" border="0" width="40" height="32"></a><br>

</html>
<html>
<head>
<title>Registration Confirmation</title>
</head>
<body background="file:///F|/Images/other/white-bubble.jpg"">
<font color="blue" face="Tahoma" size="5px">

<?php
include "connection.php";
mysql_connect('localhost','root','');
$db = mysql_select_db('art');


$cno = trim($_POST['cno']);

//echo $cno;




if( $cno=="" )
 {
	echo "<script type='text/javascript'>alert('Please fill each field of the form. All fields are mandatory.');</script>";

?>
<script type="text/javascript">
	window.location.href('credit.php');
</script>
<?
}
else
{ 


	$sql = "insert into credit values('".$cno."')";
	//echo $sql; 
	$result = mysql_query($sql);
/*$s1="insert into master(Creditcardno)values('".$cno."')";
echo $s1;
$result = mysql_query($sl);*/
	
	
	if(!$result)
	{
		echo "<center><br><br><br>Sorry.....Your record cannot be added. Please try again.</center>";
	}
	else
	{
		echo "<script type='text/javascript'>alert('Record has been successfully added.'); window.location.href('billing_info.php');</script>";
	}
	}
?>
<script type="text/javascript">
	
</script>

</font>
<a href="file:///F|/index1.php"><img src="file:///F|/buttons/arrow.jpg" border="0" width="40" height="32"></a><br>

</html>
<?php
}
else
	{
		echo "<script language='javascript'>alert('Please you need to Login ')
		</script>";
		echo "<script language='javascript'>window.location.assign('index.php')</script>";
	}

?>

