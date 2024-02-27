<?php
	include("header.php");
?>	</br>
</br>

<font color="#000000" size="+1">
<?php	
	include("conn.php");
	$res=mysql_query("select *from userinfo");?>
	
	<?php
	echo "<table border=2>";
	echo "<tr><td>No<td>Name<td>Email<td>Password<td>Mobileno<td>Address<td>PinNo<td>City</td></tr></font>";
	while($row=mysql_fetch_array($res))
	{ 
		echo "<tr><td>".$row[0]."</td>";
		echo "<td>".$row[1]."</td>";
		echo "<td>".$row[2]."</td>";
		echo "<td>".$row[3]."</td>";
		echo "<td>".$row[4]."</td>";
		echo "<td>".$row[5]."</td>";
		echo "<td>".$row[6]."</td>";
		echo "<td>".$row[7]."</td>";?>
		<?php echo "<td><a href=deleteu.php?id=".$row[0]."><input type='Button' value='Delete'></a></font></b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</br></td>";
             }                           
	
echo "</table>";
?>
         