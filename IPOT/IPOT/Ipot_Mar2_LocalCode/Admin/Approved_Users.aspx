<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Approved_Users.aspx.cs" Inherits="Admin_Approved_Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:GridView ID="show_registered_users_new" runat="server" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging="row_index"  >
<Columns>
   
<asp:BoundField HeaderText="UserID" DataField="UID" />
<asp:BoundField HeaderText="UserName" DataField="Username" />
<%--<asp:BoundField HeaderText="Password" DataField="Password" />
--%>
<asp:BoundField HeaderText="Email ID" DataField="EmailId" />

<asp:BoundField HeaderText="Phone No" DataField="PhoneNo" />
<asp:BoundField HeaderText="Registered On" DataField="RegisteredOn" />

    
    <asp:TemplateField HeaderText="Status" HeaderStyle-Width="130px" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="140px" >
        <ItemTemplate>
            <asp:RadioButton ID="wRdoViewStatus" runat="server" Text="Active" AutoPostBack="true"
                GroupName="wRdoGrpViewStatus" OnCheckedChanged="wRdoViewStatus_CheckedChanged"
                Checked=' <%# DataBinder.Eval(Container.DataItem, "Status").ToString().Equals("1")%>' HorizontalContentAlignment="Stretch"   />
            <asp:RadioButton ID="wRdoDefault" runat="server" Text="Inactive" AutoPostBack="true"
                GroupName="wRdoGrpViewStatus" OnCheckedChanged="wRdoViewStatus_CheckedChanged1"
                Checked=' <%# DataBinder.Eval(Container.DataItem, "Status").ToString().Equals("0")%>' HorizontalContentAlignment="Stretch"  />
                
        </ItemTemplate>
    </asp:TemplateField>
   
    <asp:TemplateField>
        <ItemTemplate>
            <asp:LinkButton ID="del_btn" runat="server" Text="Delete" OnCommand="row_delete"
                OnClientClick="return confirm('Are you sure you want to delete this user?')"
                CommandArgument='<%#DataBinder.Eval(Container.DataItem,"Uid") %>'>                               
                                </asp:LinkButton>
                                
         <asp:HiddenField runat="server" id="hdnUid" Value='<%#Eval("Uid") %>'/>
        </ItemTemplate>
    </asp:TemplateField>

               

</Columns>
</asp:GridView>
</asp:Content>

