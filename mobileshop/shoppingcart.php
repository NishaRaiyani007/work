<?php include("slider.php");?>  <div class="content">
   
	  <h2 class="star"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	  <font color="#000000" size="+2" ><center><h2><font color="#663333"><u>Shopping Cart</u></font></h2>
      </br>
	<?php		include("connection.php");
	global $total;
	
	$p="select *from order1";
	$res=mysql_query($p) or die("can't select");?>
	<div align="center">
        	<table width="700px"    cellspacing="15" cellpadding="5"  >
                   	  	<tr>
                        	<th width="220" align="left">Image </th> 
                        	<th width="240" align="left">company name</th> 
                       	  	<th width="150" align="center">Quantity </th> 
                        	<th width="30" align="right">Price </th> 
                        
                        	
                      	</tr>
                    	<tr>
						</tr>
				<?php		
	while($rows=mysql_fetch_array($res))
	{	
        echo "<form name='f1' action='shopping.php' method='get'>";
		echo "<td><img src='$rows[1]' height=150 widht=200></td>";?>
	
		<?php
        echo "<td>$rows[2]</td>";
		echo "<td align='center'><input type='text' name='t1[]' value='1' style='width: 20px; text-align: right'/></td>";
		echo "<td align='right'>$rows[3]</td> ";
        echo "<td><a href=dorder.php?path=".$rows[1].">Remove</a></td>";
		$total=$total+$rows[3];
				echo "</tr>";
				}?>
						   <tr>
                       
                           &nbsp;&nbsp;&nbsp;&nbsp; <td align="right"  font-weight:30"> <b>Total </td>
                            <?php echo "<td align='right'><b><h3>$total </td>"?>
                            <td align="right" font-weight:bold"></td>
							                            <td align="right"  font-weight:bold"> </td>
						</tr>
					</table>
                    <center>
                    <input type="submit" value="Payment"/></br></br>
					<!--<p><a href="shopping.php">Proceed to checkout</a></p>-->
                   <!-- <p><a href="javascript:history.back()"></br>Continue shopping</a></p></center>-->
				   <p><a href="category.php">Continue shopping</a></p></center>
                    	<?php echo"</form>";?>
                       <div class="clr"></div>
					   
          
	
        </br>
        
  <?php include("footer.php");?>
     