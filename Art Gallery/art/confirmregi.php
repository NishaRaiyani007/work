<?php
session_start();
if(isSet($_SESSION['valid']))
{
?>
<html>
<head>
<title>Feedback Confirmation</title>
</head>
<body background="file:///F|/Images/other/white-bubble.jpg"">
<font color="blue" face="Tahoma" size="5px">

<?php
include "connection.php";
mysql_connect('localhost','root','');
$db = mysql_select_db('art');

$rname = trim($_POST['usname']);
$rage=trim($_POST['age']);
$raddress = trim($_POST['add']);
$rcity = trim($_POST['city']);
$rstate = trim($_POST['state']);
$rzipcode = trim($_POST['zipcode']);

$rmobileno =trim($_POST['mobileno']);
$remail =trim( $_POST['email']);
$ruid = trim($_POST['uid']);
$rpword = trim($_POST['pword']);
$rrpword = trim($_POST['rpword']);
echo $rname; 
echo $rage; 
echo $raddress;
echo $rcity;
echo $rstate;
echo $rzipcode;
echo $rmobileno;
echo $remail;
echo $ruid;
echo $rpword;
echo $rrpword;

if($rname=="" ||$rage==""|| $raddress=="" || $rcity=="" || $rstate=="" || $rzipcode=="" || $rmobileno=="" || $remail=="" || $ruid=="" || $rpword=="" ||
$rrpword=="")
{
	echo "<script type='text/javascript'>alert('Please fill each field of the form. All fields are mandatory.');</script>";

?>
<script type="text/javascript">
	window.location.href('regi.php');
</script>
<?
}
else
{ 

echo "hello";
/*	$sql = "insert into regi values('".$rname."','".$raddress."','".$rcity."','".$rstate."',".$rzipcode.",".$rmobileno.",'".$remail."','".$ruid."','".$rpword."','".$rrpword."')";
	$sql = "insert into feedback values('".$rname."','".$_POST['adrs']."','".$rphno."','".$remail."','".$rcomment."')";
	echo $rname; 
echo $raddress +"\n";
echo $rcity+"\n";
echo $rstate+"\n";
echo $rzipcode+"\n";
echo $rmobil"\eno+n";
echo $remail+"\n";
echo $ruid+"\n";
echo $rpword+"\n";
echo $rrpword+"\n";*/
	$sql1 = "insert into regi values('".$rname."','".$rage."','".$raddress."','".$rcity."','".$rstate."',".$rzipcode.",".$rmobileno.",'".$remail."','".$ruid."','".$rpword."','".$rrpword."')";
	
	
	echo $sql1; 
	$result1= mysql_query($sql1);
	$sql2 = "insert into login values('".$rname."','".$rpword."')";
	
	echo $sql2; 
	$result12= mysql_query($sql2);
	if(!$result1)
	{
		echo "<center><br><br><br>Sorry.....Your record cannot be added. Please try again.</center>";
	}
	else
	{
		echo "<script type='text/javascript'>alert('Record has been successfully added.'); window.location.href('index.php');</script>";
	}
	}
?>
<script type="text/javascript">
	
</script>

</font>
<a href="index.php"><img src="file:///F|/buttons/arrow.jpg" border="0" width="40" height="32"></a><br>

</body>
</html>
<?php
}
else
	{
		echo "<script language='javascript'>alert('Please you need to Login ')
		</script>";
		echo "<script language='javascript'>window.location.assign('index.php')</script>";
	}
}
?>



