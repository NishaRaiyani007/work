<%@ Page Language="C#" MasterPageFile="~/mymaster.master" AutoEventWireup="true" CodeFile="children.aspx.cs" Inherits="children" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: 16pt">You can see and get information about books of following
        categories which are available at our store.....<br />
        <br />
    </span>
    <br />
    <br />
    <center>
        <asp:Label ID="Label1" runat="server" BackColor="#FFC080" Font-Size="X-Large" ForeColor="#400040"
            Height="31px" Text="Children Books" Width="190px"></asp:Label><br />
        <br />
        <asp:HyperLink ID="progcatlink" runat="server" Font-Bold="True" Font-Names="Calibri"
            Font-Size="Large" ForeColor="#404000" NavigateUrl="~/baby.aspx">1.Babies book</asp:HyperLink><br />
        <br />
        <asp:HyperLink ID="dbcatlink" runat="server" Font-Bold="True" Font-Names="Calibri"
            Font-Size="Large" ForeColor="#404000" NavigateUrl="~/bedstory.aspx">2.Bed Stories</asp:HyperLink><br />
        <br />
        <asp:HyperLink ID="htmlcatlink" runat="server" Font-Bold="True" Font-Names="Calibri"
            Font-Size="Large" ForeColor="#404000" NavigateUrl="~/picturebook.aspx">3.Picture Book</asp:HyperLink><br />
        <br />
        &nbsp;</center>
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; <center> Prepared By:-Lathiya Alpa,Kachot Purva,Mendapara Hiral</center>
</asp:Content>

