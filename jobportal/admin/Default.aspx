<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<table>
    <tr>
    <td><asp:Label ID="lblunm" runat="server" Text="User Name" Height="30" Width="200"></asp:Label></td>
    <td><asp:TextBox ID="txtunm" runat="server" Height="30px" Width="200px"></asp:TextBox></td>
    </tr>

    <tr>
    <td><asp:Label ID="lblpwd" runat="server" Text="Password" Height="30px" 
        Width="200px"></asp:Label></td>
    <td><asp:TextBox ID="txtpwd" runat="server" Height="30px" Width="200px" TextMode="Password"></asp:TextBox></td>
    </tr>

    <tr>
    <td colspan="2"><asp:Button ID="btnlogin" runat="server" Text="Login" 
    onclick="btnlogin_Click" Height="30px" Width="100px" /></td>
    </tr>

    <tr>
    <td colspan="2"><asp:LinkButton ID="linkforgetpwd" runat="server" 
    onclick="linkforgetpwd_Click" >Forgot Password</asp:LinkButton></td>
    </tr>

</table>
</center>
    </asp:Content>



