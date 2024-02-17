<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="AdminUserManagement.aspx.cs" Inherits="Admin_AdminUserManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-box"><!-- Start Content Box -->
				
				<div class="content-box-header">
					
					<h3 style="cursor: s-resize; ">Content box</h3>
					
					<ul class="content-box-tabs">
							<li><a href="#tab1" class="default-tab current">Table</a></li>
							
							 
					</ul>
					
					<div class="clear"></div>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content">
					
					<div class="tab-content default-tab" id="tab1" style="display: block; "> <!-- This is the target div. id must match the href of this div's tab -->
						
						<div class="notification attention png_bg">
							<a href="#" class="close"><img src="../images/cross_grey_small.png" title="Close this notification" alt="close"></a>
							<div>
								View Current Users
							</div>
						</div>
						
						<asp:GridView ID="GridAdminUsermanagement" runat="server" AutoGenerateColumns="false"
						 AllowPaging="true" PageSize="10" OnPageIndexChanging="row_index">
                          <Columns>
                            <asp:BoundField DataField="Uid" HeaderText="UserID" />
                            <asp:BoundField DataField="Username" HeaderText="Username" />
                            <asp:BoundField DataField="Password" HeaderText="Password" />
                            <asp:BoundField DataField="EmailId"  HeaderText="Email Id"/>
                            <asp:BoundField DataField="PhoneNo" HeaderText="Phone No" />
                            <asp:TemplateField>
                              <%--<ItemTemplate>
                                <asp:LinkButton ID="details_btn" runat="server" Text="View Details" OnCommand="view_details"
                                CommandArgument='<%#DataBinder.Eval(Container.DataItem,"Uid") %>'>
                                </asp:LinkButton>
                              </ItemTemplate>--%>
                            </asp:TemplateField>
                            <asp:TemplateField>
                              <ItemTemplate>
                                <asp:LinkButton ID="del_btn" runat="server" Text="Delete" OnCommand="row_delete" OnClientClick="return confirm('Are you sure you want to delete this user?')"
                                 CommandArgument='<%#DataBinder.Eval(Container.DataItem,"Uid") %>' >                               
                                </asp:LinkButton>
                              </ItemTemplate>
                            </asp:TemplateField>
                          </Columns>
                        </asp:GridView>
						
					</div> <!-- End #tab1 -->
					
					 
					
				</div> <!-- End .content-box-content -->
				
			</div>

</asp:Content>

