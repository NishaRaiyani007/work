<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Admin.master" AutoEventWireup="true" CodeFile="AdminCampusProfile.aspx.cs" Inherits="Campus_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 370px;
        }
        .auto-style3 {
            width: 74px;
        }
        .auto-style4 {
            width: 207px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
    
      <%--  <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    
                     &nbsp;</td>
                <td class="auto-style4">
                    
                     <asp:Label ID="Label1" runat="server" Text="Campus Details" Font-Bold="True"  Font-Italic="True" ForeColor="Blue" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
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
                    
                    <asp:Label ID="LbUser_Id" runat="server" Text="User_Id"></asp:Label>
                </td>
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
                    <asp:Label ID="LbTitle" runat="server" Text="Title"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtTitle" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbMessage" runat="server" Text="Message"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtMessage" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbCity" runat="server" Text="City"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbState" runat="server" Text="State"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtState" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbPlace" runat="server" Text="Place"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtPlace" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbDate" runat="server" Text="Date"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtDate" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbDays" runat="server" Text="Days"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DDSelectDays" runat="server">
                        <asp:ListItem>--Select Days--</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="DDSelectDays" Display="Dynamic" ErrorMessage="Select Days From The List" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbQualification" runat="server" Text="Qualification"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtQualification" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbAggregatePercentage" runat="server" Text="AggregatePercentage"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtAggregatePercentage" runat="server"></asp:TextBox>
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
                    <asp:Label ID="LbType" runat="server" Text="Type"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DDSelectType" runat="server">
                        <asp:ListItem>--Select Type--</asp:ListItem>
                        <asp:ListItem>On</asp:ListItem>
                        <asp:ListItem>Off</asp:ListItem>
                        <asp:ListItem>On/Off</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="DDSelectType" Display="Dynamic" ErrorMessage="Select Type From The List" OnServerValidate="CustomValidator2_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbStatus" runat="server" Text="Status"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DDSelectStatus" runat="server">
                        <asp:ListItem>--Select Status--</asp:ListItem>
                        <asp:ListItem>Open</asp:ListItem>
                        <asp:ListItem>Close</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="DDSelectStatus" Display="Dynamic" ErrorMessage="Select Status From The List" OnServerValidate="CustomValidator3_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbExam" runat="server" Text="Exam"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DDSelectExam" runat="server">
                        <asp:ListItem>--Select Exam--</asp:ListItem>
                        <asp:ListItem>Written</asp:ListItem>
                        <asp:ListItem>PI</asp:ListItem>
                        <asp:ListItem>GS</asp:ListItem>
                        <asp:ListItem>HR</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="DDSelectExam" Display="Dynamic" ErrorMessage="Select Exam From The List" OnServerValidate="CustomValidator4_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbOtherReqirement" runat="server" Text="OtherReqirement"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtOtherReqirement" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LbApplicationDate" runat="server" Text="ApplicationDate"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtApplicationDate" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Display" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>--%>
    
         <br />
         <asp:Label ID="Label1" runat="server" Text="Campus Details" Font-Bold="True"  Font-Italic="True" ForeColor="Blue" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
    
         <br />
    
         <br />
    
    </div>
   
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" DataKeyNames="Id" PageSize="4" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting"  OnRowUpdating="GridView1_RowUpdating"  BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="CompanyName" SortExpression="CompanyName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCompanyName" runat="server" Text='<%# Bind("CompanyName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCompanyName" runat="server" Text='<%# Bind("CompanyName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City" SortExpression="City">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCity" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbCity" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Place" SortExpression="Place">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtPlace" runat="server" Text='<%# Bind("Place") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbPlace" runat="server" Text='<%# Bind("Place") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date" SortExpression="Date">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtDate" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbDate" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Qualification" SortExpression="Qualification">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtQualification" runat="server" Text='<%# Bind("Qualification") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbQualification" runat="server" Text='<%# Bind("Qualification") %>'></asp:Label>
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
                <asp:TemplateField HeaderText="Type" SortExpression="type">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtType" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbType" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Exam" SortExpression="Exam">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtExam" runat="server" Text='<%# Bind("Exam") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbExam" runat="server" Text='<%# Bind("Exam") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ApplicationDate" SortExpression="ApplicationDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtApplicationDate" runat="server" Text='<%# Bind("ApplicationDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbApplicationDate" runat="server" Text='<%# Bind("ApplicationDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select">Details</asp:LinkButton>
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
     <br />
     <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="298px" AutoGenerateRows="False">
         <Fields>
             <asp:TemplateField HeaderText="Company Name">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("ApplicationDate") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Title">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Message">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label3" runat="server" Text='<%# Bind("Messages") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="City">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label4" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="State">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label5" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="No Of Vacancy">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label6" runat="server" Text='<%# Bind("NoOfVacancy") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Status">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label7" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Place">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label8" runat="server" Text='<%# Bind("Place") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Type">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label9" runat="server" Text='<%# Bind("Type") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Exam">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label10" runat="server" Text='<%# Bind("Exam") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Application Date">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label11" runat="server" Text='<%# Bind("Exam") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Aggregate Percentage">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label12" runat="server" Text='<%# Bind("AggregatePercentage") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
         </Fields>
     </asp:DetailsView>
</asp:Content>

