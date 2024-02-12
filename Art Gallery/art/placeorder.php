<?php
session_start();
if(isSet($_SESSION['valid']))
{
?>
<?php
session_start();
$link=mysql_connect("localhost","root","");
$db=mysql_select_db("art");
$uid=$_SESSION['valid'];

$qry="select * from regi where UserName='$uid'";



$dt=date('d-m-y');

$a=mysql_query($qry);

while($b=mysql_fetch_array($a))
{
$unm=$b['UserName'];
$add=$b['Address'];
$city=$b['City'];
$st=$b['State'];
//$cnt=$b['Country'];
$mb=$b['MobileNo'];
}
$r=mysql_query("select * from item_detail");
while($item=mysql_fetch_array($r))
{
	$idno=$item['Idno'];
	$category=$item['Category'];
	$qty=$item['Qty'];
	$pr=$item['Price'];
	
	$z=mysql_query("insert into master values('$dt','$unm','$add','$city','$st','$mb','$idno','$category','$qty','$pr')");
	
}
header("Location:thanks.php");
?>
<?php
}
else
	{
		echo "<script language='javascript'>alert('Please you need to Login ')
		</script>";
		echo "<script language='javascript'>window.location.assign('index.php')</script>";
	}

?>
