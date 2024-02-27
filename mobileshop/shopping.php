<?php include("slider.php");?>  <div class="content">
   
	  <h2 class="star"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	  <font color="#000000" size="+2" ><center><h2><font color="#663333"><u>Shopping Cart</u></font></h2>
      </br></br>
       
			
	<?php		include("connection.php");
	
	
	$p="select *from order1";
	$res=mysql_query($p) or die("can't select");?>
	<div align="center">
        	 <table width="700px"    cellspacing="15" cellpadding="5"  >
                   	  	<tr>
                        	<th width="167" align="left">Image </th> 
                        	<th width="230" align="center">company name</th> 
                       	  	<th width="62" align="center">Quantity </th> 
                        	<th width="38" align="right">Price </th> 
                        	<th width="41" align="right">Total </th> 
                        	
                      	</tr>
                    	<tr>
						
						
				<?php		
				global $total;
				global $p;
				global $n;
				 $cur=current($_GET['t1']);
	while($rows=mysql_fetch_array($res))
	{	
		 echo "<form name='f1' action='ulogin.php' method='get'>";
				 
		echo "<td><img src='$rows[1]' height=100 widht=100></td>";
        echo "<td>$rows[2]</td>";		//echo "<td align='center'></td>";
		echo "<td align='center'> $cur</td>";
		//echo $cur;?><input type="hidden" name="cur" value="<?php echo $cur;?>"/><?php
		/*$i="insert into bill values('$rows[0]','$rows[2]','$rows[1]','$rows[3]',$cur)";
		mysql_query($i);*/
		echo "<td align='right'>$rows[3]</td> ";
	$to=$cur*$rows[3];
	echo "<td aling='right'>$to</td>";
		echo "</td>";
                echo "<td><a href=dorder.php?path=".$rows[1].">Remove</a></td>";
				$total=$total+$to;
				echo "</tr>";
				$cur=next($_GET['t1']);
				}?>  
				 <tr>
				 <input type="hidden" name="h1" value="<?php echo $total;?>"/>
                       
                            <td align="right"  font-weight:bold"> <b>Total </td>
                            <?php echo "<label name=t1><td align='right'  font-weight:bold'><b><h3>$total </td></label>"?>
                            <td align="right"  font-weight:bold"> </td>
							<td align="right"  font-weight:bold"> </td>
							<td align="right"  font-weight:bold"> </td>
						</tr>
					</table>
                  <center>
                   <?php
				  
				   echo "<input type='submit' value='checkout'/></br></br>";?>
				 
					<!--<p><a href="shopping.php">Proceed to checkout</a></p>-->
                     <p><a href="category.php">Continue shopping</a></p></center>
                   
                	<?php echo"</form>";?>
                    <div class="clr"></div>
  </br>
  
   <?php include("footer.php");?>
    