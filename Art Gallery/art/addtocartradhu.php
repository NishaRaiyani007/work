<?PHP
session_start();
if(isset($_GET['id']))
{
$_SESSION['Category']=$_GET['id'];
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Art &amp; Design</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">
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
.style5 {
	font-size: x-large;
	color: #CC0000;
	font-style: italic;
}
.style10 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 50px;
	color: #FF6600;
}
-->
</style>
</head>
<body onload="MM_preloadImages('file:///F|/Copy of the_cool_art_template/html/images/services_hov.jpg','file:///F|/Copy of the_cool_art_template/html/images/gallery_hov.jpg','file:///F|/Copy of the_cool_art_template/html/images/contactus_hov.jpg','file:///F|/Copy of the_cool_art_template/html/images/home_hov.jpg')">
<table width="1169" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9"><img src="file:///F|/Copy of the_cool_art_template/html/images/hdr_lft_03.jpg" alt="" width="9" height="186" /></td>
        <td width="1152" valign="top" class="hdr_bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="32"></td>
          </tr>
          <tr>
            <td><div align="center"><a href="index.php" class="heading1 style10"><em>Art Gallery</em></a></div></td>
          </tr>
          <tr>
            <td height="71">&nbsp;</td>
          </tr>
          <tr>
            <td style="padding-left:380px;"><table width="730" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="146" align="left"><a href="index.php" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image16','','images/home_hov',1)"><img src="images/home_nor.jpg" alt="" name="Image16" width="146" height="39" border="0" id="Image16" title="Home" /></a></td>
                <td width="146" align="left"><img src="images/aboutus_nor.jpg" alt="" width="146" height="39" title="About Us" /></td>
                <td width="146" align="left"><a href="services.php" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image18','','images/services_hov.jpg',1)"><img src="images/services_nor.jpg" alt="" name="Image18" width="146" height="39" border="0" id="Image18" title="Services" /></a></td>
                <td width="146" align="left"><a href="gallery.php" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image19','','images/gallery_hov.jpg',1)"><img src="images/gallery_nor.jpg" alt="" name="Image19" width="146" height="39" border="0" id="Image19" title="Gallery" /></a></td>
                <td align="left"><a href="file:///F|/Copy of the_cool_art_template/html/contactus.php" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image20','','images/contactus_hov.jpg',1)"><img src="images/contactus_nor.jpg" alt="" name="Image20" width="146" height="39" border="0" id="Image20" title="Contact Us" /></a></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="9"><img src="file:///F|/Copy of the_cool_art_template/html/images/hdr_rgt_05.jpg" alt="" width="9" height="186" /></td>
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
                    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td class="heading1">&nbsp;</td>
                      </tr>
	<center>					
					  <?php
				 
$conn=mysql_connect("localhost","root");
if(!$conn)
{
die('could not connect:'.mysql_error());
}
$cat=$_GET['id'];
mysql_select_db("art",$conn);
$result=mysql_query("select * from image where Category='$cat'");
echo "<table border='1' align='center'><tr><th>Idno</th>
<th>Category</th><th>Path</th><th>Qty</th><th>Price</th><th>Addtocart</TH>";
while($row=mysql_fetch_row($result))
{
 echo "<tr>";
 echo "<td>".$row['0']."</td>";
 echo "<td>".$row['1']."</td>";
 
 echo "<td><img src='".$row['2']."' width='300px' height='300px'></td>";
 echo "<td>".$row['3']."<input type='text'></td>";
 echo "<td>".$row['4']."</td>";
  echo "<td><a href='viewcart.php?id=".$row['0']."'>ADDTOCART</a>";
 echo "</tr>";
}
	   echo "</table>";
	   mysql_close($conn);
?>
</center>
</body>
</html>

                      <tr>
                        <td height="10"><p align="left" class="style5"><br />
                          </p>
                          </td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="148"></td>
                  </tr>
                </table></td>
                <td width="398" align="left" valign="top">&nbsp;</td>
              </tr>
            </table></td>
          </tr>
		  <tr>
            <td height="8"></td>
          </tr>
        </table></td>
        <td width="35">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9"><img src="file:///F|/Copy of the_cool_art_template/html/images/ftr_lft_49.jpg" alt="" width="9" height="70" /></td>
        <td width="1152" class="ftr_bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="70" align="right" class="ftr_text">Copyright &copy; 2013 Art &amp; Design. All Rights Reserved.<br />
Powered by <a href="http://www.globaltemplates.com" target="_blank" class="ftr_links">Free Website Templates</a></td>
          </tr>
        </table></td>
        <td width="9"><img src="file:///F|/Copy of the_cool_art_template/html/images/ftr_rgt_51.jpg" alt="" width="9" height="70" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
