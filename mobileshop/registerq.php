<?php
include("connection.php");
global $cur;
 global $id;
global $total;
global $un;
global $pri;
global $pronm;
$total=$_GET['h1'];
$cur=$_GET['cur'];
//$id=$_GET['id'];
$un=$_GET['l1'];
$ea=$_GET['e1'];
$m=$_GET['m1'];
$a=$_GET['a1'];
$p=$_GET['p1'];
$c=$_GET['c1'];
$net=$_GET['h1'];
$ne=$_GET['b1'];
$pa=$_GET['password'];
$total=$_GET['h1'];  
$cur=$_GET['cur'];  
$query="insert into userinfo(u_id,u_nm,u_email,u_password,u_mobileno,u_address,u_pincode,u_city) values(null,'$un','$ea','$pa','$m','$a','$p','$c')";
mysql_query($query,$con) or die("can't insert1");
 $q = "SELECT *FROM order1";
	$res = mysql_query($q)or die("Can't Select");
	$rows = mysql_num_rows($res);
	if($rows > 0)
	{
		while($data=mysql_fetch_array($res))
		{
		
		$id = $data[0]; 
		$pronm = $data[1]; 
		$path=$data[2];
		$pri=$data[3];
			//$cur=$data[4];
	$i="insert into bill values($id,'$path','$pronm',$pri,$cur,'$un','$ne')";
		mysql_query($i)or die("can't insert");
		
		
	}
			 

	}

if($ne=="CASE PAYMENT"){
include("submit.php");}else{include("submitc.php");}
?>

