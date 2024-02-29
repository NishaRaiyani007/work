<%@ Page Language="C#" MasterPageFile="~/mymaster.master" AutoEventWireup="true" CodeFile="booklist.aspx.cs" Inherits="booklist" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: 16pt">You can see and get information about books of following
        categories which are available at our store.....<br />
        <br />
    </span>
    <br />
    <br />
    <center><asp:Label ID="Label1" runat="server" BackColor="#FFC080" Font-Size="X-Large" ForeColor="#400040"
        Text="Computer Education" Height="31px" Width="244px"></asp:Label><br />
    <br />
    <asp:HyperLink ID="progcatlink" runat="server" Font-Bold="True" Font-Size="Large"
        ForeColor="#404000" NavigateUrl="~/progcatbook.aspx" Font-Names="Calibri">1.Programming Langauge</asp:HyperLink><br />
    <br />
    <asp:HyperLink ID="dbcatlink" runat="server" Font-Bold="True" Font-Size="Large"
        ForeColor="#404000" NavigateUrl="~/dbcatbook.aspx" Font-Names="Calibri">2.DataBase Knowledge</asp:HyperLink><br />
    <br />
    <asp:HyperLink ID="htmlcatlink" runat="server" Font-Bold="True" Font-Size="Large"
        ForeColor="#404000" NavigateUrl="~/htmlcatbook.aspx" Font-Names="Calibri">3.HTML and Web Design</asp:HyperLink><br />
    <br />
    <asp:HyperLink ID="allcatlink" runat="server" Font-Bold="True" Font-Size="Large"
        ForeColor="#404000" NavigateUrl="~/allcatbook.aspx" Font-Names="Calibri">4.All</asp:HyperLink>&nbsp;</center><br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; <center> Prepared By:-Lathiya Alpa,Kachot Purva,Mendapara Hiral</center>
</asp:Content>

