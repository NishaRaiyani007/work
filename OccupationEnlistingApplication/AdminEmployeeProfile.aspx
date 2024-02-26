<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Admin.master" AutoEventWireup="true" CodeFile="AdminEmployeeProfile.aspx.cs" Inherits="AdminEmployeeProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 11px;
        }
        .auto-style4 {
            width: 66px;
        }
        .auto-style5 {
            width: 226px;
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
                     <asp:Label ID="Label17" runat="server" Text="Employee Profile" Font-Bold="True"  Font-Italic="True" ForeColor="Blue" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
                </td>

            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbEmployeeName" runat="server" Text="EmployeeName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtEmployeeName" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtEmployeeName" Display="Dynamic" ErrorMessage="Enter EmployeeName" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbCompanyName" runat="server" Text="CompanyName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCompanyName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtCompanyName" Display="Dynamic" ErrorMessage="Enter CompanyName" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbDepartment" runat="server" Text="Department"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtDepartment" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtDepartment" Display="Dynamic" ErrorMessage="Enter Working DeparmentName" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbStatus" runat="server" Text="Status"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtStatus" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbDateOfJoining" runat="server" Text="DateOfJoining"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtDateOfJoining" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbSkill" runat="server" Text="Skill"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtSkill" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbCurrentSalary" runat="server" Text="CurrentSalary"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCurrentSalary" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TxtCurrentSalary" Display="Dynamic" ErrorMessage="Salary Must Be In Digit" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbCategory" runat="server" Text="Category"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>FullTime</asp:ListItem>
                        <asp:ListItem>PartTime</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbAchievement" runat="server" Text="Achievement"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtAchievement" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbLanguageKnown" runat="server" Text="LanguageKnown"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DDSelectLanguage" runat="server">
                        <asp:ListItem>--SelectLanguage--</asp:ListItem>
                        <asp:ListItem>ASP.NET</asp:ListItem>
                        <asp:ListItem>JAVA</asp:ListItem>
                        <asp:ListItem>PHP</asp:ListItem>
                        <asp:ListItem>C#</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="DDSelectLanguage" Display="Dynamic" ErrorMessage="Select Language From The List" SetFocusOnError="True" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbPreviousCompany" runat="server" Text="PreviousCompany"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtPreviousCompany" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbDesignation" runat="server" Text="Designation"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtDesignation" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbPreviousSalary" runat="server" Text="PreviousSalary"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtPreviousSalary" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TxtPreviousSalary" Display="Dynamic" ErrorMessage="Salary Must Be In Digit" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
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
                    <asp:DropDownList ID="DDSelectExperiance" runat="server">
                        <asp:ListItem>--SelectExperiance--</asp:ListItem>
                        <asp:ListItem>1Year</asp:ListItem>
                        <asp:ListItem>1-3Year</asp:ListItem>
                        <asp:ListItem>Above 3 Year</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="DDSelectExperiance" Display="Dynamic" ErrorMessage="Select Experiance From The List" SetFocusOnError="True" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbReason" runat="server" Text="Reason"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtReason" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbCompanyEmailId" runat="server" Text="CompanyEmailId"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCompanyEmailId" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtCompanyEmailId" Display="Dynamic" ErrorMessage="Enter Valid EmailId" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbCompanyContactNo" runat="server" Text="CompanyContactNo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCompanyContactNo" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TxtCompanyContactNo" Display="Dynamic" ErrorMessage="Allow Digit Only" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" ValidationGroup="a" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Display" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Id" PageSize="4" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnPageIndexChanging="GridView1_PageIndexChanging" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:TemplateField HeaderText="EmployeeName" SortExpression="EmployeeName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtEmployeeName" runat="server" Text='<%# Bind("EmployeeName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbEmployeeName" runat="server" Text='<%# Bind("EmployeeName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CompanyName" SortExpression="CompanyName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCompanyName" runat="server" Text='<%# Bind("CompanyName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCompanyName" runat="server" Text='<%# Bind("CompanyName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Department" SortExpression="Department">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtDepartment" runat="server" Text='<%# Bind("Department") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbDepartment" runat="server" Text='<%# Bind("Department") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status" SortExpression="Status">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtStatus" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbStatus" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DateOfJoining" SortExpression="DateOfJoining">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtDateOfJoining" runat="server" Text='<%# Bind("DateOfJoining") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbDateOfJoining" runat="server" Text='<%# Bind("DateOfJoining") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Skill" SortExpression="Skill">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtSkill" runat="server" Text='<%# Bind("Skill") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbSkill" runat="server" Text='<%# Bind("Skill") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CurrentSalary" SortExpression="CurrentSalary">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCurrentSalary" runat="server" Text='<%# Bind("CurrentSalary") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCurrentSalary" runat="server" Text='<%# Bind("CurrentSalary") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User_Id" SortExpression="User_Id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtUser_Id" runat="server" Text='<%# Bind("User_Id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbUser_Id" runat="server" Text='<%# Bind("User_Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category" SortExpression="Category">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCategory" runat="server" Text='<%# Bind("Category") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCategory" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Achievement" SortExpression="Achievement">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtAchievement" runat="server" Text='<%# Bind("Achievement") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbAchievement" runat="server" Text='<%# Bind("Achievement") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="LanguageKnown" SortExpression="LanguageKnown">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtLanguageKnown" runat="server" Text='<%# Bind("LanguageKnown") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbLanguageKnown" runat="server" Text='<%# Bind("LanguageKnown") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PreviousCompany" SortExpression="PreviousCompany">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtPreviousCompany" runat="server" Text='<%# Bind("PreviousCompany") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbPreviousCompany" runat="server" Text='<%# Bind("PreviousCompany") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Designation" SortExpression="Designation">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtDesignation" runat="server" Text='<%# Bind("Designation") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbDesignation" runat="server" Text='<%# Bind("Designation") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PreviousSalary" SortExpression="PreviousSalary">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtPreviousSalary" runat="server" Text='<%# Bind("PreviousSalary") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbPreviousSalary" runat="server" Text='<%# Bind("PreviousSalary") %>'></asp:Label>
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
                <asp:TemplateField HeaderText="Reason" SortExpression="Reason">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtReason" runat="server" Text='<%# Bind("Reason") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbReason" runat="server" Text='<%# Bind("Reason") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CompanyEmailId" SortExpression="CompanyEmailId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCompanyEmailId" runat="server" Text='<%# Bind("CompanyEmailId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCompanyEmailId" runat="server" Text='<%# Bind("CompanyEmailId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CompanyContactNo" SortExpression="CompanyContactNo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCompanyContactNo" runat="server" Text='<%# Bind("CompanyContactNo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCompanyContactNo" runat="server" Text='<%# Bind("CompanyContactNo") %>'></asp:Label>
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



