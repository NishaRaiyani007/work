<?php session_start();
include("backoffice\include\db_config.php");
	if(isset($_REQUEST['hidid']))
	{
		$product=$_REQUEST['hiditem'];
		$companyid=$_REQUEST['hidid'];
		$rate=$_REQUEST['hidrate'];
		$userid=$_SESSION['uid'];
		$qry="INSERT INTO cart(productname,rate,productid,userid) values ('$product','$rate','$companyid','$userid')";
		mysql_query($qry);
		header("location:index.php");
	}
?>