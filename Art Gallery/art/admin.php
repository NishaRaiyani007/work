<?php 
ob_start();
session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="../style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function fun(var1,var2,var3,var4,var5)
	{	//alert(var2);
		myurl = 'admin.php?uid=';
		myurl += document.getElementById(var1).value;
		myurl += '&category='+document.getElementById(var2).value;
		myurl += '&pname='+document.getElementById(var3).value;		 		 
		myurl += '&image='+document.getElementById(var4).value;		 
		myurl += '&price='+document.getElementById(var5).value;		 
		myurl+='&update=yes';
		
		window.location=myurl;
		//alert(myurl);
		//alert(document.getElementById(var3).value);
	}
</script>

<title>Art Gallery</title>
<style type="text/css">
<!--
.style1 {color: #FF0000}
-->
</style>
</head>

<body>
<body bgcolor="#FF9933" onLoad="ft()">
	<center>
	<table width="950" height="341" border="0" id="t" align="center" cellspacing="0" background="../../image/image/Admin_Back.jpg">
<tr>
                <td colspan="2" width="950" height="109">
              <div align="center"></div></td>
</tr>
           <tr>
             <td height="222" align="center">
			   <center>
  <div id="main"><h3>
  </div>
</center>
             
<div id="container">
	<div id="header">
	  <p>&nbsp;</p>
	  <p>&nbsp;</p>
	</div>
	<div id="border">
		<div id="main">
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>  <center>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				 <center>
				
				   <h1>you need to..<a href="adminlogin.php"  style="color:#FFFFFF" class="style1" >Sign in</a>
				   <p>&nbsp;</p>
				   <p>&nbsp;</p>
				   <p>&nbsp;</p>
				   <p>&nbsp;</p>
				   <p>&nbsp;</p>
				   <p>&nbsp;</p>
				   <p>&nbsp;</p>
				   <p>&nbsp;</p>
				   <p>&nbsp;</p>
				  
				   <p><br /></p>
				 </center>
				 
             
               
</div>

</div>
</div>



           
<!--<d
		iv id="footer">
		<div id="copyright">Copyright &amp;copy; 2010 Art &amp;amp; Design. All Rights Reserved</div>
	         -->
	        
	        
	        
	         
	        
	  
		   
        </p>
	</div>	
	<div id="footerend"></div>
</div>
</body>
</html>