<?php
	include("header.php");
?>	
</br>
</br>
<font color="#000000" size="+2">
<?php	

	include("conn.php");
	$res=mysql_query("select *from bill");?>
	
	<?php
	echo "<table border=2>";
	echo "<tr><td>No<td>ProductNmae<td>Images<td>Price<td>Quantity<td>User<td>Delivery Mode</tr></font>";
	while($row=mysql_fetch_array($res))
	{ 
		echo "<tr><td>".$row[0]."</td>";
			echo "<td>".$row[1]."</td>";
		echo "<td><img src='".$row[2]."' height='180' width='100'></td>";
	
		echo "<td>".$row[3]."</td>";
		echo "<td>".$row[4]."</td>";
		echo "<td>".$row[5]."</td>";
		echo "<td>".$row[6]."</td>";
	?>
		<?php echo "<td><a href=deleteb.php?id=".$row[0]."><input type='Button' value='Delete'></a></font></b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</br></td>";
             }                           
	
echo "</table>";
?>
