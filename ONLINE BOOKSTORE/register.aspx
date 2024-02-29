<%@ Page Language="C#" MasterPageFile="~/mymaster.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; 
   <center> <asp:Label ID="Label2" runat="server" BackColor="#FFE0C0" BorderColor="White" Font-Bold="True"
        Font-Names="Calibri" Font-Size="X-Large" ForeColor="#400040" Text="Fill up following Form for Registration"></asp:Label>
    &nbsp; &nbsp;<br />
    <br />
    &nbsp; &nbsp; &nbsp;&nbsp;
    <table>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="lusername" runat="server" Text="UserName" BackColor="#FFE0C0" Font-Names="Calibri" Font-Size="Large" ForeColor="#400040"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtusernm" runat="server" Font-Names="Calibri" Font-Size="Large" ForeColor="#404000"></asp:TextBox></td>
            <td style="width: 114px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusernm"
                    ErrorMessage="Username Must Required" Width="178px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 17px;">
                <asp:Label ID="Label3" runat="server" Text="Password" BackColor="#FFE0C0" Font-Names="Calibri" Font-Size="Large" ForeColor="#400040"></asp:Label></td>
            <td style="width: 100px; height: 17px;">
                <asp:TextBox ID="txtpassword" runat="server" MaxLength="10" TextMode="Password" Font-Names="Calibri" Font-Size="Large" ForeColor="#404000" OnTextChanged="txtpassword_TextChanged"></asp:TextBox></td>
            <td style="width: 114px; height: 17px;" align="left">
                &nbsp; &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                    ErrorMessage="Password Must Required" Width="189px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px;">
                <asp:Label ID="Label4" runat="server" Text="FirstName" BackColor="#FFE0C0" Font-Names="Calibri" Font-Size="Large" ForeColor="#400040"></asp:Label></td>
            <td style="width: 100px; height: 26px;">
                <asp:TextBox ID="txtfname" runat="server" Font-Names="Calibri" Font-Size="Large" ForeColor="#404000"></asp:TextBox></td>
            <td style="width: 114px; height: 26px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtfname"
                    ErrorMessage="Firstname Must Required" Width="182px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label5" runat="server" Text="LastName" BackColor="#FFE0C0" Font-Names="Calibri" Font-Size="Large" ForeColor="#400040"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtlname" runat="server" Font-Names="Calibri" Font-Size="Large" ForeColor="#404000"></asp:TextBox></td>
            <td style="width: 114px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtlname"
                    ErrorMessage="Lastname Must Required" Width="186px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label6" runat="server" Text="E-MailId" BackColor="#FFE0C0" Font-Names="Calibri" Font-Size="Large" ForeColor="#400040"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtemail" runat="server" Font-Names="Calibri" Font-Size="Large" ForeColor="#404000"></asp:TextBox></td>
            <td style="width: 114px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="E-Mail must Required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    Width="184px"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 40px;">
                <asp:Label ID="Label7" runat="server" Text="Phone No." BackColor="#FFE0C0" Font-Names="Calibri" Font-Size="Large" ForeColor="#400040"></asp:Label></td>
            <td style="width: 100px; height: 40px;">
                <asp:TextBox ID="txtphone" runat="server" Font-Names="Calibri" Font-Size="Large" ForeColor="#404000"></asp:TextBox></td>
            <td style="width: 114px; height: 40px;">
                <br />
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtphone"
                    ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator><br />
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label8" runat="server" Text="Address" BackColor="#FFE0C0" Font-Names="Calibri" Font-Size="Large" ForeColor="#400040"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtadd" runat="server" Font-Names="Calibri" Font-Size="Large" ForeColor="#404000"></asp:TextBox></td>
            <td style="width: 114px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtadd"
                    ErrorMessage="Address Must Required" Width="177px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label9" runat="server" Text="CardType" BackColor="#FFE0C0" Font-Names="Calibri" Font-Size="Large" ForeColor="#400040"></asp:Label></td>
            <td style="width: 100px">
                <asp:DropDownList ID="cardlist" runat="server" OnSelectedIndexChanged="cardlist_SelectedIndexChanged" Font-Names="Calibri" Font-Size="Large" ForeColor="#404000">
                    <asp:ListItem Value="1">Vissa</asp:ListItem>
                    <asp:ListItem Value="2">AmericanExpress</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 114px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label10" runat="server" Text="CardNumber" BackColor="#FFE0C0" Font-Names="Calibri" Font-Size="Large" ForeColor="#400040"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtcardno" runat="server" Font-Names="Calibri" Font-Size="Large" ForeColor="#404000"></asp:TextBox></td>
            <td style="width: 114px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcardno"
                    ErrorMessage="Cardnumber Must Required" Width="195px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Button ID="btsubmit" runat="server" OnClick="btsubmit_Click" Text="Submit" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#404000" /></td>
            <td style="width: 100px">
                <asp:Button ID="btcancel" runat="server" Text="Cancel" OnClick="btcancel_Click" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#404000" />
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
            </td>
            <td style="width: 114px">
                </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" BackColor="#FFE0C0" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#400040"></asp:Label><br /></center> 
 <center> Prepared By:-Lathiya Alpa,Kachot Purva,Mendapara Hiral</center>
</asp:Content>

