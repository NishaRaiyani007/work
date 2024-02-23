<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="changepass.aspx.cs" Inherits="admin_changepass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<table>
    <tr>
    <td><asp:Label ID="lblold" runat="server" Text="Old Password" Height="30px" 
        Width="200px"></asp:Label></td>
    <td><asp:TextBox ID="txtold" runat="server" TextMode="Password" Height="30px" 
        Width="200px"></asp:TextBox><br/></td>
    </tr>
    <tr>
    <td><asp:Label ID="lblnew" runat="server" Text="New Password" Height="30px" 
        Width="200px"></asp:Label></td>
    <td><asp:TextBox ID="txtnew" runat="server" TextMode="Password" Height="30px" 
        Width="200px"></asp:TextBox><br/></td>
    </tr>
    <tr>
     <td><asp:Label ID="lblconfirm" runat="server" Text="Confirm Password" 
        Height="30px" Width="200px"></asp:Label></td>
    <td><asp:TextBox ID="txtconfirm" runat="server" TextMode="Password" Height="30px" 
        Width="200px"></asp:TextBox><br/></td>
    </tr>
    <tr>
    <td colspan="2" align="center"><asp:Button ID="btnsave" runat="server" 
            Text="Change Password" Height="30px" 
        Width="150px" onclick="btnsave_Click" /></td>
    </tr>
</table>
</center>
</asp:Content>

