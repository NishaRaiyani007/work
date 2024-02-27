<?php 

include("slider.php");?>
</br><font color="#000000" size="+3" ><center><u><b>Feedback</b></u></center>
</font></br><font color="#000000" size="+1"></br>
	     <div align="center">
<head>
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
				
		
		
		if (not_empty(text, "city field is empty!")==false)
		{
			c1.focus();
			return false;
		}
	}				
}


</script>
</head>
       
                
<?php
echo "<form name='f1' action='fin.php' method='GET' onSubmit='return validate_form(this)'>";?>
                    
                        <label for="author">Name:</label> 
						</br><input type="text" id="author" name="l1" class="text" size="50" onKeyPress="return charonly(this, event)" /><br/></br>
                      
                        <label for="email">Email:</label> 
						</br><input type="text" id="email" name="e1" class="text"/ size="50"><br/></br>
                       
						<label for="subject">Address</label> 
						</br><textarea rows="2" cols="38" name="a1" class="text"></textarea><br/></br>

						
                       
						<label for="subject">Mobile No:</label> 
						</br><input type="text" name="m1" id="mobile" maxlength="10" class="text" size="50" onKeyPress="return numbersonly(this, event)"/><br/></br>

						
        
                        <label for="text">Message:</label></br>
						 <textarea rows="2" cols="38" name="text" class="text"  ></textarea>
<br/></br>
                    
                        <input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" name="reset" value="Reset" class="submit_btn float_r" />
                        
            	
               </form>
			   </br>
			   </br>
		<?php include("footer.php");?>
  