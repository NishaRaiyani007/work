
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="member" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript">
        function validation()
        
         {

            var name = document.getElementById("name");
            var Email = document.getElementById("mail");
            var Password = document.getElementById("password");
            var Mobil = document.getElementById("mob");

            if (name.value == null || name.value == "") {
                alert("Please Enter your Name");
                name.focus();
                return false;
            }
            else if (Email.value == null || Email.value == "") {
                alert("Please Enter Your Email-Id");
                Email.focus();
                return false;
            }
            else if (!(sadath(Email.value))) {
                alert("Please enter Valid E-Mail ID");
                Email.focus();
                return false;
            }
            else if (Password.value == null || Password.value == "") {
                alert("please enter your Password");
                Password.focus();
                return false;
            }
            else if (Mobil.value == null || Mobil.value == "") {
                alert("Please Enter Your Contact number");
                Mobil.focus();
                return false;
            }
            else if (isNaN(Mobil.value)) {
                alert("Please enter Valid Contact number");
                Phoneno.focus();
                return false;
            }





            else {
                return true;
            }

        }
        function sadath(str) {

            var reg = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;


            if (reg.test(str) == false) {

                return false;
            }
            else
                return true;

        }


    </script>
    <script type="text/javascript">

        function validationUsername() {

            var name = document.getElementById("txt_username");

            var Password = document.getElementById("txt_password");


            if (name.value == null || name.value == "") {
                alert("Please Enter your Username");
                name.focus();
                return false;
            }

            else if (Password.value == null || Password.value == "") {
                alert("please enter your Password");
                Password.focus();
                return false;
            }


            else {
                return true;
            }

        }
   
    </script>
    <script type="text/javascript">

        function processKey(e) {
            if (null == e)
                e = window.event;
            if (e.keyCode == 13) {
                document.getElementById("btn_submit").click();
                return false;
            }
        }


    </script>
    <script type="text/javascript" language="javascript">

        function DisableBackButton() {
            window.history.forward()
        }
        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function () { void (0) }
    </script>
    <style id="wrc-middle-css" type="text/css">
        .wrc_whole_window
        {
            display: none;
            position: fixed;
            z-index: 2147483647;
            background-color: rgba(40, 40, 40, 0.9);
            word-spacing: normal !important;
            margin: 0px !important;
            padding: 0px !important;
            border: 0px !important;
            left: 0px;
            top: 0px;
            width: 100%;
            height: 100%;
            line-height: normal !important;
            letter-spacing: normal !important;
            overflow: hidden;
        }
        .wrc_bar_window
        {
            display: none;
            position: fixed;
            z-index: 2147483647;
            background-color: rgba(60, 60, 60, 1.0);
            word-spacing: normal !important;
            font-family: Segoe UI, Arial Unicode MS, Arial, Sans-Serif;
            margin: 0px !important;
            padding: 0px !important;
            border: 0px !important;
            left: 0px;
            top: 0px;
            width: 100%;
            height: 40px;
            line-height: normal !important;
            letter-spacing: normal !important;
            color: white !important;
            font-size: 13px !important;
        }
        .wrc_middle
        {
            display: table-cell;
            vertical-align: middle;
            width: 100%;
        }
        .wrc_middle_main
        {
            font-family: Segoe UI, Arial Unicode MS, Arial, Sans-Serif;
            font-size: 14px;
            width: 600px;
            height: auto;
            background: url(chrome-extension://icmlaeflemplmjndnaapfdbbnpncnbda/skin/images/background-body.jpg) repeat-x left top;
            background-color: rgb(39, 53, 62);
            position: relative;
            margin-left: auto;
            margin-right: auto;
            text-align: left;
        }
        .wrc_middle_tq_main
        {
            font-family: Segoe UI, Arial Unicode MS, Arial, Sans-Serif;
            font-size: 16px;
            width: 615px;
            height: 460px;
            background: url(chrome-extension://icmlaeflemplmjndnaapfdbbnpncnbda/skin/images/background-sitecorrect.png) no-repeat;
            background-color: white;
            color: black !important;
            position: relative;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }
        .wrc_middle_logo
        {
            background: url(chrome-extension://icmlaeflemplmjndnaapfdbbnpncnbda/skin/images/logo.jpg) no-repeat left bottom;
            width: 140px;
            height: 42px;
            color: orange;
            display: table-cell;
            text-align: right;
            vertical-align: middle;
        }
        .wrc_icon_warning
        {
            margin: 20px 10px 20px 15px;
            float: left;
            background-color: transparent;
        }
        .wrc_middle_title
        {
            color: #b6bec7;
            height: auto;
            margin: 0px auto;
            font-size: 2.2em;
            white-space: nowrap;
            text-align: center;
        }
        .wrc_middle_hline
        {
            height: 2px;
            width: 100%;
            display: block;
        }
        .wrc_middle_description
        {
            text-align: center;
            margin: 15px;
            font-size: 1.4em;
            padding: 20px;
            height: auto;
            color: white;
            min-height: 3.5em;
        }
        .wrc_middle_actions_main_div
        {
            margin-bottom: 15px;
            text-align: center;
        }
        .wrc_middle_actions_blue_button div
        {
            display: inline-block;
            width: auto;
            cursor: Pointer;
            margin: 3px 10px 3px 10px;
            color: white;
            font-size: 1.2em;
            font-weight: bold;
        }
        .wrc_middle_actions_blue_button
        {
            -moz-appearance: none;
            border-radius: 7px;
            -moz-border-radius: 7px/7px;
            border-radius: 7px/7px;
            background-color: rgb(0, 173, 223) !important;
            display: inline-block;
            width: auto;
            cursor: Pointer;
            border: 2px solid #00dddd;
            padding: 0px 20px 0px 20px;
        }
        .wrc_middle_actions_blue_button:hover
        {
            background-color: rgb(0, 159, 212) !important;
        }
        .wrc_middle_actions_blue_button:active
        {
            background-color: rgb(0, 146, 200) !important;
            border: 2px solid #00aaaa;
        }
        .wrc_middle_actions_grey_button div
        {
            display: inline-block;
            width: auto;
            cursor: Pointer;
            margin: 3px 10px 3px 10px;
            color: white !important;
            font-size: 15px;
            font-weight: bold;
        }
        .wrc_middle_actions_grey_button
        {
            -moz-appearance: none;
            border-radius: 7px;
            -moz-border-radius: 7px/7px;
            border-radius: 7px/7px;
            background-color: rgb(100, 100, 100) !important;
            display: inline-block;
            width: auto;
            cursor: Pointer;
            border: 2px solid #aaaaaa;
            text-decoration: none;
            padding: 0px 20px 0px 20px;
        }
        .wrc_middle_actions_grey_button:hover
        {
            background-color: rgb(120, 120, 120) !important;
        }
        .wrc_middle_actions_grey_button:active
        {
            background-color: rgb(130, 130, 130) !important;
            border: 2px solid #00aaaa;
        }
        .wrc_middle_action_low
        {
            font-size: 0.9em;
            white-space: nowrap;
            cursor: Pointer;
            color: grey !important;
            margin: 10px 10px 0px 10px;
            text-decoration: none;
        }
        .wrc_middle_action_low:hover
        {
            color: #aa4400 !important;
        }
        .wrc_middle_actions_rest_div
        {
            padding-top: 5px;
            white-space: nowrap;
            text-align: center;
        }
        .wrc_middle_action
        {
            white-space: nowrap;
            cursor: Pointer;
            color: red !important;
            font-size: 1.2em;
            margin: 10px 10px 0px 10px;
            text-decoration: none;
        }
        .wrc_middle_action:hover
        {
            color: #aa4400 !important;
        }
    </style>
    <script id="wrc-script-middle_window" type="text/javascript" language="JavaScript">        var g_inputsCnt = 0; var g_InputThis = new Array(null, null, null, null); var g_alerted = false; /* we test the input if it includes 4 digits   (input is a part of 4 inputs for filling the credit-card number)*/function is4DigitsCardNumber(val) { var regExp = new RegExp('[0-9]{4}'); return (val.length == 4 && val.search(regExp) == 0); } /* testing the whole credit-card number 19 digits devided by three '-' symbols or   exactly 16 digits without any dividers*/function isCreditCardNumber(val) { if (val.length == 19) { var regExp = new RegExp('[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}'); return (val.search(regExp) == 0); } else if (val.length == 16) { var regExp = new RegExp('[0-9]{4}[0-9]{4}[0-9]{4}[0-9]{4}'); return (val.search(regExp) == 0); } return false; } function CheckInputOnCreditNumber(self) { if (g_alerted) return false; var value = self.value; if (self.type == 'text') { if (is4DigitsCardNumber(value)) { var cont = true; for (i = 0; i < g_inputsCnt; i++) if (g_InputThis[i] == self) cont = false; if (cont && g_inputsCnt < 4) { g_InputThis[g_inputsCnt] = self; g_inputsCnt++; } } g_alerted = (g_inputsCnt == 4); if (g_alerted) g_inputsCnt = 0; else g_alerted = isCreditCardNumber(value); } return g_alerted; } function CheckInputOnPassword(self) { if (g_alerted) return false; var value = self.value; if (self.type == 'password') { g_alerted = (value.length > 0); } return g_alerted; } function onInputBlur(self, bRatingOk, bFishingSite) { var bCreditNumber = CheckInputOnCreditNumber(self); var bPassword = CheckInputOnPassword(self); if ((!bRatingOk || bFishingSite == 1) && (bCreditNumber || bPassword)) { var warnDiv = document.getElementById("wrcinputdiv"); if (warnDiv) { 		/* show the warning div in the middle of the screen */warnDiv.style.left = "0px"; warnDiv.style.top = "0px"; warnDiv.style.width = "100%"; warnDiv.style.height = "100%"; document.getElementById("wrc_warn_fs").style.display = 'none'; document.getElementById("wrc_warn_cn").style.display = 'none'; if (bFishingSite) document.getElementById("wrc_warn_fs").style.display = 'block'; else document.getElementById("wrc_warn_cn").style.display = 'block'; warnDiv.style.display = 'table'; } } }</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="field" style="margin: 0 auto;">
        <!--==============================header=================================-->
        <header>

    	<div class="main">
    	      <div style="padding-left: 4px;">
      <a href="index.aspx"><img src="images/logo.jpg" /></a> <img src="images/twitter_icon.png" style="padding-left:75px;"/>
              <a href="https://www.facebook.com/ImportPoTracking"> <img src="images/facebookicon.png" style="padding-left:10px;" /></a>
<img src="images/linkedin.png" style="padding-left:10px;"/>
     </div>
    	<div id="slide" class="slide1">
            <div class="slider slide1 " style="overflow: hidden;">
                 
                <param name="movie" value="piotnew.swf" />
<embed src="piotnew.swf" width="950" height="350" wmode="transparent">
</embed>       
                </div>  
                <div class="slider-line"></div>               
            </div>
      
            <nav style="background: #af0000;">
                <ul class="sf-menu sf-js-enabled">
               
            
                    <li><a class="active" href="Index.aspx">Become a member</a></li>
                 
               
                </ul>
                <div class="clear"></div>
            </nav>
        </div>
    </header>
        <!--==============================content================================-->
        <section id="content">
        <div class="container_24">
        	<div class="wrapper border5">
            	<article class="grid_24">
            	
            	<fieldset style="border:solid 1px red; border-radius:8px;">
            	<table style=" margin-top:25px">
            	<%--<tr><td>
            	<img src="images/member.jpg" />
            	</td></tr>--%>
            	
                	<tr>
                	<td style="padding-left: 100px;">
                	   <article class="grid_6 alpha">
                	   <fieldset>
                	   <legend>
                	     <h3 class="p14" style=" font-size:22px;">Register Here</h3><br />
                	   </legend>
                	   <table>
  
                                        <tr>
                                            <td style="padding-left:14px;">
                                                <center>
                                                    <asp:Label ID="Label1" runat="server" Visible="false" ForeColor="#33cc33"></asp:Label>
                                                </center>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b style="color:#333333;">User Name &nbsp</b>
                                            </td>
                                            <td style="padding-bottom:20px">
                                                <asp:TextBox ID="name" runat="server" CssClass="tb10" ForeColor="#000"></asp:TextBox>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td>
                                                <b style="color: #333333;">E-Mail &nbsp</b>
                                            </td>
                                            <td style="padding-bottom:20px">
                                                <asp:TextBox ID="mail" runat="server" CssClass="tb10" ForeColor="#000"></asp:TextBox>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td>
                                                <b style="color: #333333;">Mobile&nbsp</b>
                                            </td>
                                            <td style="padding-bottom:20px">
                                                <asp:TextBox ID="mob" runat="server" CssClass="tb10" ForeColor="#000" 
                                                    MaxLength="10" ValidationGroup="1"></asp:TextBox>
                                            </td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ErrorMessage="Please enter password" ControlToValidate="mob" 
                                    Display="None"></asp:RequiredFieldValidator>
                                        </tr>
                                        
                                        <tr>
                                            <td>
                                                <b style="color: #333333;">Password &nbsp</b>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="password" CssClass="tb10" runat="server" TextMode="Password" ForeColor="#000" ></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td class="style1" colspan="2">
                                                <center>
                                                    <table>
                                                        <tr>
                                                            <td style="padding-left:9px; padding-top:19px">
                                                                <asp:ImageButton ID="btn_join" Style="width: 60px; height: 24px;" 
                                                                    runat="server" ImageUrl="~/images/join.PNG"
                                                                    CssClass="btnprimary-btn" OnClick="btn_join_Click" 
                                                                    OnClientClick="return validation()" ValidationGroup="1" />
                                                                <%--<asp:LinkButton ID="btn_submit" runat="server" Style="width: 81px;" Text="Login" CssClass="btn primary-btn"
                                                                    OnClick="btn_submit_Click"></asp:LinkButton>--%>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <%--<tr>
                                                            <td style="font-size: smaller; padding-right: 34px;">
                                                                <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="10px" ForeColor="#026C86"
                                                                    Font-Bold="true" OnClick="forgotpwd" Font-Italic="true">Forgot Password..?</asp:LinkButton>
                                                            </td>
                                                        </tr>--%>
                                                        
                                                        <tr><td>
                                                        <asp:Label ID="Labeljoin" runat="server" ForeColor="#33cc33"></asp:Label>
                                                        
                                                        </td></tr>
                                                    </table>
                                                </center>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                	   </fieldset>
                  
                    	
                    </article>
                	</td>
                	<td style="padding-left:0px;">
                	
                	<table><tr><td>
                	<img src="images/community2.png" width="300px" style=" padding-top:70px;" />
                	</td>
                	<td>
                	 <article class="grid_6 alpha">
                    <h3 class="p14" style=" font-size:22px;">Registered User</h3><br />
                    	<table>
  
  
  
                                        <tr>
                                            <td style="padding-left:14px;">
                                                <center>
                                                    <asp:Label ID="Label2" runat="server" Visible="false" ForeColor="#CCCCCC"></asp:Label>
                                                </center>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b style="color: #333333;">User &nbsp</b>
                                            </td>
                                            <td style="padding-bottom:20px">
                                                <asp:TextBox ID="txt_username" runat="server" CssClass="tb10"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b style="color: #333333;">Password &nbsp</b>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_password" CssClass="tb10" runat="server" TextMode="Password" onkeydown="return processKey(event)"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td class="style1" colspan="2">
                                                <center>
                                                    <table>
                                                        <tr>
                                                            <td style="padding-left:9px; padding-top:19px">
                                                                <asp:ImageButton ID="btn_submit" Style="width: 60px; height: 24px;" runat="server" ImageUrl="~/images/signin.PNG" CausesValidation="false"
                                                                 CssClass="btnprimary-btn" OnClick="btn_submit_Click" OnClientClick="return validationUsername()" />
                                                                <%--OnClick="btn_submit_Click"<asp:LinkButton ID="btn_submit" runat="server" Style="width: 81px;" Text="Login" CssClass="btn primary-btn"
                                                                    OnClick="btn_submit_Click"></asp:LinkButton>--%>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <%--<tr>
                                                            <td style="font-size: smaller; padding-right: 34px;">
                                                                <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="10px" ForeColor="#026C86"
                                                                    Font-Bold="true" OnClick="forgotpwd" Font-Italic="true">Forgot Password..?</asp:LinkButton>
                                                            </td>
                                                        </tr>--%>
                                                        
                                                        <tr><td>
                                                        <asp:Label ID="Labellogin" runat="server" ForeColor="#33cc33"></asp:Label>
                                                        
                                                        </td></tr>
                                                    </table>
                                                </center>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                    </article>
                	</td>
                	</tr></table>
                	
                	   
                	</td>
                	</tr></table>
            	</fieldset>
                	
                 
                
                </article>
            </div>
           
        </div>
    </section>
        <!--==============================footer=================================-->
        <footer>
        <div class="main">
        <fieldset style="border:solid 1px #acbb74;border-radius:8px;background-color:#acbb74;">
          
       
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
