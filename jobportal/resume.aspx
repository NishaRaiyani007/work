﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="resume.aspx.cs" Inherits="resume" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
    <div class="single">  
	   <div class="form-container">
        <h2>Upload Your Resume</h2>
        <div class="search_form1">
		    <form action="">
			  <%-- <input type="text" class="text" placeholder=" " value="Email Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email Address';}"><br>--%>
			  <%--<input type="file" name="myfile">--%>
			  <%--<input type="submit" value="Post your CV">--%>
            <asp:TextBox ID="txtemail" runat="server" placeholder="Email Address"> </asp:TextBox>
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <asp:Button ID="btnsubmit" runat="server" Text="Post your CV" />
	        </form>
	    </div>
    </div>
 </div>
</div>

		
</asp:Content>

