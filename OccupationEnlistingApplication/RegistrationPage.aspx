<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Visiter.master" AutoEventWireup="true" CodeFile="RegistrationPage.aspx.cs" Inherits="RegistrationPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 255px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>

        <table style="width: 100%;">
            <tr>
                <td colspan="3" style="color:red">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label17" runat="server" Text="Registration" Font-Bold="True"  Font-Italic="True" ForeColor="Blue" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>&nbsp;<br />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="color:red">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LbEmailId" runat="server" Text="Email" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style2" style="vertical-align: bottom">
                    <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Valid Email Address!!!" Display="Dynamic" SetFocusOnError="True" ControlToValidate="TxtEmail"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" Display="Dynamic" ErrorMessage="Please Enter Valid EmailAddress!!!" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LbPassword" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                    
                </td>
                <td class="auto-style2" style="vertical-align: bottom">
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Please Enter  Atleast 6 Character For Password!!!" ControlToValidate="TxtPassword" Display="Dynamic" SetFocusOnError="True"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LbConPass" runat="server" Text="Confirm Password" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style2" style="vertical-align: bottom">
                    <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPassword" ErrorMessage="Password And Confirm Password Doesn't Match!!!" ControlToValidate="TxtConfirmPassword" Display="Dynamic"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LbType" runat="server" Text="Type" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style2" style="vertical-align: bottom">
                    <asp:DropDownList ID="DDType" runat="server">
                        <asp:ListItem>--Select Type--</asp:ListItem>
                        <asp:ListItem>Company</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Employee</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Please Select Type!!! " ControlToValidate="DDType" Display="Dynamic" SetFocusOnError="True"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

