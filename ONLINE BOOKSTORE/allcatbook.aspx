<%@ Page Language="C#" MasterPageFile="~/mymaster.master" AutoEventWireup="true" CodeFile="allcatbook.aspx.cs" Inherits="allcatbook" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <center> <asp:Label ID="Label1" runat="server" BackColor="#FFC080" Font-Size="X-Large" Font-Underline="True"
        ForeColor="#400040" Text="Books of all Categories"></asp:Label><br />
    <br />
    <br />
    <asp:Table ID="Table1" runat="server" CellSpacing="5" Font-Names="Calibri" Font-Size="Large"
        ForeColor="#404000">
    </asp:Table></center>
    <br />
</asp:Content>

