<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true"
    CodeFile="AdminAssign.aspx.cs" Inherits="Admin_AdminAssign" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function checkvalue() {



            var e = document.getElementById("ctl00_ContentPlaceHolder1_DDCategory");
            var e1 = document.getElementById("ctl00_ContentPlaceHolder1_DDSubCategory");
            var e2 = document.getElementById("ctl00_ContentPlaceHolder1_DDUserName");
            var e3 = document.getElementById("ctl00_ContentPlaceHolder1_DDTime");

            var strUser = e.options[e.selectedIndex].value;

            var strUser2 = e2.options[e2.selectedIndex].value;

            var strUser3 = e3.options[e3.selectedIndex].value;

            if (strUser == 0) //for text use if(strUser1=="Select")
            {
                alert("Please select a Category");
                document.getElementById("ctl00_ContentPlaceHolder1_DDCategory").focus();
                return false;
            }

            else if (strUser2 == 0) //for text use if(strUser1=="Select")
            {
                alert("Please select a Users");
                document.getElementById("ctl00_ContentPlaceHolder1_DDUserName").focus();

                return false;
            }

            else if (strUser3 == 0) //for text use if(strUser1=="Select")
            {
                alert("Please select the Timings");
                document.getElementById("ctl00_ContentPlaceHolder1_DDTime").focus();

                return false;
            }



            else {


                return true;

            }
        }


        function checkvalue1() {

            var e = document.getElementById("ctl00_ContentPlaceHolder1_DDSubCategory");
            var strUser = e.options[e.selectedIndex].value;

            if (strUser == 0) //for text use if(strUser1=="Select")
            {

                var e1 = document.getElementById("ctl00_ContentPlaceHolder1_DDSubCategory");
                var strUser1 = e1.options[e1.selectedIndex].value;

                if (strUser1 == 0) //for text use if(strUser1=="Select")
                {
                    alert("Please select a Sub Category First ..");
                    document.getElementById("ctl00_ContentPlaceHolder1_DDCategory").focus();
                    return false;
                }

                else {

                    return true;

                }

            }

            else {

                return true;
            }

        }
             
             
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td colspan="5px">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-family: Calibri; font-size: 15px; width: 10px;">
                            Category
                        </td>
                        <td style="width: 60px;">
                            <asp:UpdatePanel ID="UpdateDDCat" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList ID="DDCategory" runat="server" OnSelectedIndexChanged="Bindsubcategory_indexchange"
                                        AutoPostBack="true" Width="140px">
                                    </asp:DropDownList>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                        <%--<td style="font-family:Calibri; font-size:15px;width: 50px;" colspan="1px">Sub Category</td>
                        --%>
                        <td style="width: 80px;">
                            <asp:UpdatePanel ID="UpdateDDSubCatg" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList ID="DDSubCategory" runat="server" OnSelectedIndexChanged="DDSubCategory_SelectedIndexChanged"
                                        AutoPostBack="true">
                                    </asp:DropDownList>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; font-size: 15px; width: 42px;">
                            UserName
                        </td>
                        <td style="width: 200px;">
                            <asp:UpdatePanel ID="UpdateDDUser" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList ID="DDUserName" runat="server" OnSelectedIndexChanged="DDUserName_SelectedIndexChanged"
                                        AutoPostBack="true" onchange="return checkvalue1()">
                                    </asp:DropDownList>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                        <td>
                            <asp:UpdatePanel ID="UpdateTime" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList ID="DDTime" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DDTime_SelectedIndexChanged">
                                        <asp:ListItem Value="0">--Please Set Time--</asp:ListItem>
                                        <%--<asp:ListItem value="1">1</asp:ListItem>
                                  <asp:ListItem value="2">2</asp:ListItem>
                                   <asp:ListItem value="3">3</asp:ListItem>
                                    <asp:ListItem value="4">4</asp:ListItem>
                                     <asp:ListItem value="5">5 Minutes</asp:ListItem>
                                      <asp:ListItem value="6">6</asp:ListItem>
                                       <asp:ListItem value="7">7</asp:ListItem>
                                        <asp:ListItem value="8">8</asp:ListItem>
                                         <asp:ListItem value="9">9</asp:ListItem>--%>
                                        <asp:ListItem Value="10">10 Minutes</asp:ListItem>
                                        <asp:ListItem Value="11">11</asp:ListItem>
                                        <asp:ListItem Value="12">12</asp:ListItem>
                                        <asp:ListItem Value="13">13</asp:ListItem>
                                        <asp:ListItem Value="14">14</asp:ListItem>
                                        <asp:ListItem Value="15">15 Minutes</asp:ListItem>
                                        <asp:ListItem Value="16">16</asp:ListItem>
                                        <asp:ListItem Value="17">17</asp:ListItem>
                                        <asp:ListItem Value="18">18</asp:ListItem>
                                        <asp:ListItem Value="19">19</asp:ListItem>
                                        <asp:ListItem Value="20">20 Minutes</asp:ListItem>
                                        <asp:ListItem Value="21">21</asp:ListItem>
                                        <asp:ListItem Value="22">22</asp:ListItem>
                                        <asp:ListItem Value="23">23</asp:ListItem>
                                        <asp:ListItem Value="24">24</asp:ListItem>
                                        <asp:ListItem Value="25">25 Minutes</asp:ListItem>
                                        <asp:ListItem Value="26">26</asp:ListItem>
                                        <asp:ListItem Value="27">27</asp:ListItem>
                                        <asp:ListItem Value="28">28</asp:ListItem>
                                        <asp:ListItem Value="29">29</asp:ListItem>
                                        <asp:ListItem Value="30">30 Minutes</asp:ListItem>
                                        <asp:ListItem Value="31">31</asp:ListItem>
                                        <asp:ListItem Value="32">32</asp:ListItem>
                                        <asp:ListItem Value="33">33</asp:ListItem>
                                        <asp:ListItem Value="34">34</asp:ListItem>
                                        <asp:ListItem Value="35">35 Minutes</asp:ListItem>
                                        <asp:ListItem Value="36">36</asp:ListItem>
                                        <asp:ListItem Value="37">37</asp:ListItem>
                                        <asp:ListItem Value="38">38</asp:ListItem>
                                        <asp:ListItem Value="39">39</asp:ListItem>
                                        <asp:ListItem Value="40">40 Minutes</asp:ListItem>
                                        <asp:ListItem Value="41">41</asp:ListItem>
                                        <asp:ListItem Value="42">42</asp:ListItem>
                                        <asp:ListItem Value="43">43</asp:ListItem>
                                        <asp:ListItem Value="44">44</asp:ListItem>
                                        <asp:ListItem Value="45">45 Minutes</asp:ListItem>
                                        <asp:ListItem Value="46">46</asp:ListItem>
                                        <asp:ListItem Value="47">47</asp:ListItem>
                                        <asp:ListItem Value="48">48</asp:ListItem>
                                        <asp:ListItem Value="49">49</asp:ListItem>
                                        <asp:ListItem Value="50">50 Minutes</asp:ListItem>
                                        <asp:ListItem Value="51">51</asp:ListItem>
                                        <asp:ListItem Value="52">52</asp:ListItem>
                                        <asp:ListItem Value="52">53</asp:ListItem>
                                        <asp:ListItem Value="54">54</asp:ListItem>
                                        <asp:ListItem Value="55">55 Minutes</asp:ListItem>
                                        <asp:ListItem Value="56">56</asp:ListItem>
                                        <asp:ListItem Value="57">57</asp:ListItem>
                                        <asp:ListItem Value="58">58</asp:ListItem>
                                        <asp:ListItem Value="59">59</asp:ListItem>
                                        <asp:ListItem Value="60">60 Minutes</asp:ListItem>
                                    </asp:DropDownList>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                        <td>
                            <center>
                                <asp:Button runat="server" ID="Assign" Text="Assign" OnClick="Assign_Click" OnClientClick="return checkvalue ()" />
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5">
                            <div class="content-box">
                                <!-- Start Content Box -->
                                <div class="content-box-header">
                                    <h3 style="cursor: s-resize;">
                                        Assigned Users Table</h3>
                                    <ul class="content-box-tabs">
                                        <li><a href="#tab1" class="default-tab current">Table</a></li>
                                    </ul>
                                    <div class="clear">
                                    </div>
                                </div>
                                <!-- End .content-box-header -->
                                <div class="content-box-content">
                                    <div class="tab-content default-tab" id="tab1" style="display: block;">
                                        <!-- This is the target div. id must match the href of this div's tab -->
                                        <div class="notification attention png_bg">
                                            <a href="#" class="close">
                                                <img src="../images/cross_grey_small.png" title="Close this notification" alt=""></a>
                                            <div>
                                                View Assigned Users
                                            </div>
                                        </div>
                                        <asp:GridView ID="show_Assign_users" runat="server" AutoGenerateColumns="false" AllowPaging="true"
                                            OnPageIndexChanging="row_index" OnRowDataBound="gvStatus_RowDataBound" 
                                            onselectedindexchanged="show_Assign_users_SelectedIndexChanged">
                                            <Columns>
                                                <asp:BoundField HeaderText="UID" DataField="UserID" />
                                                <asp:BoundField HeaderText="UserName" DataField="Username" />
                                                <asp:BoundField HeaderText="Password" DataField="Password" />
                                                <asp:BoundField HeaderText="Email ID" DataField="EmailId" />
                                                <asp:BoundField HeaderText="Quest Paper" DataField="SubCatgName" />
                                                <asp:BoundField HeaderText="Assigned On" DataField="CreatedOn" />
                                                <asp:BoundField HeaderText="Timings" DataField="SetTimings" />
                                                <asp:TemplateField>
                                                    <HeaderTemplate>
                                                        <span></span>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblstatus" runat="server"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="del_btn" runat="server" Text="Delete" OnCommand="row_delete"
                                                            OnClientClick="return confirm('Are you sure you want to delete this user?')"
                                                            CommandArgument='<%#DataBinder.Eval(Container.DataItem,"AID") %>'>                               
                                </asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
