<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Student.master" AutoEventWireup="true" CodeFile="CompanyPersonalProfile.aspx.cs" Inherits="Personal_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 244px;
        }
        .auto-style2 {
            width: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
                     &nbsp;</td>
                <td class="auto-style1">
                     <asp:Label ID="Label17" runat="server" Text="Personal Details" Font-Bold="True"  Font-Italic="True" ForeColor="Blue" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
                </td>
             <tr>
                <td class="auto-style2">
                     &nbsp;</td>
                <td class="auto-style1">
                     &nbsp;</td>
             <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbFirstName" runat="server" Text="FirstName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtFirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Name" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbMiddleName" runat="server" Text="MiddleName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtMiddleName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbLastName" runat="server" Text="LastName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtLastName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbAge" runat="server" Text="Age"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtAge" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Your Age Is In Between 18 to 25" ControlToValidate="TextBox4" Display="Dynamic" MaximumValue="25" MinimumValue="18" SetFocusOnError="True"></asp:RangeValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbGender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RBGender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>NotSpecified</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbDateOfBirth" runat="server" Text="DateOfBirth"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtDateOfBirth" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbAddress1" runat="server" Text="Address1"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtAddress1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbAddress2" runat="server" Text="Address2"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtAddress2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbCity" runat="server" Text="City"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbState" runat="server" Text="State"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtState" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Lbcountry" runat="server" Text="country"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DDSelectValue" runat="server">
                        <asp:ListItem>--SelectValue--</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Select Value From List" ControlToValidate="DDSelectValue" Display="Dynamic" OnServerValidate="CustomValidator2_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbNationality" runat="server" Text="Nationality"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtNationality" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbHobby" runat="server" Text="Hobby"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtHobby" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbContactNo" runat="server" Text="ContactNo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtContactNo" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TxtContactNo" Display="Dynamic" ErrorMessage="Allow Digit Only" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbMobileNo" runat="server" Text="MobileNo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtMobileNo" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TxtMobileNo" Display="Dynamic" ErrorMessage="Allow Digit Only" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbEmailId" runat="server" Text="EmailId"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtEmailId" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmailId" Display="Dynamic" ErrorMessage="Enter Valid EmailId" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Display" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1"></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Id" PageSize="4" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnPageIndexChanging="GridView1_PageIndexChanging" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:TemplateField HeaderText="FirstName" SortExpression="FirstName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MiddleName" SortExpression="MiddleName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtMiddleName" runat="server" Text='<%# Bind("MiddleName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbMiddleName" runat="server" Text='<%# Bind("MiddleName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="LastName" SortExpression="LastName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Age" SortExpression="Age">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtAge" runat="server" Text='<%# Bind("Age") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbAge" runat="server" Text='<%# Bind("Age") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtGender" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbGender" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DateOfBirth" SortExpression="DateOfBirth">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtDateOfBirth" runat="server" Text='<%# Bind("DateOfBirth") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbDateOfBirth" runat="server" Text='<%# Bind("DateOfBirth") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address1" SortExpression="Address1">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtAddress1" runat="server" Text='<%# Bind("Address1") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbAddress1" runat="server" Text='<%# Bind("Address1") %>'></asp:Label>
                    </ItemTemplate> 
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address2" SortExpression="Address2">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtAddress2" runat="server" Text='<%# Bind("Address2") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbAddress2" runat="server" Text='<%# Bind("Address2") %>'></asp:Label>
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
                <asp:TemplateField HeaderText="Country" SortExpression="Country">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCountry" runat="server" Text='<%# Bind("Country") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCountry" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nationality" SortExpression="Nationality">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtNationality" runat="server" Text='<%# Bind("Nationality") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbNationality" runat="server" Text='<%# Bind("Nationality") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hobby" SortExpression="Hobby">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtHobby" runat="server" Text='<%# Bind("Hobby") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbHobby" runat="server" Text='<%# Bind("Hobby") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ContactNo" SortExpression="ContactNo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtContactNo" runat="server" Text='<%# Bind("ContactNo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbContactNo" runat="server" Text='<%# Bind("ContactNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MobileNo" SortExpression="MobileNo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtMobileNo" runat="server" Text='<%# Bind("MobileNo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbMobileNo" runat="server" Text='<%# Bind("MobileNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EmailId" SortExpression="EmailId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtEmailId" runat="server" Text='<%# Bind("EmailId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbEmailId" runat="server" Text='<%# Bind("EmailId") %>'></asp:Label>
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

