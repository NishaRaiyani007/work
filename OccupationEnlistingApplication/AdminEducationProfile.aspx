<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Admin.master" AutoEventWireup="true" CodeFile="AdminEducationProfile.aspx.cs" Inherits="Edu_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 62px;
        }
        .auto-style2 {
            width: 295px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                     &nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">
                     <asp:Label ID="Label1" runat="server" Text="Education Profile" Font-Bold="True"  Font-Italic="True" ForeColor="Blue" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
                </td>
                <td style="text-align: left; vertical-align: middle">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">
                    <asp:Label ID="LbSchoolName" runat="server" Text="SchoolName"></asp:Label>
                </td>
                <td style="text-align: left; vertical-align: middle">
                    <asp:TextBox ID="TxtSchoolName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtSchoolName" Display="Dynamic" ErrorMessage="Enter SchoolName" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">
                    <asp:Label ID="LbSSCPercentage" runat="server" Text="SSCPercentage"></asp:Label>
                </td>
                <td style="text-align: left; vertical-align: middle">
                    <asp:TextBox ID="TxtSSCPercentage" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TxtSSCPercentage" Display="Dynamic" ErrorMessage="Allow Digit Only" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">
                    <asp:Label ID="LbHSCPercentage" runat="server" Text="HSCPercentage"></asp:Label>
                </td>
                <td style="text-align: left; vertical-align: middle">
                    <asp:TextBox ID="TxtHSCPercentage" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="TxtHSCPercentage" Display="Dynamic" ErrorMessage="Allow Digit Only" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">
                    <asp:Label ID="LbHSCPassingYear" runat="server" Text="HSCPassingYear"></asp:Label>
                </td>
                <td style="text-align: left; vertical-align: middle">
                    <asp:DropDownList ID="DDESelectValue" runat="server">
                        <asp:ListItem>--SelectValue--</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="DDSelectValue" Display="Dynamic" ErrorMessage="Select Value From The List" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">
                    <asp:Label ID="LBCollegeNameUG" runat="server" Text="CollegeNameUG"></asp:Label>
                </td>
                <td style="text-align: left; vertical-align: middle">
                    <asp:TextBox ID="TxtCollegeNameUG" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">
                    <asp:Label ID="LbUniversityNameUG" runat="server" Text="UniversityNameUG"></asp:Label>
                </td>
                <td style="text-align: left; vertical-align: middle">
                    <asp:TextBox ID="TxtUniversityNameUG" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">
                    <asp:Label ID="LbDegreeUG" runat="server" Text="DegreeUG"></asp:Label>
                </td>
                <td style="text-align: left; vertical-align: middle">
                    <asp:TextBox ID="TxtDegreeUG" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">
                    <asp:Label ID="LbCPIUG" runat="server" Text="CPIUG"></asp:Label>
                </td>
                <td style="text-align: left; vertical-align: middle">
                    <asp:TextBox ID="TxtCPIUG" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TxtCPIUG" Display="Dynamic" ErrorMessage="Allow Digit Only" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">
                    <asp:Label ID="LbPassingYearUG" runat="server" Text="PassingYearUG"></asp:Label>
                </td>
                <td style="text-align: left; vertical-align: middle">
                    <asp:TextBox ID="TxtPassingYearUG" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">
                    <asp:Label ID="LbCollegeNamePG" runat="server" Text="CollegeNamePG"></asp:Label>
                </td>
                <td style="text-align: left; vertical-align: middle">
                    <asp:TextBox ID="TxtCollegeNamePG" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtCollegeNamePG" Display="Dynamic" ErrorMessage="Enter CollegeName" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">
                    <asp:Label ID="LbUniversityNamePG" runat="server" Text="UniversityNamePG"></asp:Label>
                </td>
                <td style="text-align: left; vertical-align: middle">
                    <asp:TextBox ID="TxtUniversityNamePG" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">
                    <asp:Label ID="LbDegreePG" runat="server" Text="DegreePG"></asp:Label>
                </td>
                <td style="text-align: left; vertical-align: middle">
                    <asp:DropDownList ID="DDSelectValue" runat="server">
                        <asp:ListItem>--SelectValue--</asp:ListItem>
                        <asp:ListItem>BE</asp:ListItem>
                        <asp:ListItem>BTech</asp:ListItem>
                        <asp:ListItem>MTech</asp:ListItem>
                        <asp:ListItem>BCom</asp:ListItem>
                        <asp:ListItem>BA</asp:ListItem>
                        <asp:ListItem>MCom</asp:ListItem>
                        <asp:ListItem>MA</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>BBA</asp:ListItem>
                        <asp:ListItem>PGDCA</asp:ListItem>
                        <asp:ListItem>Bad</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="DDSelectValue" Display="Dynamic" ErrorMessage="Select Value From The List" OnServerValidate="CustomValidator2_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">
                    <asp:Label ID="LbCPIPG" runat="server" Text="CPIPG"></asp:Label>
                </td>
                <td style="text-align: left; vertical-align: middle">
                    <asp:TextBox ID="TxtCPIPG" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TxtCPIPG" Display="Dynamic" ErrorMessage="Allow Digit Only" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">
                    <asp:Label ID="LbPassingYearPG" runat="server" Text="PassingYearPG"></asp:Label>
                </td>
                <td style="text-align: left; vertical-align: middle">
                    <asp:DropDownList ID="DDSelectValue1" runat="server">
                        <asp:ListItem>--SelectValue--</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="DDSelectValue1" Display="Dynamic" ErrorMessage="Select Value From The List" OnServerValidate="CustomValidator3_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">
                    <asp:Label ID="LbExtraCurricular" runat="server" Text="ExtraCurricular"></asp:Label>
                </td>
                <td style="text-align: left; vertical-align: middle">
                    <asp:TextBox ID="TxtExtraCurricular" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2" style="text-align: right; vertical-align: middle">&nbsp;</td>
                <td style="text-align: left; vertical-align: middle">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Display" OnClick="Button2_Click" CausesValidation="False" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" AllowPaging="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" OnRowEditing="GridView1_RowEditing" Font-Italic="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:TemplateField HeaderText="SchoolName" SortExpression="SchoolName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtSchoolName" runat="server" Text='<%# Bind("SchoolName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbSchoolName" runat="server" Text='<%# Bind("SchoolName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SSCPercentage" SortExpression="SSCPercentage">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtSSCPercentage" runat="server" Text='<%# Bind("SSCPercentage") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbSSCPercentage" runat="server" Text='<%# Bind("SSCPercentage") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="HSCPercentage" SortExpression="HSCPercentage">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtHSCPercentage" runat="server" Text='<%# Bind("HSCPercentage") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbHSCPercentage" runat="server" Text='<%# Bind("HSCPercentage") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="HSCPassingYear" SortExpression="HSCPassingYear">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtHSCPassingYear" runat="server" Text='<%# Bind("HSCPassingYear") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbHSCPassingYear" runat="server" Text='<%# Bind("HSCPassingYear") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CollegeNameUG" SortExpression="CollegeNameUG">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCollegeNameUG" runat="server" Text='<%# Bind("CollegeNameUG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCollegeNameUG" runat="server" Text='<%# Bind("CollegeNameUG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UniversityNameUG" SortExpression="UniversityNameUG">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtUniversityNameUG" runat="server" Text='<%# Bind("UniversityNameUG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbUniversityNameUG" runat="server" Text='<%# Bind("UniversityNameUG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DegreeUG" SortExpression="DegreeUG">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtDegreeUG" runat="server" Text='<%# Bind("DegreeUG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbDegreeUG" runat="server" Text='<%# Bind("DegreeUG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CPIUG" SortExpression="CPIUG">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCPIUG" runat="server" Text='<%# Bind("CPIUG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCPIUG" runat="server" Text='<%# Bind("CPIUG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PassingYearUG" SortExpression="PassingYearUG">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtPassingYearUG" runat="server" Text='<%# Bind("PassingYearUG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbPassingYearUG" runat="server" Text='<%# Bind("PassingYearUG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CollegeNamePG" SortExpression="CollegeNamePG">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCollegeNamePG" runat="server" Text='<%# Bind("CollegeNamePG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCollegeNamePG" runat="server" Text='<%# Bind("CollegeNamePG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UniversityNamePG" SortExpression="UniversityNamePG">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtUniversityNamePG" runat="server" Text='<%# Bind("UniversityNamePG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbUniversityNamePG" runat="server" Text='<%# Bind("UniversityNamePG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DegreePG" SortExpression="DegreePG">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtDegreePG" runat="server" Text='<%# Bind("DegreePG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbDegreePG" runat="server" Text='<%# Bind("DegreePG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CPIPG" SortExpression="CPIPG">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCPIPG" runat="server" Text='<%# Bind("CPIPG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCPIPG" runat="server" Text='<%# Bind("CPIPG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PassingYearPG" SortExpression="PassingYearPG">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtPassingYearPG" runat="server" Text='<%# Bind("PassingYearPG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbPassingYearPG" runat="server" Text='<%# Bind("PassingYearPG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ExtraCurricular" SortExpression="ExtraCurricular">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtExtraCurricular" runat="server" Text='<%# Bind("ExtraCurricular") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbExtraCurricular" runat="server" Text='<%# Bind("ExtraCurricular") %>'></asp:Label>
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

