<%@ Page Language="C#" MasterPageFile="~/mymaster.master" AutoEventWireup="true" CodeFile="update2.aspx.cs" Inherits="update2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        <asp:Label ID="Label1" runat="server" BackColor="#FFC080" Font-Bold="True" Font-Names="Calibri"
        Font-Size="Large" ForeColor="#400040" Text="Select Book"></asp:Label>&nbsp;&nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Calibri" Font-Size="Large"
        ForeColor="#404000">
    </asp:DropDownList><br />
        &nbsp;
    <br />
    <asp:Label ID="Label3" runat="server" BackColor="#FFC080" Font-Bold="True" Font-Names="Calibri"
        Font-Size="Large" ForeColor="#400040" Text="New Price"></asp:Label>
    &nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    <br />
    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="Large"
        ForeColor="#400000" OnClick="Button1_Click" Text="Update" />&nbsp;<br />
    </center>
    <center>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Calibri"
            Font-Size="Large" ForeColor="#400000" NavigateUrl="~/adminmain.aspx">Back</asp:HyperLink>&nbsp;</center>
    <center>
    <br />
    <asp:Label ID="Label2" runat="server" BackColor="#FFC080" Font-Bold="True" Font-Names="Calibri"
        Font-Size="Large" ForeColor="#400040" Text="Label" Visible="False"></asp:Label>
    </center>
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
        &nbsp;</center><center> Prepared By:-Lathiya Alpa,Kachot Purva,Mendapara Hiral</center>
</asp:Content>

