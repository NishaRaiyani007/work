<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
   <title>Home</title>
  
    <link rel="stylesheet" href="css/style.css">
   
<style id="wrc-middle-css" type="text/css">.wrc_whole_window{	display: none;	position: fixed; 	z-index: 2147483647;	background-color: rgba(40, 40, 40, 0.9);	word-spacing: normal !important;	margin: 0px !important;	padding: 0px !important;	border: 0px !important;	left: 0px;	top: 0px;	width: 100%;	height: 100%;	line-height: normal !important;	letter-spacing: normal !important;	overflow: hidden;}.wrc_bar_window{	display: none;	position: fixed; 	z-index: 2147483647;	background-color: rgba(60, 60, 60, 1.0);	word-spacing: normal !important;	font-family: Segoe UI, Arial Unicode MS, Arial, Sans-Serif;	margin: 0px !important;	padding: 0px !important;	border: 0px !important;	left: 0px;	top: 0px;	width: 100%;	height: 40px;	line-height: normal !important;	letter-spacing: normal !important;	color: white !important;	font-size: 13px !important;}.wrc_middle {	display: table-cell;	vertical-align: middle;	width: 100%;}.wrc_middle_main {	font-family: Segoe UI, Arial Unicode MS, Arial, Sans-Serif;	font-size: 14px;	width: 600px;	height: auto;    background: url(chrome-extension://icmlaeflemplmjndnaapfdbbnpncnbda/skin/images/background-body.jpg) repeat-x left top;	background-color: rgb(39, 53, 62);	position: relative;	margin-left: auto;	margin-right: auto;	text-align: left;}.wrc_middle_tq_main {	font-family: Segoe UI, Arial Unicode MS, Arial, Sans-Serif;	font-size: 16px;	width: 615px;	height: 460px;    background: url(chrome-extension://icmlaeflemplmjndnaapfdbbnpncnbda/skin/images/background-sitecorrect.png) no-repeat;	background-color: white;	color: black !important;	position: relative;	margin-left: auto;	margin-right: auto;	text-align: center;}.wrc_middle_logo {    background: url(chrome-extension://icmlaeflemplmjndnaapfdbbnpncnbda/skin/images/logo.jpg) no-repeat left bottom;    width: 140px;    height: 42px;    color: orange;    display: table-cell;    text-align: right;    vertical-align: middle;}.wrc_icon_warning {	margin: 20px 10px 20px 15px;	float: left;	background-color: transparent;}.wrc_middle_title {    color: #b6bec7;	height: auto;    margin: 0px auto;	font-size: 2.2em;	white-space: nowrap;	text-align: center;}.wrc_middle_hline {    height: 2px;	width: 100%;    display: block;}.wrc_middle_description {	text-align: center;	margin: 15px;	font-size: 1.4em;	padding: 20px;	height: auto;	color: white;	min-height: 3.5em;}.wrc_middle_actions_main_div {	margin-bottom: 15px;	text-align: center;}.wrc_middle_actions_blue_button div {	display: inline-block;	width: auto;	cursor: Pointer;	margin: 3px 10px 3px 10px;	color: white;	font-size: 1.2em;	font-weight: bold;}.wrc_middle_actions_blue_button {	-moz-appearance: none;	border-radius: 7px;	-moz-border-radius: 7px/7px;	border-radius: 7px/7px;	background-color: rgb(0, 173, 223) !important;	display: inline-block;	width: auto;	cursor: Pointer;	border: 2px solid #00dddd;	padding: 0px 20px 0px 20px;}.wrc_middle_actions_blue_button:hover {	background-color: rgb(0, 159, 212) !important;}.wrc_middle_actions_blue_button:active {	background-color: rgb(0, 146, 200) !important;	border: 2px solid #00aaaa;}.wrc_middle_actions_grey_button div {	display: inline-block;	width: auto;	cursor: Pointer;	margin: 3px 10px 3px 10px;	color: white !important;	font-size: 15px;	font-weight: bold;}.wrc_middle_actions_grey_button {	-moz-appearance: none;	border-radius: 7px;	-moz-border-radius: 7px/7px;	border-radius: 7px/7px;	background-color: rgb(100, 100, 100) !important;	display: inline-block;	width: auto;	cursor: Pointer;	border: 2px solid #aaaaaa;	text-decoration: none;	padding: 0px 20px 0px 20px;}.wrc_middle_actions_grey_button:hover {	background-color: rgb(120, 120, 120) !important;}.wrc_middle_actions_grey_button:active {	background-color: rgb(130, 130, 130) !important;	border: 2px solid #00aaaa;}.wrc_middle_action_low {	font-size: 0.9em;	white-space: nowrap;	cursor: Pointer;	color: grey !important;	margin: 10px 10px 0px 10px;	text-decoration: none;}.wrc_middle_action_low:hover {	color: #aa4400 !important;}.wrc_middle_actions_rest_div {	padding-top: 5px;	white-space: nowrap;	text-align: center;}.wrc_middle_action {	white-space: nowrap;	cursor: Pointer;	color: red !important;	font-size: 1.2em;	margin: 10px 10px 0px 10px;	text-decoration: none;}.wrc_middle_action:hover {	color: #aa4400 !important;}</style><script id="wrc-script-middle_window" type="text/javascript" language="JavaScript">var g_inputsCnt = 0;var g_InputThis = new Array(null, null, null, null);var g_alerted = false;/* we test the input if it includes 4 digits   (input is a part of 4 inputs for filling the credit-card number)*/function is4DigitsCardNumber(val){	var regExp = new RegExp('[0-9]{4}');	return (val.length == 4 && val.search(regExp) == 0);}/* testing the whole credit-card number 19 digits devided by three '-' symbols or   exactly 16 digits without any dividers*/function isCreditCardNumber(val){	if(val.length == 19)	{		var regExp = new RegExp('[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}');		return (val.search(regExp) == 0);	}	else if(val.length == 16)	{		var regExp = new RegExp('[0-9]{4}[0-9]{4}[0-9]{4}[0-9]{4}');		return (val.search(regExp) == 0);	}	return false;}function CheckInputOnCreditNumber(self){	if(g_alerted)		return false;	var value = self.value;	if(self.type == 'text')	{		if(is4DigitsCardNumber(value))		{			var cont = true;			for(i = 0; i < g_inputsCnt; i++)				if(g_InputThis[i] == self)					cont = false;			if(cont && g_inputsCnt < 4)			{				g_InputThis[g_inputsCnt] = self;				g_inputsCnt++;			}		}		g_alerted = (g_inputsCnt == 4);		if(g_alerted)			g_inputsCnt = 0;		else			g_alerted = isCreditCardNumber(value);	}	return g_alerted;}function CheckInputOnPassword(self){	if(g_alerted)		return false;	var value = self.value;	if(self.type == 'password')	{		g_alerted = (value.length > 0);	}	return g_alerted;}function onInputBlur(self, bRatingOk, bFishingSite){	var bCreditNumber = CheckInputOnCreditNumber(self);	var bPassword = CheckInputOnPassword(self);	if((!bRatingOk || bFishingSite == 1) && (bCreditNumber || bPassword) )	{		var warnDiv = document.getElementById("wrcinputdiv");		if(warnDiv)		{			/* show the warning div in the middle of the screen */			warnDiv.style.left = "0px";			warnDiv.style.top = "0px";			warnDiv.style.width = "100%";			warnDiv.style.height = "100%";			document.getElementById("wrc_warn_fs").style.display = 'none';			document.getElementById("wrc_warn_cn").style.display = 'none';			if(bFishingSite)				document.getElementById("wrc_warn_fs").style.display = 'block';			else				document.getElementById("wrc_warn_cn").style.display = 'block';			warnDiv.style.display = 'table';		}	}}</script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="field" style="margin:0 auto;">
    <!--==============================header=================================-->
      <header>

    	<div class="main">
    	     <div style="padding-left: 10px;">
     <img src="images/LOGOIPOT_new.jpg" />
     </div>
    	<div id="slide" class="slide1">
            <div class="slider slide1 " style="overflow: hidden;">
                 
                <param name="movie" value="piotnew.swf" />
<embed src="piotnew.swf" width="950" height="350" wmode="transparent">
</embed>       
                </div>  
                <div class="slider-line"></div>               
            </div>
        
            <nav>
                <ul class="sf-menu sf-js-enabled">
                    <li><a class="active" href="Default.aspx">home</a></li>
                
                    </li>
                  
                    <li><a href="Index.aspx">become a member</a></li>
                
                    <li class="last4"><a class="last3" href="contact.aspx">contacts</a></li>
                </ul>
                <div class="clear"></div>
            </nav>
        </div>
    </header>
    
	<!--==============================content================================-->
    <section id="content">
        <div class="container_24">
        	<div class="wrapper">
            	<article class="grid_7">
                	<h3 class="p23">contact info</h3>
                    <figure class="page6-img1 img-bot">
                            <iframe width="268" height="240" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed">
                            </iframe>
                        </figure>
                        <div class="clear"></div>
                         <dl class="dl1">
                            <dt>The Company Name Inc. 8901 Marmora Road, Glasgow, D04 89GR.</dt>   
                            <dd><span>Freephone:</span>   +1 800 559 6580</dd>                                  
                            <dd><span>Telephone:</span>   +1 800 603 6035</dd> 
                            <dd><span>FAX:</span>   +1 800 889 9898 </dd>                                
                            <dd>E-mail: <a href="#">RNH@recruitment.in</a></dd>
                        </dl>
                </article>
                <article class="grid_13 push_1">
                	<h3>get in touch</h3>
                     <form id="form2">
                        <div class="success" style="display: none;">Contact form submitted!<strong> We will be in touch soon.</strong></div>
                          <fieldset>
                              <label class="name">
                                    <input type="text" value="Name:">
                                    <span class="error" style="display: none;">*This is not a valid name.</span> <span class="empty" style="display: none;">*This field is required.</span> 
                                </label>                                        
                                <label class="email">
                                    <input type="text" value="E-mail:">
                                    <span class="error" style="display: none;">*This is not a valid email address.</span> <span class="empty" style="display: none;">*This field is required.</span> 
                                </label> 
                                 <label class="phone">
                                    <input type="tel" value="Phone:">
                                    <span class="error" style="display: none;">*This is not a valid phone number.</span> <span class="empty" style="display: none;">*This field is required.</span> 
                                </label>                                                                    
                               <label class="message">
                              <textarea>Message</textarea>
                              <span class="error" style="display: none;">*The message is too short.</span> <span class="empty" style="display: none;">*This field is required.</span> </label>
                              <div class="clear"></div>
                              <div class="link-form">      
                              <a class="link2 p27" href="#" data-type="reset">clear</a>                         
                              <a class="link2" href="#" data-type="submit">submit</a>                              
                              </div>											
                          </fieldset>           
                      </form>
                </article>
            </div>
        </div>
    </section>
    
	<!--==============================footer=================================-->
      <footer>
        <div class="main">
        <fieldset style="border:solid 1px #acbb74;border-radius:8px;background-color:#acbb74;">
          
       
        <div class="foot-page1">
        	  <div class="foot-page1">
        	<div style="color: white;">
            	<center>RNH
                <strong>Recruitment © 2013</strong></center>
            </div>
    
            <div class="clear"></div>
        </div>  </fieldset>     
        </div>
    </footer>
    </div>
    </form>
</body>
</html>
