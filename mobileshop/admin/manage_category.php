
<?php	
	include("conn.php");
	include("header.php");
	?><center><font color="#000000" size="+2">
	</br>
	</br>
	<?php
	$res=mysql_query("select *from cate");?>
<?php
	echo "<table border=2>";
	while($row=mysql_fetch_array($res))
	{
		echo "<tr><td>".$row[0]."</td>";
		echo "<td>".$row[1]."</td>";
		echo "<td>".$row[2]."</td>";

		echo "<td><a href=deletec.php?id=".$row[0]."><input type='Button' value='Delete'></a></font></b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</br></td>";
             }                           
	
echo "</table>";
?>
<center>
</br>
<a href="addcate.php"><input type="submit" name="t1" value="ADD ITEM" /></a>
<div class="clr"></div>
          </div>
    