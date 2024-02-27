<?php include_once("slider.php");?>
<!--______________-->


<!--************************************************************************__-->
<html>
<body>
<font color="#3333CC">
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
}</script>
<?php
echo "<form name='f1' action='craditmessage.php' method='GET'>";
echo "<font  style='Italic Bold' size=4><b><u>Payment mode</u></b> : Credit card(Visa/Master)</font>";
echo "<br>";
echo "<br><font  style='Italic Bold' size=4><b><u>Card type</u></b> : <input type='radio' name='r1' value='Master card'>Master card<input type='radio' name='r1' value='Visa'>Visa</font>";
echo "<br><br><font  style='Italic Bold' size=4><b><u>Expiration date</u></b> : <select name='s1'><option selected='selected'>Month</option><option>January</option><option>February</option><option>March</option><option>April</option><option>May</option><option>June</option><option>July</option><option>August</option><option>September</option><option>October</option><option>November</option><option>December</option></select> <select name='s2'><option selected='selected'>Year</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option><option>2022</option><option>on wards</option></select></font>";
echo "<br><br><font  style='Italic Bold' size=4><b><u>Card number</u></b> : <input type='text' maxlength=20 name='t1'  onkeypress='return numbersonly(this, event)'></font>";



echo "<br><br><font style='Italic Bold' size=4><br><br><input type='submit' value='CONFORM ORDER' name='t4'></font>";
echo "</font>";
echo "</form>";
$i=1;
					$con=mysql_connect("localhost","root","")or die("Can't Connect");
					mysql_select_db("mobile")or die("Can't Select Database");
					$qry=mysql_query("select *from bill")or die("Can't Select Data");
					
$d="delete from order1";
mysql_query($d,$con)or die("can't delete");
?>
