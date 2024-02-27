<?php
	include("header.php");
?>	
</br>
</br>
</br>

<font color="#000000" size="+2">

<?php
	include("conn.php");
	$res=mysql_query("select *from feedback");?>
	
	<?php
	echo "<table border=2>";
	echo "<tr><td>No<td>Name<td>Address<td>Mobileno<td>Email<td>Message</td></tr></font>";
	while($row=mysql_fetch_array($res))
	{ 
		echo "<tr><td>".$row[0]."</td>";
		echo "<td>".$row[1]."</td>";
		echo "<td>".$row[2]."</td>";
		echo "<td>".$row[3]."</td>";
		echo "<td>".$row[4]."</td>";
		echo "<td>".$row[5]."</td>";?>
		<?php echo "<td><a href=deletef.php?id=".$row[0]."><input type='Button' value='Delete'></a></font></b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</br></td>";
             }                           
	
echo "</table>";
?>