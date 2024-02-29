<%@ Page Language="C#" MasterPageFile="~/mymaster.master" AutoEventWireup="true" CodeFile="updateprice.aspx.cs" Inherits="updateprice" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <center> &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        <asp:Label ID="Label1" runat="server" BackColor="#FFC080" Font-Bold="True" Font-Names="Calibri"
        Font-Size="X-Large" ForeColor="#400040" Text="Update Book Price"></asp:Label><br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="select category" BackColor="#FFC080" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#400040"></asp:Label>&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Names="Calibri" Font-Size="Large" ForeColor="#404000">
    </asp:DropDownList><br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show Book List" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#400000" /></center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Calibri"
        Font-Size="Large" ForeColor="#400000" NavigateUrl="~/adminmain.aspx">Back</asp:HyperLink></center><br />
    <br />
    <br />
    <br />
    <center> Prepared By:-Lathiya Alpa,Kachot Purva,Mendapara Hiral</center>
</asp:Content>

