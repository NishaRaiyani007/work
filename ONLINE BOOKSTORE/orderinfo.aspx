<%@ Page Language="C#" MasterPageFile="~/mymaster.master" AutoEventWireup="true" CodeFile="orderinfo.aspx.cs" Inherits="orderinfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <center>  <table>
        <tr>
            <td style="width: 119px; height: 87px;">
                <asp:Image ID="Image1" runat="server" /></td>
            <td style="width: 449px; height: 87px;" valign="top">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 119px">
                <asp:Label ID="Label3" runat="server" Text="Quantity"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="31px"></asp:TextBox></td>
            <td style="width: 449px">
                &nbsp; &nbsp;</td>
        </tr>
      <tr>
          <td style="width: 119px">
          </td>
          <td style="width: 449px">
              <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ok" Width="41px" />&nbsp;
              <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" /></td>
      </tr>
    </table></center>  <center> Prepared By:-Lathiya Alpa,Kachot Purva,Mendapara Hiral</center>
</asp:Content>

