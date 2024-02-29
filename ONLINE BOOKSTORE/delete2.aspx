<%@ Page Language="C#" MasterPageFile="~/mymaster.master" AutoEventWireup="true" CodeFile="delete2.aspx.cs" Inherits="delete2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <center> <br />
       &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Select Book" BackColor="#FFC080" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#400040"></asp:Label>
    &nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Names="Calibri" Font-Size="Large" ForeColor="#404000">
    </asp:DropDownList><br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#400000" />
    &nbsp;&nbsp;
        <br />
    </center>
    <center>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Calibri"
            Font-Size="Large" ForeColor="#400000" NavigateUrl="~/adminmain.aspx">Back</asp:HyperLink>&nbsp;</center>
    <center>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" BackColor="#FFC080" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#400040"></asp:Label>
    </center>
    <center> &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        Prepared By:-Lathiya Alpa,Kachot Purva,Mendapara Hiral</center>
</asp:Content>

