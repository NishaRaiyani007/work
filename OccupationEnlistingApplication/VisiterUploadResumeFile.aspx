﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Visiter.master" AutoEventWireup="true" CodeFile="VisiterUploadResumeFile.aspx.cs" Inherits="VisiterUploadResumeFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 218px;
        }
        .auto-style2 {
            width: 23px;
        }
        .auto-style3 {
            width: 82px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
    
        
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                     &nbsp;</td>
                <td class="auto-style1">
                     <asp:Label ID="Label17" runat="server" Text="Upload Resume File" Font-Bold="True"  Font-Italic="True" ForeColor="Blue" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
                </td>
            <tr>
                <td class="auto-style3">
                     &nbsp;</td>
                <td class="auto-style1">
                     &nbsp;</td>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="lbResumeTitle" runat="server" Text="ResumeTitle"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtResumeTitle" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbResumeDocument" runat="server" Text="ResumeDocument"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>

</asp:Content>

