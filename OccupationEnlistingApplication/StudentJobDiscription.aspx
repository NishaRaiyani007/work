<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Student.master" AutoEventWireup="true" CodeFile="StudentJobDiscription.aspx.cs" Inherits="DiscriptionOfJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 251px;
        }
        .auto-style2 {
            width: 83px;
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
                     <asp:Label ID="Label17" runat="server" Text="Job Discription" Font-Bold="True"  Font-Italic="True" ForeColor="Blue" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
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
                    <asp:Label ID="LbDiscription" runat="server" Text="Discription"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtDiscription" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbTiming" runat="server" Text="Timing"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtTiming" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbSkill" runat="server" Text="Skill"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtSkill" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbReference" runat="server" Text="Reference"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtReference" runat="server" style="margin-top: 0px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbJob_Status" runat="server" Text="Job_Status"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtJob_Status" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbJob_Name" runat="server" Text="Job_Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtJob_Name" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbJob_StartDate" runat="server" Text="Job_StartDate"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtJob_StartDate" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbApplicationName" runat="server" Text="ApplicationName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtApplicationName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Display" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Id" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:TemplateField HeaderText="User_Id" SortExpression="User_Id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtUser_Id" runat="server" Text='<%# Bind("User_Id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbUser_Id" runat="server" Text='<%# Bind("User_Id") %>'></asp:Label>
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
                <asp:TemplateField HeaderText="Timing" SortExpression="Timing">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtTiming" runat="server" Text='<%# Bind("Timing") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbTiming" runat="server" Text='<%# Bind("Timing") %>'></asp:Label>
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
                <asp:TemplateField HeaderText="Reference" SortExpression="Reference">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtReference" runat="server" Text='<%# Bind("Reference") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbReference" runat="server" Text='<%# Bind("Reference") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Job_Status" SortExpression="Job_Status">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtJob_Status" runat="server" Text='<%# Bind("Job_Status") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbJob_Status" runat="server" Text='<%# Bind("Job_Status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Job_Name" SortExpression="Job_Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtJob_Name" runat="server" Text='<%# Bind("Job_Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbJob_Name" runat="server" Text='<%# Bind("Job_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Job_StartDate" SortExpression="Job_StartDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtJob_StartDate" runat="server" Text='<%# Bind("Job_StartDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbJob_StartDate" runat="server" Text='<%# Bind("Job_StartDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ApplicationName" SortExpression="ApplicationName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtApplicationName" runat="server" Text='<%# Bind("ApplicationName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbApplicationName" runat="server" Text='<%# Bind("ApplicationName") %>'></asp:Label>
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

