<?php
	include("header.php");
?>	
</br>
</br>
</br>
</br>
<?php	
	include("conn.php");
	$res=mysql_query("select *from product");
	echo "<font size='+1' color='black'>";
	
	echo "<table border=2>";
	while($row=mysql_fetch_array($res))
	{
		echo "<tr><td>".$row[0]."</td>";
		echo "<td>".$row[1]."</td>";
		echo "<td>".$row[2]."</td>";
		echo "<td><img src=' ".$row[3]."' height='200' width='120'></td>";
		
		echo "<td>".$row[4]."</td>";
		echo "<td>".$row[5]."</td>";
		echo "<td>".$row[6]."</td>";?>
		<?php echo "<td><a href=u.php?path=".$row[3]."&category=".$row[2]."&price=".$row[4]."&c_nm=".$row[1]."&id=".$row[0]."&stock=".$row[6]."><input type='Button' value='Edit'><a href=delete.php?id=".$row[0]."><input type='Button' value='Delete'></a></font></b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</br></td>";
             }                           
echo	"</font>";
echo "</table></br></br>";
?>

<center><a href="i.php"><font color="#000000" size="+5"><b>Add item</b></font></a></center></br></br></br></br></br>

<div class="clr"></div>
          </div>
                </h2>
       
      
     
          