<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userexam.aspx.cs" Inherits="userexam" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Online Test</title>
  
  
   <%-- <link href="/_files/css/css-alpha-06-2.css" type="text/css" rel="stylesheet" media="screen" />
       <script async="" src="http://de.tynt.com/deb/v2?id=w!me6p6kut7le4&amp;r=www.indiabix.com%2Fonline-test%2Faptitude-test%2F"></script>
       <script async="" type="text/javascript" src="http://whos.amung.us/pingjs/?k=me6p6kut7le4&amp;t=Online%20Aptitude%20Test%20-%20Aptitude%20Test%201&amp;c=s&amp;y=http%3A%2F%2Fwww.indiabix.com%2Fonline-test%2Faptitude-test%2F&amp;a=0&amp;r=73628"></script><script async="" type="text/javascript" src="http://cdn.tynt.com/tc.js"></script><script src="/_files/js/js-alpha-07.js" type="text/javascript"></script>  
       <link href="/favicon.ico" type="image/x-icon" rel="shortcut icon" />
--%>
<style type="text/css">

body *
{
    font-family: Verdana, sans-serif;
    font-size: 12px;
}

body
{
    margin: 0;
    padding-top: 5px;
}

h1 
{
    font-family: 'Trebuchet MS', Tahoma, Verdana, sans-serif; 
    font-size: 17px;    
    padding: 5px;
    padding-left: 0px;
    color: #808080;
} 

a 
{
    color: #2ba2cd; 
    text-decoration: none; 
}

img
{
    vertical-align: middle;
    border: 0px;
}

/* ---------------------------------------------------------- */

a:hover 
{
    text-decoration: underline;
}

hr.bar
{
    BORDER-TOP-WIDTH: 0px;
    BORDER-LEFT-WIDTH: 0px; 
    BORDER-BOTTOM-WIDTH: 0px; 
    COLOR: #d4d4d4;       
    HEIGHT: 5px; 
    BACKGROUND-COLOR: #f2f2f2; 
    BORDER-RIGHT-WIDTH: 0px
}

/* ---------------------------------------------------------- */

.tp-p-instruction
{
    padding-left: 15px;
    background-image: url('/_files/images/website/arrow-bullet.gif');
    background-position: left;
    background-repeat: no-repeat;
    color: #808080;        
}

/* ---------------------------------------------------------- */

.tp-page-wrap 
{
    width: 990px;
    text-align: left;
    margin: 0 auto;
    padding: 0px;
}

.div-tabs-container
{
   padding: 10px;

}

    .div-tab-container 
    {
        padding: 10px;
    }
        
/* ---------------------------------------------------------- */

.tbl-menu *
{
        font-size: 11px;
}

    .tbl-menu td
    {
        padding: 4px;
        font-size: 11px;
        font-weight: bold;
    }
    
    .tbl-menu td.normal
    {
        padding: 5px;  
        background-image: url('/_files/images/website/bg-blue-menu.gif');
        background-repeat: repeat-x;
        border-right : 1px solid #fff; 
        border-bottom : 1px solid #fff; ; 
    }
    
    .tbl-menu td.current
    {
        border-bottom: 0px; 
        border-right : 1px solid #fff;   
        background-image: url('/_files/images/website/bg-green-menu.gif');
        background-repeat: repeat-x; 
    }
     
    .tbl-menu td.disabled
    {
        padding: 5px;  
        background-image: url('/_files/images/website/bg-gray-menu.png');
        background-repeat: repeat-x;
        border-right : 1px solid #fff; 
        border-bottom : 1px solid #fff; ; 
    }
     
    .tbl-menu td a.menu
    {
        font-family: Verdana, Tahoma, sans-serif;
        font-size: 11px;
        color: #fff;
        font-weight: bold;
        padding-right: 10px;
        padding-left: 10px;
        text-decoration: none; 
    }

    .tbl-menu td a.menu:hover
    {
         color: #E1FFE9;
    }

/* ---------------------------------------------------------- */
    
.bix-div-container
{
    width: 100%;
} 

    .bix-td-direction
    {
        border: 1px solid #ddd;
        border-left: 5px solid #eee;
        padding: 5px;
    }    
    
        .bix-td-direction  p, .bix-td-direction li
        {   
            font-family: Arial, Verdana;
            font-size: 13px;
            padding: 0px;
        }

    .bix-tbl-container
    {
        margin-bottom: 20px;
        border-bottom: 1px dashed gray;
    }  

        .bix-td-qno
        {
            font-family: Verdana, Arial, Tahoma;
            font-size: 12px;
            width:30px;
            padding-top: 5px;
        }

        .bix-td-qtxt
        {
            font-family: Verdana, Arial, Tahoma;
            font-size: 12px;
            line-height: 17px;
            padding-top: 5px;
        }

        .bix-td-option 
        {
            font-family: Verdana, Tahoma;
            padding:5px;
            margin: 5px;
            font-size: 12px;
            border: 2px solid #FFFFFF;
        }
        
        .bix-td-radio
        {
            padding-bottom: 10px;
            
        }
            
        .bix-inner-td-option
        {
            font-family: Verdana, Tahoma, Arial;
            font-size: 12px;
        }
        
        .bix-div-answer
        {
            margin-top: 5px;
            margin-bottom: 10px;
            border-left: 5px solid #ddf8c2;
            padding-left: 10px;
        }        
        
/* ---------------------------------------------------------- */ 
        
.tp-div-submit
{        
    background-color: #fbfbfb;
    margin-top:20px; 
    padding:10px; 
    border: 1px dashed #ccc;
}

.tp-td-rightinfo
{
    padding: 15px;
}

.tp-td-rightinfo *
{
    font-family: Tahoma, Verdana, sans-serif;
    font-size: 12px;
}

.ib-green
{
    color: #5eac1a;
}
     
.ib-dgray
{
    color: #606060;
} 

.ib-gray
{
    color: #808080;
}

.ib-answered
{
    font-weight: bold;
    color: #5eac1a;
    font-size: 15px;
}   


.style
{ 
    background-color: #2e6ab1;
color: #FFF !important;
border-color: #2b66a5;
font-weight: bold;
cursor: default;
text-decoration:none;
border-radius:3px;
padding:3px 3px 3px 3px;
cursor:pointer;
}

.style:visited
{ 
     background-color: #fff;
color: #FFF !important;
border-color: #2b66a5;
font-weight: bold;
cursor: default;
text-decoration:none;
border-radius:3px;
padding:3px 3px 3px 3px;
cursor:pointer;
}

.style:hover
{
     background-color: #333;
color: #FFF !important;
border-color: #2b66a5;
font-weight: bold;
cursor: default;
text-decoration:none;
border-radius:3px;
padding:3px 3px 3px 3px;
cursor:pointer;
}   


.style1
{ 
    background-color: #333;
color: #FFF !important;
border-color: #2b66a5;
font-weight: bold;
cursor: default;
text-decoration:none;
border-radius:3px;
padding:3px 3px 3px 3px;
cursor:pointer;
}

.style1:visited
{ 
     background-color: #fff;
color: #FFF !important;
border-color: #2b66a5;
font-weight: bold;
cursor: default;
text-decoration:none;
border-radius:3px;
padding:3px 3px 3px 3px;
cursor:pointer;
}

.style1:hover
{
     background-color: #2e6ab1;
color: #FFF !important;
border-color: #2b66a5;
font-weight: bold;
cursor: default;
text-decoration:none;
border-radius:3px;
padding:3px 3px 3px 3px;
cursor:pointer;
} 


.style2
{ 
    background-color: #FF0000;
color: #FFF !important;
border-color: #2b66a5;
font-weight: bold;
cursor: default;
text-decoration:none;
border-radius:3px;
padding:3px 3px 3px 3px;
cursor:pointer;
}

.style2:visited
{ 
     background-color: #fff;
color: #FFF !important;
border-color: #2b66a5;
font-weight: bold;
cursor: default;
text-decoration:none;
border-radius:3px;
padding:3px 3px 3px 3px;
cursor:pointer;
}

.style2:hover
{
     background-color: #2e6ab1;
color: #FFF !important;
border-color: #2b66a5;
font-weight: bold;
cursor: default;
text-decoration:none;
border-radius:3px;
padding:3px 3px 3px 3px;
cursor:pointer;
} 
</style>

<script type="text/javascript">

//    function Checkradiobuttonlist() {
//        var radiobutton = document.getElementById("RblOption");
//        if (vchk.checked == 1) {

//            return true;
//        }
//        else {
//            alert("Please Accept The Conditions")
//            return false;
//        }
    //    }


//    function IsChecked() {
//        var rblActive = document.getElementById("<%=RblOption.ClientID %>");
//        var item = rblActive.getElementsByTagName("input");
//        var IsItemChecked = false;
//        for (var i = 0; i < item.Length; i++) {
//            if (item[i].checked) {
//                IsItemChecked = true;
//            }

//        }
//        if (IsItemChecked == false) {
//            alert("Please select your options first !!");
//            rblActive.focus();
//            return false;
//        }
//        return true;
    //    }


//    function IsChecked() {
//        var count = 0;
//        $("input[type=radio]").each(function() {
//            if ($(this).attr('checked')) {
//                count++;
//            }

//        });

//        if (count > 0) {
//            return true;
//        }
//        else {
//            alert("No Row Selected");
//            return false;
//        }
    //    }


//    function IsChecked()
//    {
//        if (document.getElementById("RblOption").checked == false)
//    {
//    var answer = confirm ("Please confirm selection...")
//    if (answer)
//    return true;
//    else
//    return false;
//    }         
//    return true;
    //    }


//    function IsChecked() {
//        var check = document.getElementByid("RblOption").checked;
//        if (check == false) {
//            alert("check  item")

//            return false;
//        }



//        return true;
//    }
    //

    function IsChecked() {
        if ((document.frm.RblOption[0].checked == false) && (document.frm.RblOption[1].checked == false) && (document.frm.RblOption[2].checked == false) && (document.frm.RblOption[3].checked == false)) {
            alert("Select Option!");
            return false;
        }
        else {
            return true;
        }
    }
</script>


<style id="wrc-middle-css" type="text/css">
    .wrc_whole_window{	display: none;	position: fixed; 	z-index: 2147483647;	word-spacing: normal !important;	margin: 0px !important;	padding: 0px !important;	border: 0px !important;	left: 0px;	top: 0px;	width: 100%;	height: 100%;	line-height: normal !important;	letter-spacing: normal !important;	overflow: hidden;}.wrc_bar_window{	display: none;	position: fixed; 	z-index: 2147483647;	background-color: rgba(60, 60, 60, 1.0);	word-spacing: normal !important;	font-family: Segoe UI, Arial Unicode MS, Arial, Sans-Serif;	margin: 0px !important;	padding: 0px !important;	border: 0px !important;	left: 0px;	top: 0px;	width: 100%;	height: 40px;	line-height: normal !important;	letter-spacing: normal !important;	color: white !important;	font-size: 13px !important;}.wrc_middle {	display: table-cell;	vertical-align: middle;	width: 100%;}.wrc_middle_main {	font-family: Segoe UI, Arial Unicode MS, Arial, Sans-Serif;	font-size: 14px;	width: 600px;	height: auto;    background: url(chrome-extension://icmlaeflemplmjndnaapfdbbnpncnbda/skin/images/background-body.jpg) repeat-x left top;	background-color: rgb(39, 53, 62);	position: relative;	margin-left: auto;	margin-right: auto;	text-align: left;}.wrc_middle_tq_main {	font-family: Segoe UI, Arial Unicode MS, Arial, Sans-Serif;	font-size: 16px;	width: 615px;	height: 460px;    background: url(chrome-extension://icmlaeflemplmjndnaapfdbbnpncnbda/skin/images/background-sitecorrect.png) no-repeat;	background-color: white;	color: black !important;	position: relative;	margin-left: auto;	margin-right: auto;	text-align: center;}.wrc_middle_logo {    background: url(chrome-extension://icmlaeflemplmjndnaapfdbbnpncnbda/skin/images/logo.jpg) no-repeat left bottom;    width: 140px;    height: 42px;    color: orange;    display: table-cell;    text-align: right;    vertical-align: middle;}.wrc_icon_warning {	margin: 20px 10px 20px 15px;	float: left;	background-color: transparent;}.wrc_middle_title {    color: #b6bec7;	height: auto;    margin: 0px auto;	font-size: 2.2em;	white-space: nowrap;	text-align: center;}.wrc_middle_hline {    height: 2px;	width: 100%;    display: block;}.wrc_middle_description {	text-align: center;	margin: 15px;	font-size: 1.4em;	padding: 20px;	height: auto;	color: white;	min-height: 3.5em;}.wrc_middle_actions_main_div {	margin-bottom: 15px;	text-align: center;}.wrc_middle_actions_blue_button div {	display: inline-block;	width: auto;	cursor: Pointer;	margin: 3px 10px 3px 10px;	color: white;	font-size: 1.2em;	font-weight: bold;}.wrc_middle_actions_blue_button {	-moz-appearance: none;	border-radius: 7px;	-moz-border-radius: 7px/7px;	border-radius: 7px/7px;	background-color: rgb(0, 173, 223) !important;	display: inline-block;	width: auto;	cursor: Pointer;	border: 2px solid #00dddd;	padding: 0px 20px 0px 20px;}.wrc_middle_actions_blue_button:hover {	background-color: rgb(0, 159, 212) !important;}.wrc_middle_actions_blue_button:active {	background-color: rgb(0, 146, 200) !important;	border: 2px solid #00aaaa;}.wrc_middle_actions_grey_button div {	display: inline-block;	width: auto;	cursor: Pointer;	margin: 3px 10px 3px 10px;	color: white !important;	font-size: 15px;	font-weight: bold;}.wrc_middle_actions_grey_button {	-moz-appearance: none;	border-radius: 7px;	-moz-border-radius: 7px/7px;	border-radius: 7px/7px;	background-color: rgb(100, 100, 100) !important;	display: inline-block;	width: auto;	cursor: Pointer;	border: 2px solid #aaaaaa;	text-decoration: none;	padding: 0px 20px 0px 20px;}.wrc_middle_actions_grey_button:hover {	background-color: rgb(120, 120, 120) !important;}.wrc_middle_actions_grey_button:active {	background-color: rgb(130, 130, 130) !important;	border: 2px solid #00aaaa;}.wrc_middle_action_low {	font-size: 0.9em;	white-space: nowrap;	cursor: Pointer;	color: grey !important;	margin: 10px 10px 0px 10px;	text-decoration: none;}.wrc_middle_action_low:hover {	color: #aa4400 !important;}.wrc_middle_actions_rest_div {	padding-top: 5px;	white-space: nowrap;	text-align: center;}.wrc_middle_action {	white-space: nowrap;	cursor: Pointer;	color: red !important;	font-size: 1.2em;	margin: 10px 10px 0px 10px;	text-decoration: none;}.wrc_middle_action:hover {	color: #aa4400 !important;}</style>
    <script id="wrc-script-middle_window" type="text/javascript" language="JavaScript">
        var g_inputsCnt = 0; var g_InputThis = new Array(null, null, null, null); var g_alerted = false;
        /* we test the input if it includes 4 digits   (input is a part of 4 inputs for filling the credit-card number)*/function is4DigitsCardNumber(val) { var regExp = new RegExp('[0-9]{4}'); return (val.length == 4 && val.search(regExp) == 0); } /* testing the whole credit-card number 19 digits devided by three '-' symbols or   exactly 16 digits without any dividers*/
    function isCreditCardNumber(val){	if(val.length == 19)	
    {		var regExp = new RegExp('[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}');		return (val.search(regExp) == 0);	}	else if(val.length == 16)	{		var regExp = new RegExp('[0-9]{4}[0-9]{4}[0-9]{4}[0-9]{4}');		return (val.search(regExp) == 0);	}	return false;}function CheckInputOnCreditNumber(self){	if(g_alerted)		return false;	var value = self.value;	if(self.type == 'text')	{		if(is4DigitsCardNumber(value))		{			var cont = true;			for(i = 0; i < g_inputsCnt; i++)				if(g_InputThis[i] == self)					cont = false;			if(cont && g_inputsCnt < 4)			{				g_InputThis[g_inputsCnt] = self;				g_inputsCnt++;			}		}		g_alerted = (g_inputsCnt == 4);		if(g_alerted)			g_inputsCnt = 0;		else			g_alerted = isCreditCardNumber(value);	}	return g_alerted;}function CheckInputOnPassword(self){	if(g_alerted)		return false;	var value = self.value;	if(self.type == 'password')	{		g_alerted = (value.length > 0);	}	return g_alerted;}function onInputBlur(self, bRatingOk, bFishingSite){	var bCreditNumber = CheckInputOnCreditNumber(self);	var bPassword = CheckInputOnPassword(self);	if((!bRatingOk || bFishingSite == 1) && (bCreditNumber || bPassword) )	{		var warnDiv = document.getElementById("wrcinputdiv");		if(warnDiv)		{			/* show the warning div in the middle of the screen */			warnDiv.style.left = "0px";			warnDiv.style.top = "0px";			warnDiv.style.width = "100%";			warnDiv.style.height = "100%";			document.getElementById("wrc_warn_fs").style.display = 'none';			document.getElementById("wrc_warn_cn").style.display = 'none';			if(bFishingSite)				document.getElementById("wrc_warn_fs").style.display = 'block';			else				document.getElementById("wrc_warn_cn").style.display = 'block';			warnDiv.style.display = 'table';		}	}}</script>
    
    
    <style type="text/css">
.lblfont
{
	font-family:Calibri; font-size:15px;
	
}
	
	.border
{
	    border-radius:8px;
	    
	    }
</style>

    <link href="css/start.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js" type="text/javascript"></script>
  <script src="Scripts/jquery-1.4.1-vsdoc.js" type="text/javascript"></script>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script language ="javascript">

        var str1 = new String();
        var lmin;
        var lsec;
        var leftmin = 20;
        var leftsec = 59;
        $(document).ready(function() {
            str1 = document.getElementById("lefttime").value;
            if (parseInt(document.getElementById("statusid").value) > 0) {
                leftmin = str1.substring(0, 2);
                leftsec = str1.substring(3, 5)
                getremainingtim();
            }
            else {


            }
        });
        var timleft;
        function getremainingtim() {

            if (parseInt(leftsec) > 0) {
                leftsec = parseInt(leftsec) - 1;
                document.getElementById("showlefttime").innerHTML = "Your Left Time  is :" + leftmin + " Minutes ," + leftsec + " Seconds";

            }
            else {
                if (parseInt(leftsec) == 0) {
                    leftmin = parseInt(leftmin) - 1;
                    if (parseInt(leftmin) < 0 && parseInt(leftsec) == 0) {
                        document.getElementById("showlefttime").innerHTML = "Your Time is Over";
                        clearTimeout(timleft);
                        fget();

                    }
                    else {
                        leftsec = 59;
                        document.getElementById("showlefttime").innerHTML = "Your Left Time  is :" + leftmin + " Minutes ," + leftsec + " Seconds";

                    }
                }
                document.getElementById("showlefttime").innerHTML = "Your Left Time  is :" + leftmin + " Minutes ," + leftsec + " Seconds";
            }
            timleft = setTimeout("getremainingtim()", 1000);
        }
        function fget() {
            window.alert('Time Out !!!!. You would be redirected')
            window.location.href = 'TimeOut.aspx';           
        }

              
    </script>
    
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
<body style="background:none; background-color:white; width:980px; margin:0 auto;">
    <form id="form1" runat="server">
    
   <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
    <div>
    
<center>
<div class="tp-page-wrap" style="width: 980px">

        
        <table id="tp-tbl-header" width="100%" cellpadding="0" cellspacing="0" border="0" style="padding-bottom:2px;"><tbody><tr>
            <td width="30%" align="left">
                <img src="images/LOGOIPOT_new.jpg" >  
            </td>
            <td width="40%" align="center">&nbsp; 
            </td>
            <td width="30%" align="right" valign="middle">
               <img src="images/online-test.gif" alt="Online Test">         
            </td>
        </tr></tbody></table>

     
<table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr><td width="50%" valign="middle">
                            <h1 style="margin-left:0;">Best Of Luck</h1>
                         </td>
                         <td width="50%" align="right" valign="middle">
                         
                         
                         <div>
    
    
     
                             <div>
                                 <asp:ScriptManager ID="SM1" runat="server" >
                                 </asp:ScriptManager>
                                <%-- <asp:Timer ID="timer1" runat="server" Interval="1000" OnTick="timer1_tick" >
                                 </asp:Timer>--%>
                             </div>

 <span style="font-size: 12px; ">
 
 
 
<%-- <asp:Button ID="logout" runat="server" Text="Logout" onclick="Logout_Click1" />
--%> 
 <%--<div>
<asp:UpdatePanel id="updPnl" runat="server" UpdateMode="Conditional" >
<ContentTemplate>

    <table id="timercontrol" runat="server" style=" width:200px;">
        <tr>
            <td>
            <p > <h1 style="margin-left:0;"> Time Left <b>:</b>  <asp:Label ID="lblTimer" runat="server"></asp:Label>  <b>:</b>  <asp:Label ID="lblseconds" Text="60" runat="server"></asp:Label> </h1> </p>
            </td>
            <td><b>:</b></td>
            <td style=" width:20px;">
             <asp:Label ID="lblTimer" runat="server"></asp:Label>
            </td>
            <td>
            <b>:</b>
            </td>
            <td style=" width:20px;">
            <asp:Label ID="lblseconds" Text="60" runat="server"></asp:Label>

            </td>
        </tr>
    </table>
</ContentTemplate>
<Triggers>
<asp:AsyncPostBackTrigger ControlID="timer1" EventName ="tick"  />
</Triggers>
</asp:UpdatePanel>
</div>--%>


<div id ="counter_container" runat="server" >
     <asp:Button ID="start_exam_button" runat="server" Text="Start Exam" onclick="start_exam_button_Click" Visible="false" />
                             <div id="startexam" runat="server" style=" font-family:Calibri; font-size:18px; font-weight:lighter; color:#333; display:none;" >
                             <br />Your Examination Started time is :
        <asp:label id="Label1" runat="server" text="Label"></asp:label><br />
        Your Examination Over Time is :<asp:label id="Label2" runat="server" text="Label"></asp:label><br />
        <input type="hidden" id="lefttime" value ="0:0" runat ="server"  />
        <input type ="hidden" id="statusid" value ="0" runat ="server"  />
                        </div>      <div id="showlefttime" style=" font-family:Calibri; font-size:18px; font-weight:lighter; color:#333;"> </div>
<br />
                        
                        
                        <asp:Label ID="lblCount" runat="server" Text="Label" Visible="false"></asp:Label>
    </div>
    </div>
                             <%--<asp:Button ID="start_exam_button" runatltimer="server" Text="Start Exam" onclick="start_exam_button_Click" />
                             <div id="startexam" runat="server" >
                             <br />Your Examination Started time is :
        <asp:label id="Label1" runat="server" text="Label"></asp:label><br />
        Your Xamination Over Time is :<asp:label id="Label2" runat="server" text="Label"></asp:label><br />
        <input type="hidden" id="lefttime" value ="19:59" runat ="server"  />
        <input type ="hidden" id="statusid" value ="0" runat ="server"  />
      <div id="showlefttime"> </div>
                        </div><br />
                        
                        
                        <asp:Label ID="lblCount" runat="server" Text="Label"></asp:Label>--%>
                         </td>
                         </tr></tbody></table>
                         
                         <input type="hidden" id="hdnTestTitleID" value="1">
                         <input type="hidden" id="hdnTestID" value="1">
                         <input type="hidden" id="hdnInitialTimer" value="1800">
                         <input type="hidden" id="hdnTimer" value="0">
                         

<div id="divIntroduction" style="display:none">
                        <b>Online Test &gt; Online Aptitude Test &gt; Aptitude Test 1 (Mock Test)>
                   </div>    
                   <input type="hidden" value="2" id="idAgentType">

   
    <div class="content_area" style="width:980px;height: 480px;">
                              

																
								   <div class="title"> 
  	<samp class="title_left">&nbsp;</samp>
    <div class="title_bg">Online Test</div>
    <samp class="title_right">&nbsp;</samp>
 </div>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr><td id="mainquestionpaper" runat="server" >
    
    <div class="div-tabs-container" id="Conatianer_ID"  runat="server" style="border-radius: 8px; height: 375px;">
        <table id="container" runat="server">
            <tr>
                <td style="padding-bottom: 200px; width: 200px;">
                    <table>
                        <tr>
                            <td>
                                <fieldset style="border-radius:5px;width: 200px;">
             <p><img src="images/answered.png" /> : Answered Question</p>
               <p><img src="images/previ.png" /> : Preview Question</p>
               <p>
                   <img src="images/unans.png" /> : Unanswered Question
               </p>
             </fieldset>
                            </td>
                        </tr>
                        <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                        <tr>
                            <td >
                                <asp:UpdatePanel ID="updatepanel" runat="server">
                                    <ContentTemplate>
                                    
                                    <center>  <asp:DataList ID="UserQuest" runat="server" RepeatDirection="Horizontal" RepeatColumns="4"
                                            Width="150px" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="ItemColorChange_Click">
                                            <ItemTemplate>
                                                <table>
                                                    <tr>
                                                        <td style=" padding:4px 4px 4px 4px">
                                                            <asp:LinkButton ID="lnk_Questionno" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"QuestionNo") %>'
                                                                CommandArgument='<%#DataBinder.Eval(Container.DataItem,"QuestionNo") %>' OnCommand="Questionshow_Click"></asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:DataList>
                                        </center>

                                     
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                         <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                        <tr>
                            <td>
                            <center>      <asp:Button ID="timeout_submit" runat="server" OnClick="timeout_submit_click" Visible="false" />
                                <asp:ImageButton ID="btnsubmit" runat="server" Text="Submit" ImageUrl="~/images/usersubmit.png" OnClick="Button2_Click1"  />
                                
                                </center>

                            </td>
                        </tr>
                    </table>
                </td>
                <td valign="top">
                    <asp:UpdatePanel ID="questionsection" runat="server">
                        <ContentTemplate>
                            <div id="div_container" runat="server">
                                <asp:Label ID="lblName" runat="server" Font-Size="Medium" ForeColor="DarkRed" Style="z-index: 100;
                                    left: 64px; top: 19px" Text="Name : " Width="100%" Visible="false"></asp:Label><br /><br />
                                <%--  <asp:TextBox ID="txtName" runat="server" Style="z-index: 101; left: 146px; position: absolute;
            top: 18px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Style="z-index: 102; left: 321px; position: absolute;
            top: 18px" Text="Start Exam" ToolTip="Enter Your Name" OnClick="Button1_Click" />
     --%>
                                <asp:TextBox ID="txtScore" runat="server" Style="z-index: 103; left: 681px; position: absolute;
                                    top: 276px" Visible="False" Width="63px">0</asp:TextBox>
                                    <fieldset style="border-radius:8px">
                                    
             <asp:Panel ID="Panel1" runat="server" BorderColor="#E0E0E0" CssClass="border"
                                    Height="350px" Width="675px" ForeColor="#333">
                                    <%--<asp:Label ID="lblName" runat="server" Style="z-index: 100; left: 13px; 
                top: 10px" Text="Name : " ForeColor="#0000C0" Width="387px"></asp:Label>--%>
                                  
                                    <%--<asp:Label ID="lblScore" runat="server" ForeColor="Green" Style="z-index: 102; left: 567px;
                 top: 11px" Text="Score : " Width="136px"></asp:Label>--%>
                                    <asp:Panel ID="Panel3" runat="server" Height="3px" Width="119px">
                                        <span id="cd" style="left: 100px;"></span>
                                    </asp:Panel>
                                    <asp:Panel ID="Panel2" runat="server" Height="214px" Width="696px">
                                        <asp:Label ID="lblQuestion" runat="server" Width="682px" Font-Names="Calibri" Font-Size="16px" ></asp:Label><br /><br />
                                        <asp:Label ID="lblOptionA" runat="server" Font-Names="Calibri" Font-Size="16px" ></asp:Label><br /><br />
                                        <asp:Label ID="lblOptionB" runat="server" Font-Names="Calibri" Font-Size="16px" ></asp:Label><br /><br />
                                        <asp:Label ID="lblOptionC" runat="server" Font-Names="Calibri" Font-Size="16px" ></asp:Label><br /><br />
                                        <asp:Label ID="lblOptionD" runat="server" Font-Names="Calibri" Font-Size="16px" ></asp:Label><br /><br />
                                        <asp:RadioButtonList ID="RblOption" runat="server" Style="z-index: 102; left: 30px;
                                            top: 36px" Width="515px" RepeatDirection="Horizontal" Font-Names="calibri" Font-Size="Medium">
                                            <asp:ListItem Value="0">A</asp:ListItem>
                                            <asp:ListItem Value="1">B</asp:ListItem>
                                            <asp:ListItem Value="2">C</asp:ListItem>
                                            <asp:ListItem Value="3">D</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <br />
                                        <%--<asp:RadioButtonList ID="RblOption1" runat="server"  onselectedindexchanged="RblOption_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Value="0">A</asp:ListItem>
                 <asp:ListItem Value="1">B</asp:ListItem>
                  <asp:ListItem Value="2">C</asp:ListItem>
                   <asp:ListItem Value="3">D</asp:ListItem>
                </asp:RadioButtonList>--%>
                                     <%--   <asp:Button ID="btn_Submit" runat="server" Style="z-index: 106; left: 289px; top: 178px"
                                            Text="Submit" ToolTip="Click Here to Submit Answer" OnClick="Submit_Click1" />
                                        <asp:Button ID="Finish" runat="server" Style="z-index: 106; left: 289px; top: 178px"
                                            Text="Preview" ToolTip="Click Here to Finish The Test" OnClick="Priview_Click" />--%>
                                            
                                            
                                          <asp:ImageButton ID="btn_Submit" runat="server" Style="z-index: 106; left: 289px; top: 178px"
                                            Text="Submit" ToolTip="Click Here to Submit Answer" ImageUrl="~/images/usersubmit.png" OnClick="Submit_Click1" />
                                           <asp:ImageButton ID="Finish" runat="server" Style="z-index: 106; left: 289px; top: 178px"
                                            Text="Preview" ToolTip="Click Here to Finish The Test" ImageUrl="~/images/userpreview.png" OnClick="Priview_Click"  /> 
                                            
                                    </asp:Panel>
                                    <asp:Label ID="lblResult" Style="z-index: 107; left: 189px; position: absolute; top: 128px"
                                        runat="server" Visible="false" Font-Bold="true" ForeColor="Green" Text=""></asp:Label>
                                </asp:Panel>
                                
                                </fieldset>
                            </div>
                      </ContentTemplate>
                  </asp:UpdatePanel>
                </td>
           </tr>
            <%--<tr>
                <td>
                
                <asp:UpdatePanel ID="updtpnl" runat="server">
                
                <ContentTemplate>
                <table cellpadding="0" border="0" width="700">
                        <tr>
                            <td align="right" style="font-size:18px; font-weight:bold;" class="style2">
                                <asp:LinkButton ID="lbtnFirst" runat="server" CausesValidation="false" OnClick="lbtnFirst_Click">First</asp:LinkButton>
                                &nbsp;</td>
                            <td align="right" class="style3" style="font-size:18px; font-weight:bold;" class="style2">
                                <asp:LinkButton ID="lbtnPrevious" runat="server" CausesValidation="false" OnClick="lbtnPrevious_Click">Previous</asp:LinkButton>&nbsp;&nbsp;</td>
                            <td align="center" valign="middle" class="style4" style="font-size:18px; font-weight:bold;" class="style2">
                                <asp:DataList ID="dlPaging" runat="server" RepeatDirection="Horizontal" OnItemCommand="dlPaging_ItemCommand"
                                    OnItemDataBound="dlPaging_ItemDataBound">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkbtnPaging" CausesValidation="false" runat="server" CommandArgument='<%# Eval("PageIndex") %>'
                                            CommandName="Paging" Text='<%# Eval("PageText") %>'></asp:LinkButton>&nbsp;
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                            <td align="left" class="style5" style="font-size:18px; font-weight:bold;" class="style2">
                                &nbsp;&nbsp;<asp:LinkButton ID="lbtnNext" runat="server" CausesValidation="false"
                                    OnClick="lbtnNext_Click">Next</asp:LinkButton></td>
                            <td align="left" class="style6" style="font-size:18px; font-weight:bold;" class="style2">
                                &nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lbtnLast" runat="server" CausesValidation="false" OnClick="lbtnLast_Click">Last</asp:LinkButton></td>
                        </tr>
                       <br />
                        <tr>
                            <td colspan="5" align="center" style="padding-left:75px; font-weight:bold; font-size:15px; color:#16387C;">
                                <asp:Label ID="lblPageInfo" runat="server"></asp:Label></td>
                        </tr>
                    </table>
                </ContentTemplate>
                </asp:UpdatePanel>
                
                
                </td>
                <td></td>
            </tr>--%>
        </table>
    </div> 
   <div align="center">
        <a href="#"><asp:ImageButton ID="Submit_Click" runat="server" ImageUrl="~/images/submit-button.png" Visible="false" />  </a>
    </div>
  
  </td></tr>
  
  <tr>
  <td id="noquestionpaper" runat="server" visible="false">
  <center>
  <img src="images/question-mark1-240x300.jpg"  alt="question"/><br /><br /><br />
  
     <asp:Label ID="lbl_noItems" runat="server" Text="Label"></asp:Label>
  </center>
  </td>
  </tr>
   
</table>
</div>



<%--<div id="divShareCode" align="left">

<div class="fb-like" data-send="false" data-width="300" data-show-faces="false"></div>
<div id="fb-root"></div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 var _wau = _wau || []; _wau.push(["small", "me6p6kut7le4", "9bg"]); (function() { var s = document.createElement("script"); s.async = true; s.src = "http://widgets.amung.us/small.js"; document.getElementsByTagName("head")[0].appendChild(s); })();</script><div style="position: relative; display: inline-block; background-image: url(data:image/gif;base64,R0lGODlhUAAXAMQAAM1iTdBuWMQ4MsdHOt+ch/js5+/Qw+vCs/Pe1dR6Y+OolNuQespVQ9eFbsAnLX9/fzAwL////zU1NQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAABQABcAAAX/ICSOZGmeaKqu7Bi9L3IcBWzfeK7vfI+LMAPAQXQEEBGJcslsOp/QqFQaAUYMAiIjMnAIDMmpeEweVyGRQtcxIByy7Fd5Ti+fIwTiABYoKsJ1gYJMd30OeIhDRoCDjXR3igAEEQAChgCMjppihUULL3CLm6OcQHlEEQ0JEX6ZpK9Ld2qofZRxrrCvd1dZrA4AlWC5w7FWEQgJRQ4JSMTOuzAFMzU+1dbX1i3a29zdJhIwSkk24OGAOOU56eJyYw8S73ax7bGE54y45fP1YvFzYXIy4btH6Mm4feKYPIi3kCE8eAuXRHRy8OA6duzQkUuYMSMghyAfhnzYpF1FKPjsNPEDyI8jyXchYSqB2ZBiPYs2W+rjyNIlOIkzX4oU6s9gwB4lN4ZzaW5pmIkxhUIs6uzRsBAAOw==); width: 80px; height: 15px; padding: 0px; margin: 0px; overflow: hidden; cursor: pointer; direction: ltr;" title="Click to see stats for this site by whos.amung.us (me6p6kut7le4)"><div style="background-image: url(data:image/gif;base64,R0lGODlhUAAXAMQAAM1iTdBuWMQ4MsdHOt+ch/js5+/Qw+vCs/Pe1dR6Y+OolNuQespVQ9eFbsAnLX9/fzAwL////zU1NQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAABQABcAAAX/ICSOZGmeaKqu7Bi9L3IcBWzfeK7vfI+LMAPAQXQEEBGJcslsOp/QqFQaAUYMAiIjMnAIDMmpeEweVyGRQtcxIByy7Fd5Ti+fIwTiABYoKsJ1gYJMd30OeIhDRoCDjXR3igAEEQAChgCMjppihUULL3CLm6OcQHlEEQ0JEX6ZpK9Ld2qofZRxrrCvd1dZrA4AlWC5w7FWEQgJRQ4JSMTOuzAFMzU+1dbX1i3a29zdJhIwSkk24OGAOOU56eJyYw8S73ax7bGE54y45fP1YvFzYXIy4btH6Mm4feKYPIi3kCE8eAuXRHRy8OA6duzQkUuYMSMghyAfhnzYpF1FKPjsNPEDyI8jyXchYSqB2ZBiPYs2W+rjyNIlOIkzX4oU6s9gwB4lN4ZzaW5pmIkxhUIs6uzRsBAAOw==); background-attachment: scroll; position: absolute; width: 5px; height: 8px; top: 4px; left: 20px; line-height: 8px; overflow: hidden; padding: 0px; margin: 0px; background-position: -33px -15px; background-repeat: no-repeat no-repeat;"></div><div style="background-image: url(data:image/gif;base64,R0lGODlhUAAXAMQAAM1iTdBuWMQ4MsdHOt+ch/js5+/Qw+vCs/Pe1dR6Y+OolNuQespVQ9eFbsAnLX9/fzAwL////zU1NQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAABQABcAAAX/ICSOZGmeaKqu7Bi9L3IcBWzfeK7vfI+LMAPAQXQEEBGJcslsOp/QqFQaAUYMAiIjMnAIDMmpeEweVyGRQtcxIByy7Fd5Ti+fIwTiABYoKsJ1gYJMd30OeIhDRoCDjXR3igAEEQAChgCMjppihUULL3CLm6OcQHlEEQ0JEX6ZpK9Ld2qofZRxrrCvd1dZrA4AlWC5w7FWEQgJRQ4JSMTOuzAFMzU+1dbX1i3a29zdJhIwSkk24OGAOOU56eJyYw8S73ax7bGE54y45fP1YvFzYXIy4btH6Mm4feKYPIi3kCE8eAuXRHRy8OA6duzQkUuYMSMghyAfhnzYpF1FKPjsNPEDyI8jyXchYSqB2ZBiPYs2W+rjyNIlOIkzX4oU6s9gwB4lN4ZzaW5pmIkxhUIs6uzRsBAAOw==); background-attachment: scroll; position: absolute; width: 5px; height: 8px; top: 4px; left: 26px; line-height: 8px; overflow: hidden; padding: 0px; margin: 0px; background-position: -18px -15px; background-repeat: no-repeat no-repeat;"></div><div style="background-image: url(data:image/gif;base64,R0lGODlhUAAXAMQAAM1iTdBuWMQ4MsdHOt+ch/js5+/Qw+vCs/Pe1dR6Y+OolNuQespVQ9eFbsAnLX9/fzAwL////zU1NQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAABQABcAAAX/ICSOZGmeaKqu7Bi9L3IcBWzfeK7vfI+LMAPAQXQEEBGJcslsOp/QqFQaAUYMAiIjMnAIDMmpeEweVyGRQtcxIByy7Fd5Ti+fIwTiABYoKsJ1gYJMd30OeIhDRoCDjXR3igAEEQAChgCMjppihUULL3CLm6OcQHlEEQ0JEX6ZpK9Ld2qofZRxrrCvd1dZrA4AlWC5w7FWEQgJRQ4JSMTOuzAFMzU+1dbX1i3a29zdJhIwSkk24OGAOOU56eJyYw8S73ax7bGE54y45fP1YvFzYXIy4btH6Mm4feKYPIi3kCE8eAuXRHRy8OA6duzQkUuYMSMghyAfhnzYpF1FKPjsNPEDyI8jyXchYSqB2ZBiPYs2W+rjyNIlOIkzX4oU6s9gwB4lN4ZzaW5pmIkxhUIs6uzRsBAAOw==); background-attachment: scroll; position: absolute; width: 5px; height: 8px; top: 4px; left: 32px; line-height: 8px; overflow: hidden; padding: 0px; margin: 0px; background-position: -38px -15px; background-repeat: no-repeat no-repeat;"></div><div style="background-image: url(data:image/gif;base64,R0lGODlhUAAXAMQAAM1iTdBuWMQ4MsdHOt+ch/js5+/Qw+vCs/Pe1dR6Y+OolNuQespVQ9eFbsAnLX9/fzAwL////zU1NQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAABQABcAAAX/ICSOZGmeaKqu7Bi9L3IcBWzfeK7vfI+LMAPAQXQEEBGJcslsOp/QqFQaAUYMAiIjMnAIDMmpeEweVyGRQtcxIByy7Fd5Ti+fIwTiABYoKsJ1gYJMd30OeIhDRoCDjXR3igAEEQAChgCMjppihUULL3CLm6OcQHlEEQ0JEX6ZpK9Ld2qofZRxrrCvd1dZrA4AlWC5w7FWEQgJRQ4JSMTOuzAFMzU+1dbX1i3a29zdJhIwSkk24OGAOOU56eJyYw8S73ax7bGE54y45fP1YvFzYXIy4btH6Mm4feKYPIi3kCE8eAuXRHRy8OA6duzQkUuYMSMghyAfhnzYpF1FKPjsNPEDyI8jyXchYSqB2ZBiPYs2W+rjyNIlOIkzX4oU6s9gwB4lN4ZzaW5pmIkxhUIs6uzRsBAAOw==); background-attachment: scroll; position: absolute; width: 24px; height: 8px; top: 4px; left: 38px; line-height: 8px; overflow: hidden; padding: 0px; margin: 0px; background-position: -50px -15px; background-repeat: no-repeat no-repeat;"></div></div></div>--%> 

</div>

</center>




<!-- Google Page Analysis Code -->
<script src="http://www.google-analytics.com/ga.js" type="text/javascript"></script>
  

<%--<div id="calculator-div" style="display: none;"></div> 
 <div id="facebox" style="display:none;">    
  <div class="popup">       
  <table>         <tbody>           <tr>            
   <td class="tl"></td><td class="b"></td><td class="tr"></td>           </tr>          
    <tr>             <td class="b"></td>     
            <td class="body">               
            <div class="content">               </div>               
            <div class="footer">                
             <a href="#" class="close">         
                       <img src="/images/closelabel.gif" title="close" class="close_image"> 
                                       </a>              
                                        </div>            
                                         </td>           
                                           <td class="b"></td>   
                                                   </tr>           <tr>            
                                                    <td class="bl"></td><td class="b"></td><td class="br"></td>
                                                               </tr>         </tbody>       </table>     </div>
                                                                  </div>
                                                                  --%>
                                                                  
                                                                  	<!--==============================footer=================================-->
 <footer>
        <div class="main" style=" width:1000px; margin:0 auto;">
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
