


<?php
include("connection.php");
global $total;
global $cur;
global $ne;
global $unm;
$unm=$_GET['l1'];
$ne=$_GET['b1'];
//$pa=$_GET['password'];
$total=$_GET['h1'];
$cur=$_GET['cur']; 

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
		$i="insert into bill values('$id','$path','$pronm',$pri,$cur,'$unm','$ne')";
		mysql_query($i)or die("can't insert");
		
		
	}	
	 $p = "SELECT *FROM product where id='$id'";
	$res = mysql_query($p)or die("Can't Select");
	$rows = mysql_num_rows($res);
	if($rows > 0)
	{
		while($data=mysql_fetch_array($res))
		{
		
		$c = $data[6]; 
		}
		echo $c;
	
$a=$c-$cur;
echo $a;
$s="update product set pro_stock=$a where id='$id'";

mysql_query($s)or die("can't update");
}
	}
	

if($ne=="CASE PAYMENT"){
include("submit.php");}else{include("submitc.php");}
?>
