<%@ Page Language="C#" MasterPageFile="~/mymaster.master" AutoEventWireup="true" CodeFile="insertbook.aspx.cs" Inherits="insertbook" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><asp:Label ID="Label8" runat="server" BackColor="#FFC080" Font-Bold="True" Font-Size="X-Large"
        ForeColor="#400040" Text="Enter Information about Book"></asp:Label><br />
        &nbsp;</center>
    <br />
   <br /><center> <table style="border-right: crimson thin inset; border-top: crimson thin inset; border-left: crimson thin inset; border-bottom: crimson thin inset">
        <tr>
            <td style="width: 121px; border-right: crimson thin inset; border-top: crimson thin inset; border-left: crimson thin inset; border-bottom: crimson thin inset;">
                <asp:Label ID="Label1" runat="server" Text="Book Name" Font-Names="Calibri" Font-Size="Large"></asp:Label></td>
            <td style="width: 100px; border-right: crimson thin inset; border-top: crimson thin inset; border-left: crimson thin inset; border-bottom: crimson thin inset;">
                <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Names="Calibri" ForeColor="#404000" Font-Size="Large"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 121px; border-right: crimson thin inset; border-top: crimson thin inset; border-left: crimson thin inset; border-bottom: crimson thin inset;">
                <asp:Label ID="Label2" runat="server" Text="Author Name" Font-Names="Calibri" Font-Size="Large"></asp:Label></td>
            <td style="width: 100px; border-right: crimson thin inset; border-top: crimson thin inset; border-left: crimson thin inset; border-bottom: crimson thin inset;">
                <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Names="Calibri" ForeColor="#404000" Font-Size="Large"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 121px; border-right: crimson thin inset; border-top: crimson thin inset; border-left: crimson thin inset; border-bottom: crimson thin inset;">
                <asp:Label ID="Label3" runat="server" Text="Price" Font-Names="Calibri" Font-Size="Large"></asp:Label></td>
            <td style="width: 100px; border-right: crimson thin inset; border-top: crimson thin inset; border-left: crimson thin inset; border-bottom: crimson thin inset;">
                <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" Font-Names="Calibri" ForeColor="#404000" Font-Size="Large"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 121px; border-right: crimson thin inset; border-top: crimson thin inset; border-left: crimson thin inset; border-bottom: crimson thin inset;">
                <asp:Label ID="Label4" runat="server" Text="Image Url" Font-Names="Calibri" Font-Size="Large"></asp:Label></td>
            <td style="width: 100px; border-right: crimson thin inset; border-top: crimson thin inset; border-left: crimson thin inset; border-bottom: crimson thin inset;">
                <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" Font-Names="Calibri" ForeColor="#404000" Font-Size="Large"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 121px; border-right: crimson thin inset; border-top: crimson thin inset; border-left: crimson thin inset; border-bottom: crimson thin inset;">
                <asp:Label ID="Label5" runat="server" Text="Notes" Font-Names="Calibri" Font-Size="Large"></asp:Label></td>
            <td style="width: 100px; border-right: crimson thin inset; border-top: crimson thin inset; border-left: crimson thin inset; border-bottom: crimson thin inset;">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Font-Bold="True" Font-Names="Calibri" ForeColor="#404000" Font-Size="Large"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 121px; border-right: crimson thin inset; border-top: crimson thin inset; border-left: crimson thin inset; border-bottom: crimson thin inset;">
                &nbsp;<asp:Label ID="Label6" runat="server" Text="Select Category" Font-Names="Calibri" Font-Size="Large"></asp:Label></td>
            <td style="width: 100px; border-right: crimson thin inset; border-top: crimson thin inset; border-left: crimson thin inset; border-bottom: crimson thin inset;">
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Bold="True" Font-Names="Calibri" ForeColor="#404000" Font-Size="Large">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 121px; border-right: crimson thin inset; border-top: crimson thin inset; border-left: crimson thin inset; border-bottom: crimson thin inset;">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#400000" /></td>
            <td style="width: 100px; border-right: crimson thin inset; border-top: crimson thin inset; border-left: crimson thin inset; border-bottom: crimson thin inset;">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#400000" /></td>
        </tr>
    </table>
    </center>
    <center>
        &nbsp;</center>
    <center>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Calibri"
            Font-Size="Large" ForeColor="#400000" NavigateUrl="~/adminmain.aspx">Back</asp:HyperLink>&nbsp;</center>
    <center>
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Text="Label" Visible="False" BackColor="#FFC080" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#400040"></asp:Label></center>
    <center>
        &nbsp;</center>
    <br />
    <center> Prepared By:-Lathiya Alpa,Kachot Purva,Mendapara Hiral</center>
</asp:Content>

