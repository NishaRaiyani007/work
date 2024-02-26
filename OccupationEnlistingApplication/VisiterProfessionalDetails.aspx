<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Visiter.master" AutoEventWireup="true" CodeFile="VisiterProfessionalDetails.aspx.cs" Inherits="AddProffessionalDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 10px;
        }
        .auto-style4 {
            width: 39px;
        }
        .auto-style5 {
            width: 213px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
    
        
        <table style="width:100%;">
            <tr>
                <td class="auto-style4">
                     &nbsp;</td>
                <td class="auto-style5">
                     <asp:Label ID="Label17" runat="server" Text="Professional Details" Font-Bold="True"  Font-Italic="True" ForeColor="Blue" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
                </td>
            <tr>
                <td class="auto-style4">
                     &nbsp;</td>
                <td class="auto-style5">
                     &nbsp;</td>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbJob_Type" runat="server" Text="Job_Type"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtJob_Type" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbExperiance" runat="server" Text="Experiance"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtExperiance" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbCurrentIndustry" runat="server" Text="CurrentIndustry"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCurrentIndustry" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbFunction" runat="server" Text="Function"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TxtFunction" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbKeySkill" runat="server" Text="KeySkill"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtKeySkill" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbProfileHeadline" runat="server" Text="ProfileHeadline"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtProfileHeadline" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbEducation" runat="server" Text="Education"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DDSelectEducation" runat="server">
                        <asp:ListItem>--Select Education--</asp:ListItem>
                        <asp:ListItem>Basic</asp:ListItem>
                        <asp:ListItem>Master</asp:ListItem>
                        <asp:ListItem>Doctorable</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="DDSelectEducation" Display="Dynamic" ErrorMessage="Select Education From The List" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbCertificate" runat="server" Text="Certificate"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DDSelectValue" runat="server">
                        <asp:ListItem>--Select Value--</asp:ListItem>
                        <asp:ListItem>Basic</asp:ListItem>
                        <asp:ListItem>Master</asp:ListItem>
                        <asp:ListItem>Doctorable</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="DDSelectValue" Display="Dynamic" ErrorMessage="Select Value From List" OnServerValidate="CustomValidator2_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Display" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Id" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
             <Columns>
                <asp:TemplateField HeaderText="Job_Type" SortExpression="Job_Type">
                    <EditItemTemplate>
                        <asp:TextBox ID="TXTJob_Type" runat="server" Text='<%# Bind("Job_Type") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LBJob_Type" runat="server" Text='<%# Bind("Job_Type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Experiance" SortExpression="Experiance">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtExperiance" runat="server" Text='<%# Bind("Experiance") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbExperiance" runat="server" Text='<%# Bind("Experiance") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CurrentIndustry" SortExpression="CurrentIndustry">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCurrentIndustry" runat="server" Text='<%# Bind("CurrentIndustry") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCurrentIndustry" runat="server" Text='<%# Bind("CurrentIndustry") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Function" SortExpression="Function">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtFunction" runat="server" Text='<%# Bind("Function") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbFunction" runat="server" Text='<%# Bind("Function") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KeySkill" SortExpression="KeySkill">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtKeySkill" runat="server" Text='<%# Bind("KeySkill") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbKeySkill" runat="server" Text='<%# Bind("KeySkill") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ProfileHeadline" SortExpression="ProfileHeadline">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtProfileHeadline" runat="server" Text='<%# Bind("ProfileHeadline") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbProfileHeadline" runat="server" Text='<%# Bind("ProfileHeadline") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Education" SortExpression="Education">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtEducation" runat="server" Text='<%# Bind("Education") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbEducation" runat="server" Text='<%# Bind("Education") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Certificate" SortExpression="Certificate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCertificate" runat="server" Text='<%# Bind("Certificate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCertificate" runat="server" Text='<%# Bind("Certificate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
             <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
             <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
             <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
             <RowStyle BackColor="White" ForeColor="#003399" />
             <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
             <SortedAscendingCellStyle BackColor="#EDF6F6" />
             <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
             <SortedDescendingCellStyle BackColor="#D6DFDF" />
             <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>

</asp:Content>

