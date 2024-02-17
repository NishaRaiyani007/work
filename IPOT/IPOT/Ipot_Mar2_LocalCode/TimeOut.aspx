<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TimeOut.aspx.cs" Inherits="TimeOut" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="css/start.css" rel="stylesheet" type="text/css" />
    
    <script type="text/javascript" language="javascript">

        function DisableBackButton() {
            window.history.forward()
        }
        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function(evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function() { void (0) }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:100%; margin:0 auto;">
    <div class="center_content">   
                            	<div class="content_area">
                              <%--  <span class="share_btn">
                                    <a rel="nofollow" href="#" onclick="return fbs_click()" target="_blank" class="fb_share_link">Share</a>
                                    <span class="st_email_hcount" displaytext="Email" st_processed="yes"><span style="text-decoration:none;color:#000000;display:inline-block;cursor:pointer;" class="stButton"><span><span class="stMainServices st-email-counter" style="background-image: url(../images/email_counter.png);">&nbsp;<img src="images/check-big.png" style="position: absolute; top: -7px; right: -7px; width: 19px; height: 19px; max-width: 19px; max-height: 19px; display: none;"></span><span class="stArrow"><span class="stButton_gradient stHBubble" style="display: inline-block;"><span class="stBubble_hcount">0</span></span></span></span></span></span>
                                </span>--%>

																
								   <div class="title"> 
  	<samp class="title_left">&nbsp;</samp>
    <div class="title_bg">Test Instructions</div>
    <samp class="title_right">&nbsp;</samp>
 </div>
 <br>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
   <tbody><tr>
     <td colspan="2">
     
<span style="float:right;">

<%--<a href="index.aspx"> <img src="images/back_bt.gif" /> </a>
--%> 
</span>
<br>

  <br><br></td>
   </tr>
  <tr>
    <td colspan="2"><div align="center" class="instuction_th"><h3 style="margin:0px; padding:5px; color:#008dc2;"> Error Reporting  <br /><br /> </h3> </div></td>
   </tr>
   
   
  <%--<tr>
    <td width="6%" align="right" valign="top" class="mytd"><img src="http://fot-assets.s3.amazonaws.com/images/right_icon02.gif" alt="right icon"></td>
    <td width="94%" align="left" class="mytd" style="padding-left:5px;">Total number of questions&nbsp;
    
	15</td>
  </tr>--%>
 <tr><td colspan="2" align="center" valign="top"><div align="center">
    <img src="images/timeout.gif" /> 
 </div>
     
 </td></tr>
   
   <tr>
     <td colspan="2" align="center" valign="top"><div align="center"><h3>Oops!!!  Time Out </h3> </div></td>
     </tr>
  <tr>
  
   <td colspan="2" align="center" valign="top"><div align="center">
   
   <a href="index.aspx" style="text-decoration:none;">  <h3 id="btn" class="anchor_popup">  
   <asp:LinkButton ID="lnk_submit" runat="server" onclick="lnk_submit_Click"> Click Me !!</asp:LinkButton> 
 
   </h3></a>
<br>
 </div></td>
    </tr>
</tbody></table>
<script type="text/javascript">
function start_test(lnk){
		window.open(lnk, '_blank', 'width=1024,height=786,scrollbars=yes,status=no,resizable=no,screenx=0,screeny=0');
		return false;
	}
</script>
	                               
                                </div>  
                                       
                                      <div style="clear:both"></div>     
				</div>
    </div>
    </form>
</body>
</html>
