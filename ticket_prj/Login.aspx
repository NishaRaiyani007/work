<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<asp:Label ID="Label1" runat="server" Text="Enter Username"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Enter PAssword"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="OK" 
        style="margin-left: 83px" />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Sign Up new users</asp:HyperLink>
</asp:Content>

