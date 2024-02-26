<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Visiter.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type="text/javascript">

        function updateClock() {
            var currentTime = new Date();

            var currentHours = currentTime.getHours();
            var currentMinutes = currentTime.getMinutes();
            var currentSeconds = currentTime.getSeconds();

            // Pad the minutes and seconds with leading zeros, if required
            currentMinutes = (currentMinutes < 10 ? "0" : "") + currentMinutes;
            currentSeconds = (currentSeconds < 10 ? "0" : "") + currentSeconds;

            // Choose either "AM" or "PM" as appropriate
            var timeOfDay = (currentHours < 12) ? "AM" : "PM";

            // Convert the hours component to 12-hour format if needed
            currentHours = (currentHours > 12) ? currentHours - 12 : currentHours;

            // Convert an hours component of "0" to "12"
            currentHours = (currentHours == 0) ? 12 : currentHours;

            // Compose the string for display
            var currentTimeString = currentHours + ":" + currentMinutes + ":" + currentSeconds + " " + timeOfDay;

            // Update the time display
            document.getElementById("clock").firstChild.nodeValue = currentTimeString;
        }
</script>
    <style type="text/css">
        .style1
        {
            width: 427px;
        }
        .style3
        {
            width: 60px;
            height: 55px;
        }
        .style5
        {
            height: 55px;
            width: 427px;
        }
        .style6
        {
            width: 427px;
            height: 34px;
        text-align: justify;
    }
        .style13
        {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
        }
    .style14
    {
            width: 60px;
        }
    .style15
    {
        width: 60px;
        height: 34px;
        text-align: justify;
    }
        .style16
        {
            width: 539px;
        }
        .style17
        {
            width: 539px;
            height: 34px;
            text-align: justify;
        }
        .style18
        {
            height: 55px;
            width: 539px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div id="clock">
       
        </div>

    <div style="right:700px">
        <table style="width:100%;">
            <tr>
                <td class="style14">
                   <h1><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style13">&nbsp;&nbsp;&nbsp;</span></strong></h1></td>
                <td class="style16">
                   <h1><strong><span class="style13" 
                           style="color: #0000FF; font-family: 'Lucida Calligraphy';">About Us</span></strong></h1></td>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style15">
                    &nbsp;</td>
                <td class="style17" style="font-size: medium; font-weight: bold">
                    A user can search jobs according to their location or their skills.This application will help students to gain knowledge on asp.net and c# programming language.
     In this programme, industries visit the colleges to select students depending on their ability to work, capability, focus and Aim.<br />
                </td>
                <td class="style6" style="font-size: medium; font-weight: bold">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">

                    &nbsp;</td>
                <td class="style18" style="font-size: medium; font-weight: bold">
                    It provides the seekers the stag where they can search the different jobs 
                    according to the company.<br />
                    Here jobseeker can easily upload the resume which can be seen by the different employer.</td>
                <td class="style5" style="font-size: medium; font-weight: bold">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td style="font-size: large; font-weight: bold" class="style16">
                    <h3 style="width: 685px">
                        <strong style="font-size: medium; font-weight: bold; color: #0000FF;">Recruitement Plateform</strong></h3>
                </td>
                <td style="font-size: large; font-weight: bold" class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14"><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
                <td class="style16">
       <p style="width: 687px; height: 24px; font-size: medium; font-weight: bold;">Employers can invite specific students to apply for openings by using college.</p>
                    </td>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style16">
                    <p style="width: 693px; height: 29px; font-size: medium; font-weight: bold;">College specific parameters include year founded, address, degrees offered, 
                        number of student.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
                </td>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style16">
                    <img src="images/online_campus-about.jpg" style="width: 612px; height: 283px" /><br />
                </td>
                <td class="style1">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

