<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="viewvisitor.aspx.cs" Inherits="admin_viewuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
        GridLines="None" Height="165px" Width="396px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        ondatabound="GridView1_DataBound" 
        onselectedindexchanging="GridView1_SelectedIndexChanging">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
           <asp:CommandField ShowSelectButton="true" SelectText="Reply" />
            <asp:TemplateField HeaderText="Name" SortExpression="vnm">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("vnm") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("vnm") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="vemail">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("vemail") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("vemail") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Message" SortExpression="msg">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("msg") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("msg") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            data not found
        </EmptyDataTemplate>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br/>
    <br/>
    <asp:Panel ID="Panel1" runat="server">
    <table>
        <tr>
            <td><asp:Label ID="lbltoemail" runat="server" Text="TO Email"  Height="30" Width="100"></asp:Label></td>
            <td><asp:TextBox ID="txttoemail" runat="server" Height="30" Width="300"></asp:TextBox></td>
        </tr>

         <tr>
            <td><asp:Label ID="lblsub" runat="server" Text="Subject"  Height="30" Width="100"></asp:Label></td>
            <td><asp:TextBox ID="txtsub" runat="server" Height="30" Width="300"></asp:TextBox></td>
        </tr>

         <tr>
            <td><asp:Label ID="lblmsg" runat="server" Text="Message"  Height="30" Width="100"></asp:Label></td>
            <td><asp:TextBox ID="txtmsg" runat="server" Height="30" Width="300" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        
        <tr>
        <td colspan="2" align="center"><asp:Button ID="btnsend" runat="server" Text="Send" 
                onclick="btnsend_Click" /></td>
        </tr>
    </table>
    </asp:Panel>
</center>
</asp:Content>

