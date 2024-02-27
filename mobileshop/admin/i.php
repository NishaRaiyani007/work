<?php

include("header.php");
//include("alsidebar1.php");


?>
</br>
</br><font color="#000000" size="+2">
		



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
	else if ((("0123456789abcdefghijklmnopqrstuvwxyz").indexOf(keychar) > -1))
	   return true;
	else if (dec && (keychar == "."))
    {
	   myfield.form.elements[dec].focus();
	   return false;
	}
	else
	   return false;
}
function numonly(myfield, e, dec)
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
		apos=value.indexOf("/")
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
		if (not_empty(t1, "id field is empty!")==false)
		{
			t1.focus();
			return false;
		}
		if (not_empty(t2, "company name field is empty!")==false)
		{
			t2.focus();
			return false;
		}				

		if (not_empty(t3, "price field is empty!")==false)
		{
			t3.focus();
			return false;
		}		
		
		
		if (not_empty(t4, "category field is empty!")==false)
		{
			t4.focus();
			return false;
		}	
		
				
		if (not_empty(t5, "image field is empty!")==false)
		{
			t5.focus();
			return false;
		}	
		
		
		if (not_empty(t6, "des field is empty!")==false)
		{
			t6.focus();
			return false;
			
		}
		if (not_empty(t7, "stock field is empty!")==false)
		{
			t7.focus();
			return false;
		
		}
		
	}				
}

</script>
<?php
echo "<center>";
echo "<form name=f1 action=i_q.php method='get' onSubmit='return validate_form(thisform)'>";
echo "<center/><table><tr/><tr/><tr>";
echo "<td><font face='mickey' size=+2>Enter id</font></td>
	<td><input type='text' name='t1' onkeypress='return numonly(this, event)'></td></tr><tr>";
echo "<td><font face='mickey' size=+2>Enter company name</font></td><td></br><input type='text' name='t2' onkeypress='return numbersonly(this, event)'></td></tr><tr>";

echo "<td><font face='mickey' size=+2>Enter  category</font></td><td></br><input type='text' name='t4' onkeypress='return numbersonly(this, event)'></td></tr><tr>";
echo "<td><font face='mickey' size=+2>Enter image</font></td><td></br><input type='text' name='t5' onkeypress='return numbersonly(this, event)'></td></tr><tr>";
echo "<td><font face='mickey' size=+2>Enter price</font></td><td></br><input type='text' name='t3' onkeypress='return numonly(this, event)'></td></tr><tr>";
echo "<td><font face='mickey' size=+2>Enter description</font></td><td></br><input type='text' name='t6' onkeypress='return numbersonly(this, event)'></td></tr><tr>";
echo "<td><font face='mickey' size=+2>Enter stock</font></td><td></br><input type='text' name='t7' onkeypress='return numbersonly(this, event)'></td></tr><tr>";

echo "<td colspan=2 align='center'><input type='submit' value='ok'></td></tr></table></center>";
echo "</form>";
echo "</center>";

?>