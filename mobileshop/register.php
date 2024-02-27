<?php include("connection.php"); 
 include("header.php");?> 
 </br>
 </br> </br><div align="left">
  
    <h1><font color="#000000"><i>Register :-</i></h1></br></br>        
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
		if(document.getElementById("password").value.split(" ").join("") == "")
	{
		alert("Please enter a password.");
		document.getElementById("password").focus();
		return false;
	}
	if(document.getElementById("password").value!=document.getElementById("cpassword").value)
	{
		alert("Your password and password confirmation must be the same.");
		document.getElementById("password").focus();
		return false;
	}	
		
	}				
}

</script>

			
<?php

echo "<form name='f1' action='registerq.php' method='GET' onSubmit='return validate_form(this)'>";
$total=$_GET['h1'];?>
<input type="hidden" name="h1" value="<?php echo $total;?>"/>
<?php $cur=$_GET['cur'];?>
<input type="hidden" name="cur" value="<?php echo $cur;?>"/>

       <label for="name"><?php echo "UserName";?></label></br>
       <input type="text" name="l1" value="" onkeypress="return charonly(this, event)"  class="text" size="80">
       <br/></br>
       <label for="email"><?php echo "E_mail address";?></label></br>
            <input type="text" name="e1" values="" class="text" size="80" >
   <br /> <br />
  
                <label for="website"><?php echo "Mobile no";?></label> <br />
                <input type="text" name="m1" values="" maxlength=10 onkeypress="return numbersonly(this, event)"  class="text" size="80">
                <br /> <br />
  
	  <label for="Password"><?php echo "Password";?></label> <br />
<input  type="password" name="password" id="password" class="text" size="80">
</br> <br />
      <label for="Confirm Password"><?php echo "Confirm Password";?></label> <br />
<input  type='password' name='cpassword' id='cpassword' class="text" size="80">
   <br /></br>
			  
                <label for="message"><?php echo "Address";?></label></br>
            <textarea rowspan=5 cols="61" name="a1" values="" class="text"></textarea>
<br /></br>
              
			  
     <label for="name"><?php echo "Pincode";?></label></br>
             <input type="text" name="p1" values="" maxlength=6 onkeypress="return numbersonly(this, event)" class="text" size="80">
<br /></br>
 
     <label for="name"><?php echo "City";?></label></br>
             <input type="text" name="c1" values="<?php $city;?>" onkeypress="return charonly(this, event)" class="text" size="80">
<br /></br>
 </li>
</ol>
</div><h2 class="star"><i>Delivery Mode :-</i></h2></br>
        <div class="article">
	
            <table style="border:1px solid #CCCCCC;" width="100%">
                <tr>
                    <td height="80px"> <img src="images/pay.png" alt="paypal" /></td>
                    <td width="400px;" style="padding: 0px 20px;">Recommended if you have a PayPal account. Fastest delivery time.
                    </td>
                    <td><?php echo "<input type='submit' value='CASE PAYMENT' name='b1'/>"; ?></td>
                </tr>
                <tr>
                    <td  height="80px"><img src="images/card.png" alt="paypal" />
                    </td>
                    <td  width="400px;" style="padding: 0px 20px;">2CheckOut accepts customer orders via online checks, Visa, MasterCard many Bank SBI ,Axix,BOB</a>.
                    </td>
                    <td><a href="submitc.php"><input type="submit" value="CREDIT CARD" name="b1"/></a></td>
                </tr>
            </table></br></br></br></br>
	<?php echo"</form>";?> <div class="clr"></div>
          </div>
                </div>
				
        
     
 
     