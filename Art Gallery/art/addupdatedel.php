<?php 
ob_start();
session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="file:///F|/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function fun(var1,var2,var3,var4,var5)
	{	//alert(var2);
		myurl = 'addupdatedel.php?uid=';
		//myurl += document.getElementById(var1).value;
		myurl += '&item_id='+document.getElementById(var1).value;
		myurl += '&sub_cat_id='+document.getElementById(var2).value;
				 
		myurl += '&image='+document.getElementById(var3).value;		 
		myurl += '&Qty='+document.getElementById(var4).value;
		myurl += '&Price='+document.getElementById(var5).value;	
		
		myurl+='&update=yes';
		
		window.location=myurl;
		//alert(myurl);
		//alert(document.getElementById(var3).value);
	}
</script>

<title>Art Gallery</title>
</head>

<body bgcolor="#FF9933">
<body onLoad="ft()">
	<center>
	<table width="950" height="341" border="0" id="t" align="center" cellspacing="0" background="../../image/image/Admin_Back.jpg">
<tr>
                <td colspan="2" width="950" height="109">
              <div align="center"></div></td>
</tr>
           <tr>
             <td height="222" align="center">
			   <center>
  <div id="main"><h3>
  </div>
</center>
             
<div id="container">
	<div id="header">
	 <!-- <p>&nbsp;</p>
	  <p>&nbsp;</p>-->
	</div>
	<div id="border">
		<div id="main">
               
				<center>

<div class="rc1"></div>
<div id="headingbg"><h1>Admin...</h1> </div>
<div class="rc2"></div>
<div id="main"><h3>

<!--<a href="admin.php?in=ins">insert records in gallery</a>
-->


<?php


$con=mysql_connect("localhost","root");
mysql_select_db("art",$con);



?>
<?php	

//$in=$_GET['in'];
//echo $in;
// <a href='admin.php?in=ins'>insert record in gallery</a>
echo "<center >"; 
echo "Add New Art";
echo "<table border='1' width='50'><form><tr><td>Item_id<td><input type='text' name='item_id'><td>Sub_cat_id<td><input type='text' name='sub_cat_id'><tr><td>Image<td><input type='text' name='image'><td>Price<td><input type='text' name='Price'><tr><td colspan='4' align='center'><input type='submit' value='submit'></td></tr></form></table>";
echo "</center>";

//if(!isset($_SESSION['user']))
$con=mysql_connect("localhost","root");
mysql_select_db("art",$con);


if(isset($_GET['Price']))
{
//echo "i got it";

$item_id=$_GET['item_id'];
$sub_cat_id=$_GET['sub_cat_id'];

$image=$_GET['image'];
$Qty=$_GET['Qty'];
$Price=$_GET['Price'];


$inser="insert into image (item_id,sub_cat_id,image,Qty,Price) values('".$item_id."','".$sub_cat_id."','".$image."','".$Qty."','".$Price."')";
mysql_query($inser,$con);
//echo "success";

}


if(!isset($_GET['lmt']))
{
	$lmt=0;
}
else
{
	$lmt=$_GET['lmt'];
}


$insert="select * from image limit $lmt,9";
//$insert="select * from image where sub_cat_id='".$_GET[sub_cat_id]."'";
$Rec=mysql_query($insert);
echo "<form action='addupdatedel.php' method='get'>";
echo "<table border='3' bordercolor='#69CCD1'>
<tr><th>Image</th><th>Item_id</th><th>Sub_cat_id</th><th>Image</th><th>Price</TH><th>Update</th><th>Delete</th>";


	echo "<tr>";
//	$Counter=1;
	while($arrRec=mysql_fetch_assoc($Rec))
		{
		echo "<td><img src='images/".$arrRec['Image']."' height='80px' width='80px' border=0></td>";
		echo "<td><input type='text' id='".$arrRec['item_id']."i' name='item_id'  size='4' value='".$arrRec['item_id']."'> </td>";
		echo "<td><input type='text' id='".$arrRec['item_id']."c'  name='sub_cat_id' size='15' value='".$arrRec['sub_cat_id']."'> </td>";
		
		echo "<td><input type='text' id='".$arrRec['item_id']."p' name='image' size='20' value='".$arrRec['Image']."'> </td>";
		//echo "<td><input type='text' id='".$arrRec['item_id']."q' name='Qty' size='20' value='".$arrRec['']."'> </td>";
		echo "<td><input type='text' id='".$arrRec['item_id']."pr' name='Price' size='4' value='".$arrRec['Price']."'> </td>";
		
	
			
		
//		echo "<td><input type='button' value='update' name='uid' onclick='></td>";
	?>	
		<td><a href="#" onclick="fun('<? echo $arrRec['item_id']."i"; ?>','<? echo $arrRec['item_id']."c"; ?>','<? echo $arrRec['item_id']."p"; ?>','<? echo $arrRec['item_id']."q"; ?>','<? echo $arrRec['item_id']."pr"; ?>')" style='cursor:hand'>Update</a></td>
		
	<?php	
	
		//echo "<td><a href='addupdatedel.php?upd=$arrRec[item_id]'>Update</a></td>";
		echo "<td><a href='addupdatedel.php?did=$arrRec[item_id]'>Delete</a></td></tr>";
		
		}
		
		
		
	
		
echo "</table>";
echo "</form>";



if(!isset($_GET['trec']))
	{
		$insert1="select * from image";
		$Rec1=mysql_query($insert1);
		$TotalRecords=ceil(mysql_num_rows($Rec1)/9);
	}
	else
	{
		$TotalRecords=$_GET['trec'];
	}
		$limit=0;
	for($intcounter=1;$intcounter<=$TotalRecords;$intcounter++)
	{
			echo "<a href='addupdatedel.php?lmt=$limit&trec=$TotalRecords'>".$intcounter."</a> ";
			$limit=$limit+9;
	}







if(isset($_GET['did']))
	{
	mysql_query("delete from image where item_id='".$_GET['did']."'");
	/*echo "delete from image where id='".$_GET['Idno']."'";*/
	header("location:addupdatedel.php");
	}

//$a=$_GET['uid'];
if(isset($_GET['item_id']))
	{
	

//mysql_query("update gallery set category='".$category."',pname='".$pname."',image='".$img."',price='".$price."' where pid='".$_GET['uid']."'");

$sub_cat_id=$_GET['sub_cat_id'];

$image=$_GET['image'];
$qty=$_GET['Qty'];
$price=$_GET['Price'];
$item_id=$_GET['item_id'];

echo $sub_cat_id;
echo $image;
echo $Qty;
echo $Price;
echo $item_id;

/*if(isset($_GET['upd']))
	{
	mysql_query("update image set item_id='".$item_id."', sub_cat_id='".$sub_cat_id."',image='".$image."',Qty='".$Qty."',Price='".$Price."' where item_id='".$_GET['did']."'");

	//echo "delete from image where id='".$_GET['Idno']."'";
	header("location:addupdatedel.php");
	}
*/

mysql_query("update image set item_id='".$item_id."', sub_cat_id='".$sub_cat_id."',image='".$image."',Qty='".$Qty."',Price='".$Price."' where id='".$item_id."'");


//echo "update gallery set category='".$cat."',pname='".$pn."',image='".$img."',price=".$pri." where pid=".uid;
if(mysql_error()){

	echo mysql_error();
}
else{
	header("location:admin.php");
}


	}
	

?>


</div>

</div>
</div>


<?php
echo $item_id;
echo $sub_cat_id;

echo $image;
echo $Qty;
echo $Price;


?>
</center>             
               
</div>

</div>
</div>

<div id="footer">
		<div id="copyright">
			<span>© Copyright Angelgreetings.com, 2006.<br />
			 All rights reserved.</span> 
		</div>
		
	        		   
        </p>
	</div>	
	<div id="footerend"></div>
</div>
</body>
</html>