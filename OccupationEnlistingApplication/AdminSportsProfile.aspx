<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Admin.master" AutoEventWireup="true" CodeFile="AdminSportsProfile.aspx.cs" Inherits="Sports_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 70px;
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
                     <asp:Label ID="Label17" runat="server" Text="Sports Profile" Font-Bold="True"  Font-Italic="True" ForeColor="Blue" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
                </td>
            <tr>
                <td class="auto-style2">
                     &nbsp;</td>
                <td class="auto-style1">
                     &nbsp;</td>
           <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style6" colspan="3">
                    <asp:Label ID="LbSchoolLevelSports" runat="server" Text="SchoolLevelSports" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbSchoolSports1" runat="server" Text="SchoolSports1"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtSchoolSports1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbSchoolSports2" runat="server" Text="SchoolSports2"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtSchoolSports2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbSchoolSports3" runat="server" Text="SchoolSports3"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtSchoolSports3" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style6" colspan="3">
                    <asp:Label ID="LbAwards" runat="server" Text="Awards" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbSchoolLevelAwards" runat="server" Text="SchoolLevelAwards"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtSchoolLevelAwards" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbOtherAwardsAtSchoolLevel" runat="server" Text="OtherAwardsAtSchoolLevel"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtOtherAwardsAtSchoolLevel" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style6" colspan="3">
                    <asp:Label ID="LbCollegeLevelSports" runat="server" Text="CollegeLevelSports" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbCollegeSports1" runat="server" Text="CollegeSports1"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCollegeSports1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbCollegeSports2" runat="server" Text="CollegeSports2"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCollegeSports2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbCollegeSports3" runat="server" Text="CollegeSports3"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCollegeSports3" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style6" colspan="3">
                    <asp:Label ID="LbAwards1" runat="server" Text="Awards" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbCollegeLevelAwards" runat="server" Text="CollegeLevelAwards"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCollegeLevelAwards" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbOtherAwardsAtCollegeLevel" runat="server" Text="OtherAwardsAtCollegeLevel"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtOtherAwardsAtCollegeLevel" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style6" colspan="3">
                    <asp:Label ID="LbOtherLevelSports" runat="server" Text="OtherLevelSports" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbOtherSports1" runat="server" Text="OtherSports1"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtOtherSports1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbOtherSports2" runat="server" Text="OtherSports2"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtOtherSports2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbOtherSports3" runat="server" Text="OtherSports3"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtOtherSports3" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style6" colspan="3">
                    <asp:Label ID="LbAwards2" runat="server" Text="Awards" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbOtherAwards" runat="server" Text="OtherAwards"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtOtherAwards" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbExtraAwards" runat="server" Text="ExtraAwards"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtExtraAwards" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Display" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Id" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:TemplateField HeaderText="SchoolSports1" SortExpression="SchoolSports1">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtSchoolSports1" runat="server" Text='<%# Bind("SchoolSports1") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbSchoolSports1" runat="server" Text='<%# Bind("SchoolSports1") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SchoolSports2" SortExpression="SchoolSports2">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtSchoolSports2" runat="server" Text='<%# Bind("SchoolSports2") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbSchoolSports2" runat="server" Text='<%# Bind("SchoolSports2") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SchoolSports3" SortExpression="SchoolSports3">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtSchoolSports3" runat="server" Text='<%# Bind("SchoolSports3") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbSchoolSports1" runat="server" Text='<%# Bind("SchoolSports3") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SchoolLevelAwards" SortExpression="SchoolLevelAwards">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtSchoolLevelAwards" runat="server" Text='<%# Bind("SchoolLevelAwards") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbSchoolLevelAwards" runat="server" Text='<%# Bind("SchoolLevelAwards") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OtherAwards" SortExpression="OtherAwards">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtOtherAwards1" runat="server" Text='<%# Bind("OtherAwards") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbOtherAwards" runat="server" Text='<%# Bind("OtherAwards") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CollegeSports1" SortExpression="CollegeSports1">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCollegeSports1" runat="server" Text='<%# Bind("CollegeSports1") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCollegeSports1" runat="server" Text='<%# Bind("CollegeSports1") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CollegeSports2" SortExpression="CollegeSports2">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCollegeSports2" runat="server" Text='<%# Bind("CollegeSports2") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCollegeSports2" runat="server" Text='<%# Bind("CollegeSports2") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CollegeSports3" SortExpression="CollegeSports3">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCollegeSports3" runat="server" Text='<%# Bind("CollegeSports3") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCollegeSports3" runat="server" Text='<%# Bind("CollegeSports3") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CollegeLevelAwards" SortExpression="CollegeLevelAwards">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCollegeLevelAwards" runat="server" Text='<%# Bind("CollegeLevelAwards") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCollegeLevelAwards" runat="server" Text='<%# Bind("CollegeLevelAwards") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OtherAwards" SortExpression="OtherAwards">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtOtherAwards" runat="server" Text='<%# Bind("OtherAwards") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbOtherAwards" runat="server" Text='<%# Bind("OtherAwards") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OtherSports1" SortExpression="OtherSports1">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtOtherSports1" runat="server" Text='<%# Bind("OtherSports1") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbOtherSports1" runat="server" Text='<%# Bind("OtherSports1") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OtherSports2" SortExpression="OtherSports2">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtOtherSports2" runat="server" Text='<%# Bind("OtherSports2") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbOtherSports2" runat="server" Text='<%# Bind("OtherSports2") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OtherSports3" SortExpression="OtherSports3">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtOtherSports3" runat="server" Text='<%# Bind("OtherSports3") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbOtherSports3" runat="server" Text='<%# Bind("OtherSports3") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OtherAwards" SortExpression="OtherAwards">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtOtherAwards2" runat="server" Text='<%# Bind("OtherAwards") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbOtherAwards" runat="server" Text='<%# Bind("OtherAwards") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ExtraAwards" SortExpression="ExtraAwards">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtExtraAwards" runat="server" Text='<%# Bind("ExtraAwards") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbExtraAwards" runat="server" Text='<%# Bind("ExtraAwards") %>'></asp:Label>
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


