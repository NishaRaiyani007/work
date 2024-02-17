<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="AdminCategoryManagement.aspx.cs" Inherits="Admin_AdminCategoryManagement" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
    <script type="text/javascript">
      
      
        function ValidateSubCategories() {

            var SubCategory = document.getElementById('<%=DropDownList1.ClientID%>').value;
            var SubCatName = document.getElementById('<%= txt_subcategory.ClientID %>').value;
            if (SubCategory == "0") {
                alert("Please select a Category ");
                return false;
            }

            
            else if (SubCatName == null || SubCatName == "") {
                alert("Please  enter Sub-Category Name ");
                document.getElementById('<%= txt_subcategory.ClientID %>').focus();
                return false;
            }
            return true;
        }


        
    </script>
    
    <script type="text/javascript">

        function ValidateCategory() {

            var Catname = document.getElementById("ctl00_ContentPlaceHolder1_TabContainerforCategories_TabPanel3_txt_category");


            if (Catname.value == null || Catname.value == "") {
                alert("Please Enter the Category Name");
                Catname.focus();
                return false;
            }
            
            else {
                return true;
            }

        }
   
</script>
    
    
    <style type="text/css">
             .PagerStyle123
        {
            width: 5px;
            padding: 3px;
            border: solid 1px #C1C1C1;
           color: black;
            font-weight: normal;
            font-size: 12px;
        }
        
        .PagerStyle123 td 
        {
        	 border: solid 1px #CCDBE4;
        	 
        	 padding:3px;
        	 
        }
        .PagerStyle123 td span
        {
        	
        	background-color:#CCDBE4;
        	 padding:2px;
        }
         .PagerStyle123 td span:hover
        {
        	
        }
        .mGrid
        {
            width: 5px;
            padding: 2px;
            border: solid 1px #C1C1C1;
            color: black;
            font-weight: normal;
            font-size: 12px;
            
           
        }
        .fontcss
        {
            margin-right: 148px;
        }
        .fontcss11
        {
            margin-right: 290px;
        }
        .crypbordrstyle
        {
            background-color: #F3F3F3;
            border-bottom: 1px solid #B0B0B0;
            border-right: 1px solid #B0B0B0;
            border-top: 1px solid #B0B0B0;
            border-left: 1px solid #B0B0B0;
            color: #1274C0;
            cursor: pointer;
            float: right;
            font-size: 12px;
            margin: 0;
            width: 280px;
        }
        /* css for auto complete*/
        /*-------------Start--------------*/
        .autocomplete_completionListElement
        {
           visibility: hidden;
            margin-left: 0px !important;
            background-color: #fff;
            padding-left: 0px;
            border: buttonshadow;
            border-width: 1px;
            border-style: solid;
            cursor: hand;
            overflow: auto; /* height: auto; */
            height: 200px;
            text-align: left;
            list-style-type: none;
            white-space: nowrap;
            font-family: Verdana, Arial, Helvetica, Sans-Serif;
            font-size: 11px;
            color: #2C557C;
            font-weight: normal;
            width: auto;
            z-index: 100000;
        }
        /* AutoComplete highlighted item */
        .autocomplete_highlightedListItem
        {
            background-color: #BBDDFF;
            color: #000000;
            padding: 1px;
            white-space: nowrap;
            font-family: Verdana, Arial, Helvetica, Sans-Serif;
            font-size: 11px;
            font-weight: normal;
        }
        /* AutoComplete item */
        .autocomplete_listItem
        {
            background-color: #FFFFFF;
            color: #2C557C;
            padding: 1px;
            white-space: nowrap;
            font-family: Verdana, Arial, Helvetica, Sans-Serif;
            font-size: 11px;
            font-weight: normal;
            z-index: 100000;
        }
        /*-------------End--------------*/
        .heaader
        {
            text-decoration: none;
            font-family: @Arial Unicode MS;
            font-size: 13px;
            font-weight: bolder;
            color: Maroon;
        }
        .heaader:hover
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%-->>>>>>>>>>>>>>>>>>>--S---R--E->>>Stage Management Grid Starts<<<--E---D--H--A--R---<<<<<<<<<<<<--%>
    <div class="clear" style="height: 10px">
    </div>
    <div class="content-box">
        <div class="content-box-header">
            <h3 style="cursor: s-resize;">
                ONLINE EXAM Management</h3>
            <div class="clear">
            </div>
        </div>
        
         <cc1:TabContainer ID="TabContainerforCategories" runat="server" Width="600px" 
            ActiveTabIndex="0">
            <cc1:TabPanel ID="TabPanel3" runat="server">
                <HeaderTemplate>
                    Add Category
                </HeaderTemplate>
                <ContentTemplate>
                    <table>
                        <tr>
                            <td>Category Name</td>
                            <td>:</td>
                            <td>
                                <asp:TextBox ID="txt_category" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        
                        <tr>
                           <td>
                               <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" OnClientClick=" return ValidateCategory()" />
                           </td>
                        </tr>
                         
                    <tr><td>
                       <asp:Label ID="lbladdcatg" runat="server" ForeColor="#33cc33"></asp:Label>
                                                        
                        </td></tr>
                    </table>
                    
                </ContentTemplate>
            </cc1:TabPanel>
            <cc1:TabPanel ID="TabPanel5" runat="server">
                <HeaderTemplate>
                    Add SubCategory
                </HeaderTemplate>
                <ContentTemplate>
                    <table>
                    <tr>
                            <td>Select Category Name</td>
                            <td>:</td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>SubCategory Name</td>
                            <td>:</td>
                            <td>
                                <asp:TextBox ID="txt_subcategory" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        
                        <tr>
                           <td>
                               <asp:Button ID="Button2" runat="server" Text="Submit"  onclick="Button1_Subcategory" OnClientClick="return ValidateSubCategories()" />
                           </td>
                        </tr>
                          <tr><td>
                       <asp:Label ID="lbl_addSubCatg" runat="server" ForeColor="#33cc33"></asp:Label>
                                                        
                        </td></tr>
                    </table>
                </ContentTemplate>
            </cc1:TabPanel>
            <cc1:TabPanel ID="TabPanel6" runat="server">
                <HeaderTemplate>
                    Categories
                </HeaderTemplate>
                <ContentTemplate>
                <asp:UpdatePanel ID="updatecatg" runat="server">
                <ContentTemplate>
                    <asp:GridView CssClass="mGrid" ID="GridView3" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                        PageSize="4" OnPageIndexChanging="row_index" OnRowEditing="row_edit" OnRowCancelingEdit="row_editcancel"
                        OnRowUpdating="row_update">
                        <Columns>
                            <asp:BoundField DataField="CatgID" HeaderText="CatgID" ReadOnly="True" />
                            <asp:BoundField DataField="CatgName" HeaderText="Category Name" ItemStyle-Width="100px" ItemStyle-Wrap="true" />
                            <asp:CommandField ShowEditButton="True" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="delete_btn" runat="server" Text="Delete" OnCommand="cat_delete" OnClientClick="return confirm('Are you sure you want to delete this Category?')"
                                        CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CatgID") %>'>
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle CssClass="PagerStyle123"/>
                        <PagerSettings Mode="NumericFirstLast" FirstPageText="First" NextPageText="Next"
                            PreviousPageText="Previous" LastPageText="Last" />
                    </asp:GridView>
                    </ContentTemplate>
                
                </asp:UpdatePanel>
                </ContentTemplate>
            </cc1:TabPanel>
            <cc1:TabPanel ID="Tabpanel8" runat="server">
                <HeaderTemplate>
                    Sub Categories
                </HeaderTemplate>
                <ContentTemplate>
                
                <asp:UpdatePanel ID="UpdateSubCat" runat="server">
                <ContentTemplate>
              
                    <asp:GridView CssClass="mGrid"  ID="Grid_SubCategory" runat="server" AutoGenerateColumns="false" AllowPaging="true"
                        PageSize="2" OnPageIndexChanging="subrow_index" OnRowEditing="subrow_edit" OnRowCancelingEdit="subrow_editcancel"
                        OnRowUpdating="subcat_update">
                        <Columns>
                            <asp:BoundField DataField="SubCatgID" HeaderText="Sub Catg ID" ReadOnly="true" />
                            <asp:BoundField DataField="SubCatgName" HeaderText="Sub-Category Name" ItemStyle-Width="100px" ItemStyle-Wrap="true" />
                            <asp:BoundField DataField="CatgName" HeaderText="Category Name" ReadOnly="true" ItemStyle-Width="100px" ItemStyle-Wrap="true" />
                            <asp:CommandField ShowEditButton="true" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="delete_btn" runat="server" Text="Delete" OnCommand="subcat_delete" OnClientClick="return confirm('Are you sure you want to delete this Sub-Category?')"
                                        CommandArgument='<%#DataBinder.Eval(Container.DataItem,"SubCatgID") %>'>
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle CssClass="PagerStyle123"/>
                        <PagerSettings Mode="NumericFirstLast" FirstPageText="First" NextPageText="Next"
                            PreviousPageText="Previous" LastPageText="Last" />
                    </asp:GridView>
                    </ContentTemplate>
                </asp:UpdatePanel>
                </ContentTemplate>
            </cc1:TabPanel>
            
          
        </cc1:TabContainer>   
    </div>
    <div class="clear">
    </div>
    
    <!-- End .content-box -->
</asp:Content>
