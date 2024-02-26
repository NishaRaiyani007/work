<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Employee.master" AutoEventWireup="true" CodeFile="EmployeeRequiredJob.aspx.cs" Inherits="Required_Job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   DataKeyNames="Id" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:TemplateField HeaderText="User_Id" SortExpression="User_Id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtUser_Id" runat="server" Text='<%# Bind("User_Id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbUser_Id" runat="server" Text='<%# Bind("User_Id") %>'></asp:Label>
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
                <asp:TemplateField HeaderText="Branch" SortExpression="Branch">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtBranch" runat="server" Text='<%# Bind("Branch") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbBranch" runat="server" Text='<%# Bind("Branch") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Location" SortExpression="Location">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtLocation" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbLocation" runat="server" Text='<%# Bind("Location") %>'></asp:Label>
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
                <asp:TemplateField HeaderText="Salary" SortExpression="Salary">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtSalary" runat="server" Text='<%# Bind("Salary") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbSalary" runat="server" Text='<%# Bind("Salary") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Requirement" SortExpression="Requirement">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtRequirement" runat="server" Text='<%# Bind("Requirement") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbRequirement" runat="server" Text='<%# Bind("Requirement") %>'></asp:Label>
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
                <asp:TemplateField HeaderText="Job_type" SortExpression="Job_type">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtJob_type" runat="server" Text='<%# Bind("Job_type") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbJob_type" runat="server" Text='<%# Bind("Job_type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="NoOfVacancy" SortExpression="NoOfVacancy">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtNoOfVacancy" runat="server" Text='<%# Bind("NoOfVacancy") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbNoOfVacancy" runat="server" Text='<%# Bind("NoOfVacancy") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EndDate" SortExpression="EndDate">
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
