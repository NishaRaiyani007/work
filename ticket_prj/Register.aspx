<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" style="color: #333333" 
        Text="Enter FirstName"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 22px"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Enter LastName"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 23px"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Email-id"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 69px" 
        Width="169px"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Contect No"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 47px" 
        Width="167px"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="User Name"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 51px"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 59px"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Conform Password"></asp:Label>
    <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 6px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" style="margin-left: 122px" 
        Text="Register" onclick="Button1_Click" />
</asp:Content>

