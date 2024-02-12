<?php
session_start();
?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Art Gallery</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">
function nonum(e)
{
    //code=event.keycode
	if((e.keyCode<65 || e.keyCode>91) && (e.keyCode<97 || e.keyCode>122))
	{
	alert('Only characters allowed');
	e.keyCode=0;
	}
}
function nochar(e)
{
	if(e.keyCode<48 || e.keyCode>57)
	{
	alert('Only numbers allowed');
	e.keyCode=0;
	}
}
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

function em_check(str)
{
	var at="@";
	var dot=".";
	var lat=str.indexOf(at);
	var lstr=str.length
	var ldot=str.indexOf(dot);
	if(str.indexOf(at)==-1)
	{
		alert("invalid");
		f1.email.value=" "
		return false;
	}
	if(str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr)
	{
		alert("invalid");
		f1.email.value=" "
		return false;
	}
}

function pass_check()
{
	var str= document.getElementById("pword").value;
	var str1=document.getElementById("rpword").value;
	if(str==str1)
	{
	}
	else
	{
		alert('NOT same passeord in both fields');
	}
}
function emailcheck(str)
	{
   		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1)
		{
		   alert("Invalid E-mail ID")
		   reg.email.value=""
		   reg.email.focus();
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr)
		{
		   alert("Invalid E-mail ID")
		   reg.email.value=""
		   reg.email.focus();
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr)
		{
		    alert("Invalid E-mail ID")
			reg.email.value=""
			reg.email.focus();
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1)
		 {
		    alert("Invalid E-mail ID")
			reg.email.value=""
			reg.email.focus();
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot)
		 {
		    alert("Invalid E-mail ID")
			reg.email.value=""
			reg.email.focus();
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1)
		 {
		    alert("Invalid E-mail ID")
			reg.email.value=""
			reg.email.focus();
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1)
		 {
		    alert("Invalid E-mail ID")
			reg.email.value=""
			reg.email.focus();
		    return false
		 }
 		 return true					
	}
	

/*<?php 
ob_start();
session_start();
?>*/		
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 50px;
	font-family: Georgia, "Times New Roman", Times, serif;
	color: #FF6600;
	font-style: italic;
}
.style2 {
	font-size: 36px;
	font-family: Georgia, "Times New Roman", Times, serif;
	font-style: italic;
	color: #FF3300;
}
-->
</style>
</head>
<body onload="MM_preloadImages('file:///F|/Copy of the_cool_art_template/html/images/aboutus_hov.jpg','file:///F|/Copy of the_cool_art_template/html/images/services_hov.jpg','file:///F|/Copy of the_cool_art_template/html/images/gallery_hov.jpg','file:///F|/Copy of the_cool_art_template/html/images/contactus_hov.jpg')">

<table width="1169" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9"><img src="images/hdr_lft_03.jpg" alt="" width="9" height="186" /></td>
        <td width="1152" valign="top" class="hdr_bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="32"></td>
          </tr>
          <tr>
            <td><div align="center"><span class="style1">Art Gallery</span> </div></td>
          </tr>
          <tr>
            <td height="19">&nbsp;</td>
          </tr>
          <tr>
            <td style="padding-left:380px;"><table width="730" border="0" cellspacing="0" cellpadding="0">
             
            </table></td>
          </tr>
        </table></td>
		
        <td width="9"><img src="images/hdr_rgt_05.jpg" alt="" width="9" height="186" /></td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td height="364" valign="top" class="bdy_bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="35">&nbsp;</td>
        <td width="1099"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="8"></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="701" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td valign="top" class="welcome_bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="146"><table width="71%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td class="heading1"></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td align="left" class="text1"></td>
                          </tr>
                          <tr>                          </tr>
                        </table></td>
                      </tr>                      
                      
                    </table></td>
                  </tr>
                </table>
			
                  <form action="confirmregi.php" method="post" name="formz" id="formz">
  <div align="center">
    <p align="left"><span class="style2">Registration form </span></p>
    <p>&nbsp;</p>
    <p><br />
      </p>
  </div>
  <table border="0" width="85%">
    <tr>
      <td width="24%"><span class="style3">User Name</span></td>
      <td width="55%"><input type="text" name="usname" size="35" onkeypress="nonum(event)"/>      </td>
    </tr>
    <tr>
	<tr>
	<td width="24%"><span class="style3">Age</span></td>
      <td width="0%"><input type="text" name="age" size="30" onkeypress="nochar(event)"/></td>
      </tr>
	  
	  
    <tr>
      <td width="24%"><span class="style3">Adderess</span></td>
      <td width="55%"><textarea name="add" rows="3" ></textarea>	  </td>
    </tr>
    <tr>
      <td width="24%"><span class="style3">City</span></td>
      <td width="55%"><input type="textarea" name="city" size="30" onkeypress="nonum(event)"/>      </td>
    </tr>
    <tr>
      <td width="24%"><span class="style3">State</span></td>
     <td width="55%"><input type="textarea" name="state" size="30" onkeypress="nonum(event)" />      </td>
    </tr>
	<tr>
      <td width="24%"><span class="style3">Zipcode</span></td>
      <td width="55%"><input type="textarea" name="zipcode" size="30" onkeypress="nochar(event)"/></td>
    </tr>
    
    
	<tr>
      <td width="24%"><span class="style3">Mobile No</span></td>
      <td width="25%"><input type="text" name="mobileno" size="30" onkeypress="nochar(event)"/>      </td>
    </tr>
      <tr>
    <td>E-mail</td>
    <td><span class="style3"> 
	<input type="text" name="email" onBlur="emailcheck(this.value)" size="30"/></span>	</tr>
    <tr>
      <td width="24%"><span class="style3">User Id</span></td>
      <td width="55%"><input type="text" name="uid" size="30" />      </td>
    <tr>
      <td width="24%"><span class="style3">PassWord</span></td>
      <td width="55%"><input type="password" name="pword" size="30" />      </td>
    </tr>
	  <tr>
      <td width="24%"><span class="style3">RetypePassWord</span></td>
      <td width="55%"><input type="password" name="rpword" size="30" onBlur="pass_check()"/>      </td>
    </tr>
  </table>
  <br />
  
  <p>
    <input type="submit" name="Submit" value="Submit" onclick='return empty()'/>
    <input type="reset" name="Reset" value="Reset" />
  </p>
</form>
                <td width="398" align="left"><div id="left">
						

		          <p>&nbsp;</p>
		          <p>&nbsp;</p>
				  <p><img src="images/banner-image_25.jpg" width="398" height="356" /></p>
		          <p>&nbsp;</p>
		          <p align="center">&nbsp;</p>
				  <p>&nbsp;</p>
		          <p>&nbsp;</p>
		          <p>&nbsp;</p>
		          <p>&nbsp;</p>
		          <p>&nbsp;</p>
			<td>&nbsp;</td>
		</tr>
		
			<td>&nbsp;</td>
		</tr>
		</table>
		</form> </td>
              </tr>
            </table></td>
          </tr>
		  <tr>
            <td height="55"></td>
          </tr>
        </table><td height="108">
        <td width="35">&nbsp;</td>
      </tr>
</table>
</tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9"><img src="images/ftr_lft_49.jpg" alt="" width="9" height="70" /></td>
        <td width="1152" class="ftr_bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="70" align="right" class="ftr_text">Copyright &copy; 2013 Art &amp; Design. All Rights Reserved.<br />
Powered by <a href="http://www.globaltemplates.com" target="_blank" class="ftr_links">Free Website Templates</a></td>
          </tr>
        </table></td>
        <td width="9"><img src="images/ftr_rgt_51.jpg" alt="" width="19" height="70" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>


<?php


?>