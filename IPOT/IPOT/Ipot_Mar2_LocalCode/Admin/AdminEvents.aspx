<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true"
    CodeFile="AdminEvents.aspx.cs" Inherits="Admin_AdminEvents" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
            padding: 3px;
        }
        .PagerStyle123 td span
        {
            background-color: #CCDBE4;
            padding: 2px;
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
    <script type="text/javascript">
        function Validatenews() {

            var txtEventNews = document.getElementById('<%= txt_event.ClientID %>').value;
            if (txtEventNews == null || txtEventNews == "") {
                alert("Please  enter News ");
                document.getElementById('<%= txt_event.ClientID %>').focus();
                return false;
            }
            return true;
        }


        function projvalidate() {

            var txtproject = document.getElementById('<%= txt_Project.ClientID %>').value;
            if (txtproject == null || txtproject == "") {
                alert("Please  enter Projects ");
                document.getElementById('<%= txt_Project.ClientID %>').focus();
                return false;
            }
            return true;
        }


        
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 600px; margin: 0 auto">
        <div class="content-box" style="margin: 0 auto; width: 600px">
            <div class="content-box-header" style="margin: 0 auto; width: 600px">
                <h3 style="cursor: s-resize;">
                    Event Management</h3>
                <div class="clear">
                </div>
            </div>
            <cc1:TabContainer ID="TabContainerforCategories" runat="server" ActiveTabIndex="0"
                Style="margin: 0 auto; width: 600px">
                <cc1:TabPanel ID="Tabpanelcities" runat="server">
                    <HeaderTemplate>
                        News Updates
                    </HeaderTemplate>
                    <ContentTemplate>
                        <asp:UpdatePanel ID="UpdateNews" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="GridView2" CssClass="mGrid" runat="server" AutoGenerateColumns="false"
                                    AllowPaging="true" PageSize="2" OnPageIndexChanging="subrow_index" OnRowEditing="subrow_edit"
                                    OnRowCancelingEdit="subrow_editcancel" OnRowUpdating="subcat_update">
                                    <Columns>
                                        <asp:BoundField DataField="EventId" HeaderText="Sl.No" ReadOnly="true" />
                                        <asp:BoundField DataField="Events" HeaderText="Event Name" />
                                        <asp:CommandField ShowEditButton="true" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="delete_btn" runat="server" Text="Delete" OnCommand="City_delete"
                                                    OnClientClick="return confirm('Are you sure you want to delete this Event?')"
                                                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"EventId") %>'>
                                                </asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <PagerStyle CssClass="PagerStyle123" />
                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="First" NextPageText="Next"
                                        PreviousPageText="Previous" LastPageText="Last" />
                                </asp:GridView>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </ContentTemplate>
                </cc1:TabPanel>
                <cc1:TabPanel ID="Tabpanelprojects" runat="server">
                    <HeaderTemplate>
                        Projects Updates
                    </HeaderTemplate>
                    <ContentTemplate>
                        <asp:UpdatePanel ID="UpdateProjects" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="GridView1" CssClass="mGrid" runat="server" AutoGenerateColumns="false"
                                    AllowPaging="true" PageSize="2" OnPageIndexChanging="project_index" OnRowEditing="project_edit"
                                    OnRowCancelingEdit="project_editcancel" OnRowUpdating="project_update">
                                    <Columns>
                                        <asp:BoundField DataField="EventId" HeaderText="Sl.No" ReadOnly="true" />
                                        <asp:BoundField DataField="Projects" HeaderText="Project Name" />
                                        <asp:CommandField ShowEditButton="true" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="delete_btn1" runat="server" Text="Delete" OnCommand="Project_delete"
                                                    OnClientClick="return confirm('Are you sure you want to delete this Project?')"
                                                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"EventId") %>'>
                                                </asp:LinkButton>
                                                <asp:HiddenField ID="hdnID" runat="server" Value='<%#DataBinder.Eval(Container.DataItem,"EventId") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <PagerStyle CssClass="PagerStyle123" />
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
        <div style="width: 700px; height: 250px; margin: 0 auto">
            <cc1:TabContainer ID="TabContainer1" runat="server" Width="600px">
                <cc1:TabPanel ID="Tabpanel4" runat="server" Width="200px">
                    <HeaderTemplate>
                        Add Events
                    </HeaderTemplate>
                    <ContentTemplate>
                        <label>
                            Event Name:</label>
                        &nbsp;&nbsp;<asp:TextBox ID="txt_event" runat="server" TextMode="MultiLine" Width="250px"
                            CssClass="txtBoxAdmin"></asp:TextBox>
                        <br />
                        <br />
                        <asp:UpdatePanel ID="updatepanels" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Button1" runat="server" Text="Add Events" CssClass="button" OnClick="btn_AddCities_Click"
                                    OnClientClick="return Validatenews ()" />
                                <asp:Label ID="Label_News" runat="server" ForeColor="#33CC33"></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </ContentTemplate>
                </cc1:TabPanel>
                <cc1:TabPanel ID="TabpanelProj" runat="server" Width="200px">
                    <HeaderTemplate>
                        Add Projects
                    </HeaderTemplate>
                    <ContentTemplate>
                        <label>
                            Projects Name:</label>
                        &nbsp;&nbsp;<asp:TextBox ID="txt_Project" runat="server" TextMode="MultiLine" Width="250px"
                            CssClass="txtBoxAdmin"></asp:TextBox>
                        <br />
                        <br />
                        <asp:UpdatePanel ID="updatepanelProject" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Button2" runat="server" Text="Add Projects" CssClass="button" OnClick="btn_AddProjects_Click"
                                    OnClientClick="return projvalidate()" />
                                <asp:Label ID="Label_Projects" runat="server" ForeColor="#33CC33"></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </ContentTemplate>
                </cc1:TabPanel>
            </cc1:TabContainer>
        </div>
    </div>
</asp:Content>
