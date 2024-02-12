<?php 
ob_start();
session_start();
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Art Gallery</title>
<link href="baby-boy-style.css" rel="stylesheet" type="text/css" />

<script language="javascript">
function empty()
{
if(f1.fname.value=="" || f1.lname.value=="" || f1.add.value=="" || f1.city.value=="" || f1.state.value=="" ||  f1.country.value=="" || f1.zcode.value=="" || f1.email.value=="" || f1.wphone.value==""  || f1.hphone.value=="" || f1.cardno.value=="" || f1.year.value=="" || f1.varno.value=="")
	{
	alert("please enter all the details");
    return false;
	}
else
	{
	return true;
	}
}

function nochar(e)
{
    //code=event.keycode
	if((e.keyCode<65 || e.keyCode>91) && (e.keyCode<97 || e.keyCode>122))
	{
	alert('Only charcters allowed');
	e.keyCode=0;
	}
}

function nonum(e)
{
	if(e.keyCode<48 || e.keyCode>57)
	{
	alert('Only digit allowed');
	e.keyCode=0;
	}
}

/*

	function checkfn1()
	{
	var fname=document.f1.fname.value;
	if(fname=="")
		{
		alert("Enter Proper First Name");
		document.f1.fname.focus();
		document.f1.fname.value="";	
		return false;	
		}
	}

	function checkfn2()
	{	var fname=document.f1.fname.value;
		{
		if(event.keyCode<48 || event.keyCode>57)
			{
			
			}
		else
			{
			event.keyCode=0;
			}
		}
	}
	
	
	 onblur="checkfn1()" onkeypress="checkfn2()" 
	
	*/
</script>	
<style type="text/css">
<!--
.style1 {color: #FF0000}
-->
</style>

</head>

<body>
<?php
include ("header.php");

?>

<center>
  <div class="rc1"></div>
<div id="headingbg">
	<p>sign up form </p>
</div>
<div class="rc2"></div>  
<div id="main">


<form name="f1" method="get" action="billinginfo2.php">
 <table width="531" border="3" align="center" bordercolor="#69CCD1">
<tr>
	<td width="517"><div align="center"><strong>Registration </strong></div></td>
</tr>

<tr>
	<td><table width="516" border="1" bordercolor="#00CCCC">
  
<tr>
	<td colspan="2"><p><span class="style1">*</span>field required </p></td>
</tr>
  
<tr>
    <td width="241">First name </td>
    <td width="253"><label>
      <span class="style1">*</span>
      <input type="text" name="fname" onkeypress="nochar(event)"/>
    </label></td>
</tr>

<tr>
    <td>Last name </td>
    <td><span class="style1">*</span>
      <input type="text" name="lname" onkeypress="nochar(event)"/></td>
</tr>

<tr>
    <td>Address</td>
    <td><label><span class="style1">*</span>
      <textarea name="add"></textarea>
    </label></td>
</tr>

<tr>
    <td>City</td>
    <td><span class="style1">*</span>
      <input type="text" name="city" onkeypress="nochar(event)"/></td>
</tr>

<tr>
    <td>State</td>
    <td><span class="style1">*</span>
      <input type="text" name="state" onkeypress="nochar(event)"/></td>
</tr>

<tr>
    <td>Country</td>
    <td><span class="style1">*</span>
      <input type="text" name="country" onkeypress="nochar(event)"/></td>
</tr>

<tr>
    <td>Zip code </td>
    <td><span class="style1">*</span>
      <input type="text" name="zcode" onkeypress="nonum(event)"/></td>
</tr>

/*<tr>
    <td>E-mail</td><?php echo "<input type='text' name='email' value='".$_SESSION[user]."'/>";
    <td><span class="style1"> </span></td>?>
</tr>

<tr>
    <td>Work phone </td>
    <td><span class="style1">*</span>
	<input type="text" name="wphone" onkeypress="nonum(event)"/></td>
</tr>

<tr>
    <td>Home phone </td>
    <td><span class="style1">*</span>
      <input type="text" name="hphone" onkeypress="nonum(event)"/></td>
</tr>
  
</table></td>
</tr>

<tr>
	<td><table width="517" border="1" bordercolor="#69CCD1">

<tr>
    <td width="496"><div align="center">
		<input type='submit' name='submit' value='submit' onclick='return empty()'/>
 		 <input type="reset" name="reset" value="reset" />
</div></td>
</tr>
</table>
</table></td></tr>
</form>
<!--<a href='viewcart.php?id=".$arrRec['pid']."'><span class='style4'>ADDTOCART </span></a>-->
</div>
</center>
</body>
</html>
