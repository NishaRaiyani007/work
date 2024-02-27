<?php

    include("connection.php");
     $prid=$_GET['id'];
    $prnm=$_GET['c_nm'];
	$pr=$_GET['price'];
	$i=$_GET['path'];
	
	
		$q="insert into order1 values($prid,'$i','$prnm',$pr)";
	$c=mysql_query($q) or die("can't insert");
	
	
?><?php include("shoppingcart.php");?>
