<?php
  if(isset($_POST[login]))
    {
        if(!($_POST[username]) or (!($_POST[password])))
             {
               echo"<script language='JavaScript'>";
               echo" alert('Please Enter Username And Password');";
               echo"</script>";
             }
			if(!mysql_connect('localhost','root'))
				echo mysql_error();
			if(!mysql_query('use jkmt1'));
				echo mysql_error();

             $query="select * from `adminlogin` where username='$_POST[username]' and  password='$_POST[password]'";
            
             $result=mysql_query($query);
             $num=mysql_num_rows($result);
               if($num==0)
               {
                  echo"<script language='JavaScript'>";
                  echo" alert('Invalid Username Or Password');";
                  echo"</script>";
               }
               else
               {
                 session_start();
				 $_SESSION['user']=$_POST['username'];
                 $s=session_id();
                 header("location:admin.php?id=".$s);
               }
    }
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="../style.css" rel="stylesheet" type="text/css" />
<script language="javascript">
		function ft()
		{
			document.getElementById("usr").focus()
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
			   <form action="addupdatedel.php" method="post">
             
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
				 
				 <h1>&nbsp;</h1>
				 <h1><font color="#FFFFFF" style="font-variant:small-caps">Administrator Login</font></h1>
				 <p><br>
                     <b><font size="4"><span class="style2"><span class="style1" style="color:#FFFFFF">User Name </span>&nbsp;</span>
                   <input type="text" id="usr" name="username">
                   <br>
                   <br>
                       <span class="style2 style1"style="color:#FFFFFF">Password </span><span class="style1">&nbsp;</span>&nbsp;&nbsp;
                   <input type="password" name="password">
                   <br><br>
                   <input type='submit' name='login' value='Login' height="100%"></font></b>
                 </p>
                 </center>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<div class="clear"></div>
	  </div>
	</div>
  <div id="footer">
		<div id="copyright">
			<span></span> 
		</div>
		
	        
	        
	        
	        
	         
	        
	  
		   
        </p>
	</div>	
	<div id="footerend"></div>
</div>
</body>
</html>
