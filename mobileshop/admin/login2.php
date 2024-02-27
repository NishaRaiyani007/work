<?php
include("conn.php");
$usernm=$_GET['t1'];
$userpass=$_GET['p1'];
$s="select *from admin";
$res=mysql_query($s)or die("can't select");
while($row=mysql_fetch_array($res))
{
   $u=$row[0];
   $p=$row[1];
}  
//echo "$u1";
//echo "$p1";
if($usernm===$u && $userpass===$p)
{
	include("header.php");
}
else
{
	echo "invalid username and password";
}
?>