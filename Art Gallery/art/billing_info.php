<?php
session_start();
if(isSet($_SESSION['valid']))
{
?>
<?php
session_start();
if(isset($_SESSION['valid']))
{
?>
<font color="#CC0066">Thank You</font>
<?php	$us=$_SESSION['valid'];
	
	$link=mysql_connect('localhost','root','');
	$db=mysql_select_db('art');
	$qt= "select * from regi where UserName='$us'";
	$row=mysql_query($qt);
	$d=mysql_fetch_array($row);
	
	$unm= $d['UserName'];
	$add = $d['Address'];
	$city = $d[3];
	$state = $d[4];
	//$coun = $d[5];
	$mno = $d[6];
	echo $us;
	
	
}
else
{


}

?>
<html>
<head>
<title>Art Gallery</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FF9933" alink="#0000FF" vlink="#0000FF">

<center>
<form name='f1' action='placeorder.php' method='POST'>
<table width="100%">
<tr>
<?php
echo"<font size='5' color='#990000'>";

$dt=date('d-m-y');
echo $dt;
echo"</font>";
?>
<tr>
<td colspan="2" align="center"><font face="Monotype corsiva" size=8 color="#CC0000"><b><u>Art Gallery</u></b></font></td></tr>
<tr>

   <td colspan="2" align="center"><font face="Monotype corsiva" size=8 color="#CC0000"><b><u>Buyer Information</u></b></font></td>
</tr>
<tr><td colspan="2"><img src="images/menuhover.jpg" width=1400 height=2></td></tr>


<td align="center">
<!--<table>
<tr align="left"><td><font color="#800000" size="5">Name:</font><td><font color="#800000" size="5"><?php echo $d['UserName'];?></font>
<tr align="left"><td><font color="#800000" size="5">Address:</font><td><font color="#800000" size="5"><?PHP echo $d['Address']; ?></font>
<tr align="left"><td><font color="#800000" size="5">City :</font><td><font color="#800000" size="5"><?php echo $d[3]?></font>
<tr align="left"><td><font color="#800000" size="5">State :</font><td><font color="#800000" size="5"><?php echo $d[4]?></font>
<tr align="left"><td><font color="#800000" size="5" >Country :</font><td><font color="#800000" size="5">?php echo $d[5] ?></font>
 <tr align="left"><td><font color="#800000" size="5">Mobile No :<td></font><font color="#800000" size="5"><?php echo $d[6] ?></font>
<tr align="left"><td>Credit Card No :<td> echo $d[14]?> 
</table>-->
<?php

 if(isset($_POST['h1']))
{
$idno=$_POST['item_id'];
//$itno=$_POST['itno'];
$category=$_POST['sub_cat_id'];

$qty=$_POST['Qty'];
$price=$_POST['Price'];


$tot=$qty*$price;
 

$conn=mysql_connect("localhost","root");
if(!$conn)
{
die('could not connect:'.mysql_error());
}
mysql_select_db("art",$conn);
$result=mysql_query("insert into item_detail values('$item_id','$sub_cat_id','$qty','$price','$tot')");


//$final=$tot++;
//echo "hello";
unset($_POST['h1']);
}
?>

<html>

<body background="img/I (16).jpg" bgcolor="#FFA717"><bgsound src="music.mp3" loop="-1">
</body></html>

<font size=8 face='Monotype Corsiva' ><center>Bill</center></font><br><br><br>
<center>
<!--<form name=f1 action='' method=GET> -->

<table border=0 width=70% bgcolor='FFA717'>
<tr bgcolor="#990000"> 

<!--<th><a href='deletecart.phval=1'><img src="images/redshd.gif" height="30" width="30"></a> -->
<th>Item_id<th>Sub_cat_id<th>Qty<th>Price<th>Total</tr>
<?php


//echo "<tr><td>".$_POST['srno']."</td><td>".$_POST['itno']."</td><td>".$_POST['qty']."</td><td>".$_POST['price']."</td></tr>";

$link=mysql_connect('localhost','root','');
$db=mysql_select_db('art');

/*if($_POST['qty']=="")
{
	echo  "<script language='javascript'>alert('Please Enter Qty ')</script>";
	echo "<script language='javascript'>window.location.assign('purchase.php')</script>"; 
}*/
$rows=mysql_query("select * from item_detail order by item_id");
$i=0;
$final=0;
//$tot=0;

while($data=mysql_fetch_array($rows))
{

	echo "<tr align='center' bgcolor='red'>";
	//echo "<td><a href='deletecart.php?id=$data[Srno]'><img src='images/b_drop.png'></a></td>";
	echo "<td><font face='Arial' size=3>$data[item_id]</td>";
	echo "<td><font face='Arial' size=3>$data[sub_cat_id]</td>";
	echo "<td><font face='Arial' size=3>$data[Qty]</td>";
//	echo "<td><font face='Arial' size=3> size=6>";
	//$q=$data['Qty'];
//	echo "<input type='hidden' value=$data[Srno] name='nm[]'>";
	echo "<td><font face='Arial' size=3>$data[Price]</td>";
	//$p=$data['Price'];
	
//	echo "<td><font face='Arial' size=3 align='right'> =&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp".($data['qty']*$data['price']);
	//$tot=$tot+($data['qty']*$data['price']);
	//$ans=$q*$p;
	//echo $ans;
	echo "<td><font face='Arial' size=3>$data[Grandtotal]</td>";
	echo "</tr>";
	$final=$final+$data[Grandtotal];
	$i++;
}



?>
</TR>
<tr></tr>
<tr>

<td colspan='4'><font size='3'><b>No. Of Item: <?php echo $i ?></td>
 <td><font size='3'>Grand Total : </td>
<td><font size='3'><b>=<?php echo $final ?></td> 
</tr>


<tr><td> </td></tr>
<tr><td colspan="7"><img src="images/menuhover.jpg" width="980" height="2"> </td></tr> 

</table>



<table border=0 width=50%>
<tr align="center">
	
	
<td><!--<a href = "porder1.php? --><!--&fname=?php echo $fname; ?>&add=?php echo $add; ?>&city=?php echo $city; ?>&state=?php echo $state; ?> &coun=?php echo $coun; ?>&mno=?php echo $mno; ?>&srno=?php echo $Srno; ?>&itno=?php echo $Itemno; ?>&qty=?php echo $Qty; ?>&price=?php echo $Price; ?>"><!--<img src="img/d1.JPG" height="35" width="35"></a> --></td></td>
<!--<td><a href="temp1.php?mnucat1=?php ec -ho $_GET['x'];?>"><img src="img/back.jpg" width="40" height="40"></a></td>
 --></tr>


<tr align="center">
<td><font face="Monotype Corsiva" size=7 color="#800000"><b><a href="placeorder.php">Place Order</a></b></font>
<td><!--<a href=".php"> --><!--<font face="Monotype Corsiva" size=7 color="#800000"><b>Back</b></font></a> -->

</tr>
</table>
<input type="hidden" name="tot" value="<? echo $final ?>">
</form>
</div>
<html>
<body background="img/I (16).jpg">

</body></html>
<?php
}
else
	{
		echo "<script language='javascript'>alert('Please you need to Login ')
		</script>";
		echo "<script language='javascript'>window.location.assign('index.php')</script>";
	}

?>


