<?php include_once("header.php");?>
</br>
</br>
</br>

<font color="#000066">
             <?php
			  $con=mysql_connect("localhost","root","") or die("not connected");
	          mysql_select_db("mobile")or die("not available database");
			 
			  $qry="select   *from product where id<=12 and id>=9";
			  
			 $res= mysql_query($qry)or die("can't insert data");
			 echo "<table>";
			 echo "<tr>";
			

			while($row= mysql_fetch_array($res))
 			{	
		
		
       echo
 "<td><img src='$row[3]' width=185 height=350>
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
  &nbsp;
 &nbsp;
 &nbsp;
 

</br>
 <b>c_nm : </b>$row[1]</br>
 
 <b>model : </b></b>$row[2]</br>
 <b>price  :  </b>$row[4]</br>
 <a href=des.php?path=".$row[3]."&id=".$row[0]."><input type='Button' value='Detail'></font></a></br>
  <font size='2'><a href=oinsert.php?path="
 .$row[3]."&c_nm=" .$row[1]."&price=".$row[4]."&id=".$row[0]."><input type='Button' value='Add to Card'></a></font></br> </td>";
}
	
echo "</table>";
?>
           
            
</body>
</html>
