
<?php
include("header.php");
//include("alsidebar1.php");
?>
</br>
</br>
<font color="#000000" size="+2"> 

<script language="JavaScript">
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
	else if ((("abcdefghijklmnopqrstuvwxyz_").indexOf(keychar) > -1))
	   return true;
	else if (dec && (keychar == "."))
    {
	   myfield.form.elements[dec].focus();
	   return false;
	}
	else
	   return false;
}
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
function nonly(myfield, e, dec)
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


function validate_form(thisform)
{
	with(thisform)
	{
		if (not_empty(p1, "enter old data!")==false)
		{
			p1.focus();
			return false;
		}	
		if (not_empty(t2, "enter field name!")==false)
		{
			t2.focus();
			return false;
		}	
		if (not_empty(t3, "enter new data!")==false)
		{
			t3.focus();
			return false;
		}		
		

	}				
}

</script>	


<?php
echo "<form name='f1' action='u_q.php' method='GET' onSubmit='return validate_form(this)'>";
echo "<center/><table><tr/><tr/><tr>";
echo "<td><font face='mickey' size=+2>Enter id </td><td align='center'></br><input type='text' name='p1' onkeypress='return numbersonly(this, event)'</td></tr></tr></tr><tr></br>";
echo "<td><font face='mickey' size=+2>Enter field name of that data</font></td><td></br><input type='text' name='p2' onkeypress='return charonly(this, event)'></td></tr><tr/><tr>";
echo "<td><font face='mickey' size=+2>Enter new data</font></td><td><br><input type='text' name='p3' onkeypress='return numbersonly(this, event)'></td></tr><tr/><tr/><tr>";
echo "<td colspan=2 align='center'><input type='submit' value='ok'></td></tr></table></center>";
echo "</form>";
?>




