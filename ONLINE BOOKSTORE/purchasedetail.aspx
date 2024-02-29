<%@ Page Language="C#" MasterPageFile="~/mymaster.master" AutoEventWireup="true" CodeFile="purchasedetail.aspx.cs" Inherits="purchasedetail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <span style="font-size: 14pt">Congrates!You have successfully bought your book ...We
            will delievered it very shortly at your given address....Thanks for being a part
            of us...</span></center>
    <center>
        &nbsp;</center>
    <center>
        <table style="border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
        <tr>
            <td style="width: 203px; border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
                <asp:Label ID="Label1" runat="server" Text="First Name" Font-Names="Calibri" ForeColor="#400000"></asp:Label></td>
            <td style="width: 203px; border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
                <asp:Label ID="lbfname" runat="server" Text="Label" Font-Names="Calibri" ForeColor="#400000"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 203px; border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
                <asp:Label ID="Label2" runat="server" Text="Last Name" Font-Names="Calibri" ForeColor="#400000"></asp:Label></td>
            <td style="width: 203px; border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
                <asp:Label ID="lblname" runat="server" Text="Label" Font-Names="Calibri" ForeColor="#400000"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 203px; border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
                <asp:Label ID="Label3" runat="server" Text="Card Type" Font-Names="Calibri" ForeColor="#400000"></asp:Label></td>
            <td style="width: 203px; border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
                <asp:Label ID="lbcardtype" runat="server" Text="Label" Font-Names="Calibri" ForeColor="#400000"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 203px; border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
                <asp:Label ID="Label4" runat="server" Text="Card No." Font-Names="Calibri" ForeColor="#400000"></asp:Label></td>
            <td style="width: 203px; border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
                <asp:Label ID="lbcardno" runat="server" Text="Label" Font-Names="Calibri" ForeColor="#400000"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 203px; border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
                <asp:Label ID="Label5" runat="server" Text="Book Name" Font-Names="Calibri" ForeColor="#400000"></asp:Label></td>
            <td style="width: 203px; border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
                <asp:Label ID="lbbooknm" runat="server" Text="Label" Font-Names="Calibri" ForeColor="#400000"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 203px; border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
                <asp:Label ID="Label6" runat="server" Text="Book Price" Font-Names="Calibri" ForeColor="#400000"></asp:Label></td>
            <td style="width: 203px; border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
                <asp:Label ID="lbbookprice" runat="server" Text="Label" Font-Names="Calibri" ForeColor="#400000"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 203px; border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
                <asp:Label ID="Label7" runat="server" Text="Quantity" Font-Names="Calibri" ForeColor="#400000"></asp:Label></td>
            <td style="width: 203px; border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
                <asp:Label ID="lbqunt" runat="server" Text="Label" Font-Names="Calibri" ForeColor="#400000"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 203px; border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
                <asp:Label ID="Label8" runat="server" Text="Total Price" Font-Names="Calibri" ForeColor="#400000"></asp:Label></td>
            <td style="width: 203px; border-right: mediumvioletred thin inset; border-top: mediumvioletred thin inset; border-left: mediumvioletred thin inset; border-bottom: mediumvioletred thin inset;">
                <asp:Label ID="lbtotal" runat="server" Text="Label" Font-Names="Calibri" ForeColor="#400000"></asp:Label></td>
        </tr>
    </table>
    </center>
    <center>
        &nbsp;</center>
    <center>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Calibri" ForeColor="#400000"
            NavigateUrl="~/home.aspx" Font-Size="Large">Log Out</asp:HyperLink>&nbsp;</center> 
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
 <center> Prepared By:-Lathiya Alpa,Kachot Purva,Mendapara Hiral</center>
</asp:Content>

