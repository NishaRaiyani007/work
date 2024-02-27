 <?php include("connection.php");
	
if(isset($_POST['submit']))
{
	session_start();
	$email = $_POST['email'];
	$password = $_POST['password'];
	
	$q = "SELECT u_id FROM `userinfo` WHERE u_email='".$email."' and u_password = '".$password."'";
	$res = mysql_query($q);
	$rows = mysql_num_rows($res);
	$data = mysql_fetch_array($res);
	if($rows > 0)
	{	//session_start();	
		$_SESSION['customer_id'] = $data['u_id'];
		session_register("admin");
		global $total;
		$total=$_GET['h1'];
		$cur=$_GET['cur'];
		header("location:checkout.php?h1=".$total."&id=".$data[0]."&cur=".$cur."");
	}
}
?>
              <?php include("slider.php");?>
			  
			  <div align="center">
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><h1><font color="#003333"><u><h2>Login into your account</h2></u></br>
	 </be>
	 
	 <table><tr><td>
       
				</td></tr>
				
                 <form name="login" method="post" action="#" >
                 <?php 
				 		global $total;
						global $cur;
						$cur=$_GET['cur'];
						$total=$_GET['h1'];?>
<input type="hidden" name="h1" value="<?php echo $total;?>"/>
<input type="hidden" name="cur" value="<?php echo $cur;?>"/></br>


                   <tr><td> <label class="contact" ><font size="+2">Email:</label></td>
                  <td><input type="text" class="text" name="email" /></td></tr>
				  
                    
                  <tr><td> <br/> <label class="contact">Password:</label></td>
                    <td><br/><input class="text" type="password" name="password" /></td></tr>
                    <tr><td colspan="2"><center><br/><br/><input type="submit" value="Login"  name="submit"/>
                    <input type="reset" value="Clear"  name="Clear"/></center></td></tr>
                    </table>
					</font>
					</br>
					
					&nbsp;&nbsp;&nbsp;&nbsp;<?php echo "<a href=register.php?h1=".$total."&cur=".$cur.">Sign Up</a>";?>
                   
                    
        		       
             
			</br>
		</br>
		   
			  
      <?php include("footer.php");?>
     