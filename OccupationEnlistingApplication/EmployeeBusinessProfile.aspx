<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Employee.master" AutoEventWireup="true" CodeFile="EmployeeBusinessProfile.aspx.cs" Inherits="EmployeeBusinessProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 248px;
        }
        .auto-style3 {
            width: 66px;
        }
        .auto-style4 {
            width: 208px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                     &nbsp;</td>
                <td class="auto-style4">
                     <asp:Label ID="Label17" runat="server" Text="Company Details" Font-Bold="True"  Font-Italic="True" ForeColor="Blue" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
                </td>
            <tr>
                <td class="auto-style3">
                     &nbsp;</td>
                <td class="auto-style4">
                     &nbsp;</td>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbCompanyName" runat="server" Text="CompanyName"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxTCompanyName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtCompanyName" Display="Dynamic" ErrorMessage="Enter CompanyName" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbBranchName" runat="server" Text="BranchName"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtBranchName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtBranchName" Display="Dynamic" ErrorMessage="Enter Name Of Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbBranchCode" runat="server" Text="BranchCode"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtBranchCode" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TxtBranchCode" Display="Dynamic" ErrorMessage="Code Must Be In Digit" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbAddress" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbCity" runat="server" Text="City"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbState" runat="server" Text="State"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtState" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbZipCode" runat="server" Text="ZipCode"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtZipCode" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbOfficeContactNo" runat="server" Text="OfficeContactNo"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtOfficeContactNo" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TxtOfficeContactNo" Display="Dynamic" ErrorMessage="Allow Digit Only" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbEmergencyContactNo" runat="server" Text="EmergencyContactNo"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtEmergencyContactNo" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="TxtEmergencyContactNo" Display="Dynamic" ErrorMessage="Allow Digit Only" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbCompanyWebsite" runat="server" Text="CompanyWebsite"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtCompanyWebsite" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbCompanyEmailId" runat="server" Text="CompanyEmailId"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtCompanyEmailId" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtCompanyEmailId" Display="Dynamic" ErrorMessage="Enter Valid EmailId" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbDiscription" runat="server" Text="Discription"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtDiscription" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbDepartmentOfCompany" runat="server" Text="DepartmentOfCompany"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtDepartmentOfCompany" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbStrengthOfEmployee" runat="server" Text="StrengthOfEmployee"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtStrengthOfEmployee" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbTotalEmployeeProfit" runat="server" Text="TotalEmployeeProfit"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtTotalEmployeeProfit" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbCompanyProfit" runat="server" Text="CompanyProfit"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtCompanyProfit" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Display" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Id"  PageSize="4" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:TemplateField HeaderText="CompanyName" SortExpression="CompanyName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCompanyName" runat="server" Text='<%# Bind("CompanyName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCompanyName" runat="server" Text='<%# Bind("CompanyName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BranchName" SortExpression="BranchName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtBranchName" runat="server" Text='<%# Bind("BranchName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbBranchName" runat="server" Text='<%# Bind("BranchName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BranchCode" SortExpression="BranchCode">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtBranchCode" runat="server" Text='<%# Bind("BranchCode") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbBranchCode" runat="server" Text='<%# Bind("BranchCode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address" SortExpression="Address">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtAddress" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbAddress" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City" SortExpression="City">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCity" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCity" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="State" SortExpression="State">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtState" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbState" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ZipCode" SortExpression="ZipCode">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtZipCode" runat="server" Text='<%# Bind("ZipCode") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbZipCode" runat="server" Text='<%# Bind("ZipCode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OfficeContactNo" SortExpression="OfficeContactNo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtOfficeContactNo" runat="server" Text='<%# Bind("OfficeContactNo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbOfficeContactNo" runat="server" Text='<%# Bind("OfficeContactNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EmergencyContactNo" SortExpression="EmergencyContactNo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtEmergencyContactNo" runat="server" Text='<%# Bind("EmergencyContactNo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbEmergencyContactNo" runat="server" Text='<%# Bind("EmergencyContactNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CompanyWebsite" SortExpression="CompanyWebsite">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCompanyWebsite" runat="server" Text='<%# Bind("CompanyWebsite") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCompanyWebsite" runat="server" Text='<%# Bind("CompanyWebsite") %>'></asp:Label>
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
                <asp:TemplateField HeaderText="Discription" SortExpression="Discription">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtDiscription" runat="server" Text='<%# Bind("Discription") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbDiscription" runat="server" Text='<%# Bind("Discription") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DepartmentOfCompany" SortExpression="DepartmentOfCompany">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtDepartmentOfCompany" runat="server" Text='<%# Bind("DepartmentOfCompany") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbDepartmentOfCompany" runat="server" Text='<%# Bind("DepartmentOfCompany") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="StrengthOfEmployee" SortExpression="StrengthOfEmployee">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtStrengthOfEmployee" runat="server" Text='<%# Bind("StrengthOfEmployee") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbStrengthOfEmployee" runat="server" Text='<%# Bind("StrengthOfEmployee") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TotalEmployeeProfit" SortExpression="TotalEmployeeProfit">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtTotalEmployeeProfit" runat="server" Text='<%# Bind("TotalEmployeeProfit") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbTotalEmployeeProfit" runat="server" Text='<%# Bind("TotalEmployeeProfit") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CompanyProfit" SortExpression="CompanyProfit">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCompanyProfit" runat="server" Text='<%# Bind("CompanyProfit") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCompanyProfit" runat="server" Text='<%# Bind("CompanyProfit") %>'></asp:Label>
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

