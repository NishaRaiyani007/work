<?php
session_start();
if(isSet($_SESSION['valid']))
{
?>
 <?php
if(isset($_POST['h1']))
{
$item_id=$_POST['item_id'];
$sub_cat_id=$_POST['sub_cat_id'];
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

<body background="../layout/img/I (16).jpg" bgcolor="#FF9933"><bgsound src="../layout/music.mp3" loop="-1">
</body></html>

<font size=6 face='Monotype Corsiva' ><center>Shopping Cart</center></font><br><br><br>
<center>
<form name=f1 action='' method=GET>
<table border=0 width=50%>


<!--<th><a href='deletecart.phval=1'><img src="images/redshd.gif" height="30" width="30"></a> -->
<th></th><th>Item_id<th>Sub_cat_id<th>Qty<th>Price<th>Total</tr>
<?php


//echo "<tr><td>".$_POST['srno']."</td><td>".$_POST['itno']."</td><td>".$_POST['qty']."</td><td>".$_POST['price']."</td></tr>";

$link=mysql_connect('localhost','root','');
$db=mysql_select_db('art');
$rows=mysql_query("select * from item_detail order by item_id");
$i=0;
$final=0;
//$tot=0;

while($data=mysql_fetch_array($rows))
{

	echo "<tr align='center' >";
	?>
		<td><a href="deleteitem.php?x=<?php echo $data["item_id"] ?>">DELETE</a></td><?php
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
	$final=$final+$data["Grandtotal"];
	$i++;
}



?>
</TR>
<tr></tr>
<tr>

<td colspan='4'><font size='3'><b>No. Of Item: <?php echo $i ?></td>
<td colspan='2'><font size='3'><b>Grand Total : </td>
<td><font size='3'><b>=<?php echo $final ?></td> 
</tr>


<tr><td> </td></tr>
<tr><td colspan="7"><img src="../layout/images/menuhover.jpg" width="600" height="2"> </td></tr> 
</table>

<table>

 <tr><td><a href="gallery.php"><font size="5">CONTINUE..</font></a></td>
 
 <td>

<a href="../art/credit1.php"><font size="5">BUY NOW..</font></a></td>
<!--td><a href="../antique/logout.php"><font size="5">LOGOFF</font></a></td> -->
</tr>
</table>
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
