<%@ Page Language="C#" MasterPageFile="~/mymaster.master" AutoEventWireup="true" CodeFile="orderlogin.aspx.cs" Inherits="orderlogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <center> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Label ID="Label1" runat="server" Text="Login" BackColor="#FFE0C0" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#400040"></asp:Label><br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Text="Username" BackColor="#FFE0C0" Font-Names="Calibri" Font-Size="Large" ForeColor="#400040"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>&nbsp;
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username Must Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>&nbsp;<br />
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
    &nbsp; &nbsp;&nbsp; 
       <asp:Label ID="Label3" runat="server" Text="Password" BackColor="#FFE0C0" Font-Names="Calibri" Font-Size="Large" ForeColor="#400040"></asp:Label>
    &nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
       &nbsp; &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
           ErrorMessage="Password must Required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator><br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; 
       <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Calibri" Font-Size="Large"
           ForeColor="#400000" Height="27px" NavigateUrl="~/register.aspx">New User</asp:HyperLink>
       &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Font-Bold="True"
           Font-Names="Calibri" Font-Size="Large" ForeColor="#404000" Text="Login" Width="83px" OnClick="Button1_Click1" />&nbsp;
</center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label4" runat="server" BackColor="#FFE0C0" Font-Names="Calibri" Font-Size="Large"
            ForeColor="#400040" Text="Label" Visible="False"></asp:Label></center> 
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
 <center> Prepared By:-Lathiya Alpa,Kachot Purva,Mendapara Hiral</center>
</asp:Content>

