<%@ Page Language="C#" MasterPageFile="~/mymaster.master" AutoEventWireup="true" CodeFile="adminmain.aspx.cs" Inherits="adminmain" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        <table>
        <tr>
            <td style="width: 185px">
                <asp:HyperLink ID="HyperLink1" runat="server" Width="136px" NavigateUrl="~/insertbook.aspx" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#400000">Insert New Book</asp:HyperLink></td>
        </tr>
        <tr>
            <td style="width: 185px">
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="Calibri"
                    Font-Size="Large" ForeColor="#400000" NavigateUrl="~/updateprice.aspx">Update Book Price</asp:HyperLink></td>
        </tr>
        <tr>
            <td style="width: 185px">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/deletebook.aspx" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#400000">Delete Book</asp:HyperLink></td>
        </tr>
    </table>
    
    <br />
    <br />
    <br />
    <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Calibri"
        Font-Size="Large" ForeColor="#400000" NavigateUrl="~/adminlogin.aspx">Back</asp:HyperLink></center><br />
    <br />
    <br /><center> &nbsp;</center>
    <center>
        Prepared By:-Lathiya Alpa,Kachot Purva,Mendapara Hiral</center>
</asp:Content>

