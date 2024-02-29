<%@ Page Language="C#" MasterPageFile="~/mymaster.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <center> &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        <asp:Label ID="Label1" runat="server" BackColor="#FFC080" Font-Bold="True" Font-Names="Calibri"
        Font-Size="Large" ForeColor="#400040" Text="Login"></asp:Label><br />
    <br />
    <asp:Label ID="Label2" runat="server" BackColor="#FFC080" Font-Bold="True" Font-Names="Calibri"
        Font-Size="Large" ForeColor="#400040" Text="Username"></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Font-Names="Calibri" Font-Size="Large"
        ForeColor="#404000"></asp:TextBox><br />
    <br />
    <asp:Label ID="Label3" runat="server" BackColor="#FFC080" Font-Bold="True" Font-Names="Calibri"
        Font-Size="Large" ForeColor="#400040" Text="Password"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Font-Names="Calibri" Font-Size="Large"
        ForeColor="#404000" TextMode="Password"></asp:TextBox><br />
    <br />
    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="Large"
        ForeColor="#400000" OnClick="Button1_Click" Text="Login" />&nbsp;
    <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="Large"
        ForeColor="#400000" OnClick="Button2_Click" Text="Cancel" /><br />
    <br />
    <asp:Label ID="Label4" runat="server" BackColor="#FFC080" Font-Bold="True" Font-Names="Calibri"
        Font-Size="Large" ForeColor="#400040" Text="Label" Visible="False"></asp:Label></center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
        <center>
        Prepared By:-Asmi Samani,Dipali Dobariya,Sweta Daraniya</center>
</asp:Content>

