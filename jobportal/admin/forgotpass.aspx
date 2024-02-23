<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="forgotpass.aspx.cs" Inherits="admin_forgotpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<table>
    <tr>
    <td><asp:Label ID="lblemail" runat="server" Text="Email Id" Height="30px" 
        Width="200px"></asp:Label></td>
    <td><asp:TextBox ID="txtemail" runat="server" Height="30px" 
        Width="200px"></asp:TextBox><br/></td>
    </tr>
    <tr>
    <td colspan="2" align="center">
        <asp:Button ID="btnsend" runat="server" 
            Text="send" Height="30px"  Width="100px" onclick="btnsend_Click" /></td>
    </tr>
</table>
</center>

</asp:Content>

