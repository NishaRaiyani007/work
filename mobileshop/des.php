
<?php
	include("slider.php");
?>

</br>



<?php


	$con=mysql_connect("localhost","root","") or die("can't connect");
	mysql_select_db("mobile",$con) or  die("can't select db");
	//$qry="select *from description where id='".$_REQUEST['id']."'";
	$qry="select *from product where id=".$_GET['id'];
	$res=mysql_query($qry) or die("can't select table data");
	//echo "<table><tr>";
	//$i=1;
	//echo "<table border='2'><tr></tr>";
	while($row=mysql_fetch_array($res))
	{
 
echo "<center>";	
echo "<table cellspacing=35";

echo "<tr><td><img src='".$row['image']."' width=190 height=350/></td>";

echo   "<td> $row[5]</td>";
echo "</tr>";
echo"</table>";
echo"</center>";
echo"<center>";
echo "<a href=oinsert.php?path="
 .$row[3]."&c_nm=" .$row[1]."&price=".$row[4]."&id=".$row[0]."><input type='Button' value='Add to Card'></a></font></br> </td>";

echo"</br>";
echo"</br>";


 }

 