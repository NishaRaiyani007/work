<?php include("connection.php"); 
 include("header.php");?> </br>
 </br> </br>
  
   
   
</style><h1><font color="#000000"><i>Checkout :-</i></h1></br></br>
        
<script language="JavaScript">
function numbersonly(myfield, e, dec)
{
	var key;
	var keychar;
	
	if (window.event)
	   key = window.event.keyCode;
	else if (e)
	   key = e.which;
	else
	   return true;
	keychar = String.fromCharCode(key);
	
	if ((key==null) || (key==0) || (key==8) || (key==9) || (key==13) || (key==27))
	   return true;
	else if ((("0123456789").indexOf(keychar) > -1))
	   return true;
	else if (dec && (keychar == "."))
    {
	   myfield.form.elements[dec].focus();
	   return false;
	}
	else
	   return false;
}
function charonly(myfield, e, dec)
{
	var key;
	var keychar;
	
	if (window.event)
	   key = window.event.keyCode;
	else if (e)
	   key = e.which;
	else
	   return true;
	keychar = String.fromCharCode(key);
	
	if ((key==null) || (key==0) || (key==8) || (key==9) || (key==13) || (key==27))
	   return true;
	else if ((("abcdefghijklmnopqrstuvwxyz").indexOf(keychar) > -1))
	   return true;
	else if (dec && (keychar == "."))
    {
	   myfield.form.elements[dec].focus();
	   return false;
	}
	else
	   return false;
}





function not_empty(field,alerttxt)
{
	with(field)
	{
		if(value.length < 1)
		{
			alert(alerttxt);
			return false
		}
		else
		{
			return true
		}
	}
}

function validate_email(field,alerttxt)
{
	with (field)
	{
		apos=value.indexOf("@")
		dotpos=value.lastIndexOf(".")

		if (apos<1||dotpos-apos<2) 
		{
			alert(alerttxt);
			return false
		}
		else 
		{
			return true
		}
	}
} 
function validate_form(thisform)
{
	with(thisform)
	{
		if (not_empty(l1, "Name field is empty!")==false)
		{
			l1.focus();
			return false;
		}		

		if (not_empty(e1, "e_mail field is empty!")==false)
		{
			e1.focus();
			return false;
		}
if (validate_email(e1,"Not a valid e-mail address!")==false)
		{
		  	e1.focus();
			return false;
		}		
		
		
		if (not_empty(m1, "mobile_no field is empty!")==false)
		{
			m1.focus();
			return false;
		}		
		
		if (not_empty(a1, "address field is empty!")==false)
		{
			a1.focus();
			return false;
		}		
				
		if (not_empty(p1, "pincode field is empty!")==false)
		{
			p1.focus();
			return false;
		}
		
		
		
		
		if (not_empty(c1, "city field is empty!")==false)
		{
			c1.focus();
			return false;
		}
	}				
}

</script><?php  
	global $unm;
	global $no;
	global $email;
	global $mobi;
	global $addr;
	global $pin;
	global $city ;
	$uid=$_GET['id'];
	$q = "SELECT * FROM userinfo WHERE u_id=".$_GET['id'];
	$res = mysql_query($q)or die("Can't Select");
	$rows = mysql_num_rows($res);
	if($rows > 0)
	{
		while($data=mysql_fetch_array($res))
		{
		
		$no = $data[0];
		$unm = $data[1]; 
		$email = $data[2]; 
		$mobi = $data[4];	
		$addr = $data[5]; 
		$pin = $data[6]; 	
		$city = $data[7]; 
		 
	}
	}
	
?>







			
<?php
echo "<form name='f1' action='sub.php' method='GET' onSubmit='return validate_form(this)'>";
global $total;
$total=$_GET['h1'];
global $cur;
$cur=$_GET['cur'];?>
<input type="hidden" name="h1" value="<?php echo $total;?>"/><input type="hidden" name="cur" value="<?php echo $cur;?>"/>

 
     <label for="name"><?php echo "UserName";?></label></br>
               <input type="text" name="l1" value="<?php echo $unm;?>" readonly="true" onkeypress="return charonly(this, event)"  class="text" size="80"><br /></br>
              
          

                <label for="email"><?php echo "E_mail address";?></label></br>
               <input type="text" name="e1" value="<?php echo $email;?>" readonly="true" class="text" size="80" >
<br /></br>
			   
			    
                <label for="website"><?php echo "Mobile no";?></label></br>
                <input type="text" name="m1" value="<?php echo $mobi; ?>" maxlength=10 readonly="true" onkeypress="return numbersonly(this, event)"  class="text" size="80">
<br /></br>
              
			  
                <label for="message"><?php echo "Address";?></label></br>
				
				 <textarea rowspan=5 cols="61" name="a1" values="" class="text" readonly="true"><?php echo $addr;?></textarea>
<br /></br>

            
              
			
     <label for="name"><?php echo "Pincode";?></label></br>
             <input type="text" name="p1" value="<?php echo $pin;?>" maxlength=10 readonly="true" onkeypress="return numbersonly(this, event)" class="text" size="80">
<br /></br>
 
     <label for="name"><?php echo "City";?></label></br>
             <input type="text" name="c1" value="<?php echo $city;?>" readonly="true" onkeypress="return charonly(this, event)" class="text" size="80">
<br /></br>

<h2>Delivery Mode </h2>
       
            <table style="border:1px solid #CCCCCC;" width="100%">
                <tr>
                    <td height="80px"> <img src="images/pay.png " alt="paypal" /></td>
                    <td width="400px;" style="padding: 0px 20px;">Recommended if you have a PayPal account. Fastest delivery time.
                    </td>
                    <td><?php echo"<a href='submit.php?total=".$total."'><input type='submit' value='CASE PAYMENT' name='b1'/></a>"; ?></td>
                </tr>
                <tr>
                    <td  height="80px"><img src="images/card.png" alt="paypal" />
                    </td>
                    <td  width="400px;" style="padding: 0px 20px;">2CheckOut accepts customer orders via online checks, Visa, MasterCard many Bank SBI ,Axix,BOB</a>.
                    </td>
                    <td><a href="submitc.php"><input type="submit" value="CREDIT CARD" name="b1"/></a></td>
                </tr>
            </table>
			 </br>
	 </br>
	  </br>
	 </br>
	<?php echo"</form>";?> <div class="clr"></div>
          </div>
                </div>
        </br></br>
    
     </td>
	