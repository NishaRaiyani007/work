<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Visiter.master" AutoEventWireup="true" CodeFile="LOGIN.aspx.cs" Inherits="LOGIN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 15px;
        }
        .auto-style2 {
        width: 441px;
    }
        .auto-style4 {
            width: 46px;
        }
        .auto-style5 {
            width: 189px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>

        <table style="width: 100%;" >
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5" style="text-align: right">
                     <asp:Label ID="Label17" runat="server" Text="Log In" Font-Bold="True"  Font-Italic="True" ForeColor="Blue" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style2" style="vertical-align: middle">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5" style="text-align: right">&nbsp;</td>
                <td class="auto-style2" style="vertical-align: middle">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5" style="text-align: right">
                    <asp:Label ID="LbUserName" runat="server" Text="UserName" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style2" style="vertical-align: middle">
                    <asp:TextBox ID="TxtUserName" runat="server" placeholder="Enter Name"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5" style="text-align: right">
                    <asp:Label ID="LbPassword" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style2" style="vertical-align: middle">
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5" style="text-align: right">
                    &nbsp;</td>
                <td class="auto-style2" style="vertical-align: middle">
                    <table style="width: 22%; height: 4px;">
                        <tr>
                           <%-- <td style="width: 111px; height: 54px;"></td>--%>
                            <td align:"center" style="width: 148px; height: 25px; background-image: url('images/images.jpeg');">
                                <br />
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#FF0066" Text="Label"></asp:Label>
                            </td>
                            </tr>
                        
                        <tr>
                            <td style="width: 126px; height: 54px;">
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Code Here..."></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5" style="text-align: right">&nbsp;</td>
                <td class="auto-style2" style="vertical-align: middle">
                    <asp:Button ID="Button1" runat="server" Text="LogIn" OnClick="Button1_Click" />
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>                                                                                                               

             <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5" style="text-align: right">&nbsp;</td>
                <td class="auto-style2" style="vertical-align: middle">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>                                                                                                               

            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5" style="text-align: right">&nbsp;</td>
                <td class="auto-style1" colspan="2" style="vertical-align: middle">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/vForgotPassword.aspx" Font-Bold="True" Font-Italic="False" Font-Size="Small" ForeColor="#663300">ForgotPassword?</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/RegistrationPage.aspx" Font-Bold="True" ForeColor="#663300">Registration</asp:HyperLink>
                </td>
            </tr>
           
        </table>

    </div>
</asp:Content>

