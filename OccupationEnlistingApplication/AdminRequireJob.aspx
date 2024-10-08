﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Admin.master" AutoEventWireup="true" CodeFile="AdminRequireJob.aspx.cs" Inherits="RequireJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 16px;
        }
        .auto-style3 {
            width: 68px;
        }
        .auto-style4 {
            width: 204px;
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
                     <asp:Label ID="Label1" runat="server" Text="Require Job" Font-Bold="True"  Font-Italic="True" ForeColor="Blue" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbCompanyName" runat="server" Text="CompanyName"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtCompanyName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbBranch" runat="server" Text="Branch"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtBranch" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbLocation" runat="server" Text="Location"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtLocation" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbExperiance" runat="server" Text="Experiance"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtExperiance" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbSalary" runat="server" Text="Salary"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtSalary" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbRequirement" runat="server" Text="Requirement"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtRequirement" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbSkill" runat="server" Text="Skill"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtSkill" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbJob_type" runat="server" Text="Job_type"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtJob_type" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbNoOfVacancy" runat="server" Text="NoOfVacancy"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtNoOfVacancy" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbEndDate" runat="server" Text="EndDate"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtEndDate" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Display" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="4" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Id" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:TemplateField HeaderText="User User_Id" SortExpression="User_Id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtUser_Id" runat="server" Text='<%# Bind("User_Id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbUser_Id" runat="server" Text='<%# Bind("User_Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User CompanyName" SortExpression="CompanyName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCompanyName" runat="server" Text='<%# Bind("CompanyName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCompanyName" runat="server" Text='<%# Bind("CompanyName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User Branch" SortExpression="Branch">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtBranch" runat="server" Text='<%# Bind("Branch") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbBranch" runat="server" Text='<%# Bind("Branch") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User Location" SortExpression="Location">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtLocation" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbLocation" runat="server" Text='<%# Bind("Location") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User Experiance" SortExpression="Experiance">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtExperiance" runat="server" Text='<%# Bind("Experiance") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbExperiance" runat="server" Text='<%# Bind("Experiance") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User Salary" SortExpression="Salary">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtSalary" runat="server" Text='<%# Bind("Salary") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbSalary" runat="server" Text='<%# Bind("Salary") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User Requirement" SortExpression="Requirement">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtRequirement" runat="server" Text='<%# Bind("Requirement") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbRequirement" runat="server" Text='<%# Bind("Requirement") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User Skill" SortExpression="Skill">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtSkill" runat="server" Text='<%# Bind("Skill") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbSkill" runat="server" Text='<%# Bind("Skill") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User Job_type" SortExpression="Job_type">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtJob_type" runat="server" Text='<%# Bind("Job_type") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbJob_type" runat="server" Text='<%# Bind("Job_type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User NoOfVacancy" SortExpression="NoOfVacancy">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtNoOfVacancy" runat="server" Text='<%# Bind("NoOfVacancy") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbNoOfVacancy" runat="server" Text='<%# Bind("NoOfVacancy") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User EndDate" SortExpression="EndDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtEndDate" runat="server" Text='<%# Bind("EndDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbEndDate" runat="server" Text='<%# Bind("EndDate") %>'></asp:Label>
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

