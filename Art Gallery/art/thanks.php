<?php
session_start();
if(isSet($_SESSION['valid']))
{
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Art &amp; Design</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">
</script>
<style type="text/css">
<!--
.style1 {font-size: xx-large}
.style2 {font-family: Geneva, Arial, Helvetica, sans-serif}
.style3 {
	font-size: large;
	color: #FF6600;
}
-->
</style>
</head>
<body onLoad="MM_preloadImages('images/home_hov.jpg','images/aboutus_hov.jpg','images/services_hov.jpg','images/contactus_hov.jpg')">
<table width="1169" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><table width="100%" height="191" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="9" height="191"><img src="images/hdr_lft_03.jpg" alt="" width="9" height="186" /></td>
        <td width="1152" valign="top" class="hdr_bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="32"></td>
          </tr>
          <tr>
            <td><div align="center"><a href="index.php" class="heading1 style1"><em>Art Gallery </em></a> </div></td>
          </tr>
          <tr>
            <td height="71"></td>
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
                <td width="701" height="793" valign="top"><table width="98%" height="940" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      
                      <tr>
                        <td height="10"></td>
                      </tr>
		



<html>
<body>
<h1><font color="#CC0000" size="+6">Thank You......</font></h1>
</body>
<a href="logout.php"><h1>Logoff</h1></a>
</table>
</html>

                      <tr>
                        <td align="left" class="text1"><table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr height="20">
				</tr>
              <tr>                          </tr>
                        </table></td>
                      </tr>
						<tr>
                        <td height="10"></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="148"></td>
                  </tr>
                </table></td>
                <td width="398" align="left" valign="top"><img src="images/banner-image_25.jpg" width="437" height="397" /></td>
              </tr>
            </table><p><td align="center" ></td><a href="These are some of the antique things which we sell online"></a></td>
          </tr>
		  <tr>
            <td height="8"></td>
          </tr>
        </table></td>
        <td width="35"></td>
      </tr>
    </table></td>
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
        <td width="9"><img src="images/ftr_rgt_51.jpg" alt="" width="9" height="70" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
<?php
}
else
	{
		echo "<script language='javascript'>alert('Please you need to Login ')
		</script>";
		echo "<script language='javascript'>window.location.assign('index.php')</script>";
	}

?>

