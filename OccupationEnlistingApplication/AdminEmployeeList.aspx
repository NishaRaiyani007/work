<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Admin.master" AutoEventWireup="true" CodeFile="AdminEmployeeList.aspx.cs" Inherits="AdminEmployeeList" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div>
    
      
      <%--  <table style="width:100%;">
            <tr>
                <td class="auto-style4">
                     &nbsp;</td>

                <td class="auto-style5">
                     <asp:Label ID="Label17" runat="server" Text="Employee Details" Font-Bold="True"  Font-Italic="True" ForeColor="Blue" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
                </td>

            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbEmployeeName" runat="server" Text="EmployeeName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtEmployeeName" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtEmployeeName" Display="Dynamic" ErrorMessage="Enter EmployeeName" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbCompanyName" runat="server" Text="CompanyName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCompanyName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtCompanyName" Display="Dynamic" ErrorMessage="Enter CompanyName" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbDepartment" runat="server" Text="Department"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtDepartment" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtDepartment" Display="Dynamic" ErrorMessage="Enter Working DeparmentName" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbStatus" runat="server" Text="Status"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtStatus" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbDateOfJoining" runat="server" Text="DateOfJoining"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtDateOfJoining" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbSkill" runat="server" Text="Skill"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtSkill" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbCurrentSalary" runat="server" Text="CurrentSalary"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCurrentSalary" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TxtCurrentSalary" Display="Dynamic" ErrorMessage="Salary Must Be In Digit" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbCategory" runat="server" Text="Category"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>FullTime</asp:ListItem>
                        <asp:ListItem>PartTime</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbAchievement" runat="server" Text="Achievement"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtAchievement" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbLanguageKnown" runat="server" Text="LanguageKnown"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DDSelectLanguage" runat="server">
                        <asp:ListItem>--SelectLanguage--</asp:ListItem>
                        <asp:ListItem>ASP.NET</asp:ListItem>
                        <asp:ListItem>JAVA</asp:ListItem>
                        <asp:ListItem>PHP</asp:ListItem>
                        <asp:ListItem>C#</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="DDSelectLanguage" Display="Dynamic" ErrorMessage="Select Language From The List" SetFocusOnError="True" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbPreviousCompany" runat="server" Text="PreviousCompany"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtPreviousCompany" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbDesignation" runat="server" Text="Designation"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtDesignation" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbPreviousSalary" runat="server" Text="PreviousSalary"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtPreviousSalary" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TxtPreviousSalary" Display="Dynamic" ErrorMessage="Salary Must Be In Digit" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbExperiance" runat="server" Text="Experiance"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DDSelectExperiance" runat="server">
                        <asp:ListItem>--SelectExperiance--</asp:ListItem>
                        <asp:ListItem>1Year</asp:ListItem>
                        <asp:ListItem>1-3Year</asp:ListItem>
                        <asp:ListItem>Above 3 Year</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="DDSelectExperiance" Display="Dynamic" ErrorMessage="Select Experiance From The List" SetFocusOnError="True" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbReason" runat="server" Text="Reason"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtReason" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbCompanyEmailId" runat="server" Text="CompanyEmailId"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCompanyEmailId" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtCompanyEmailId" Display="Dynamic" ErrorMessage="Enter Valid EmailId" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LbCompanyContactNo" runat="server" Text="CompanyContactNo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCompanyContactNo" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TxtCompanyContactNo" Display="Dynamic" ErrorMessage="Allow Digit Only" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" ValidationGroup="a" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Display" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>--%>
    
          <br />
    
          <asp:Label ID="Label1" runat="server" Text="Employee Details" Font-Bold="True"  Font-Italic="True" ForeColor="#663300" Font-Names="Lucida Calligraphy" Font-Size="X-Large"></asp:Label>
          <br />
          <br />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" DataKeyNames="User_Id" PageSize="4" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" OnPageIndexChanging="GridView1_PageIndexChanging" BackColor="White" BorderColor="#3366CC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="282px" Width="807px" Font-Bold="True" Font-Size="Medium">
            <Columns>
                <asp:TemplateField HeaderText="EmployeeName" SortExpression="EmployeeName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtEmployeeName" runat="server" Text='<%# Bind("EmployeeName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbEmployeeName" runat="server" Text='<%# Bind("EmployeeName") %>'></asp:Label>
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
                <asp:TemplateField HeaderText="Department" SortExpression="Department">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtDepartment" runat="server" Text='<%# Bind("Department") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbDepartment" runat="server" Text='<%# Bind("Department") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status" SortExpression="Status">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtStatus" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbStatus" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DateOfJoining" SortExpression="DateOfJoining">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtDateOfJoining" runat="server" Text='<%# Bind("DateOfJoining") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbDateOfJoining" runat="server" Text='<%# Bind("DateOfJoining") %>'></asp:Label>
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
                <asp:TemplateField HeaderText="LanguageKnown" SortExpression="LanguageKnown">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtLanguageKnown" runat="server" Text='<%# Bind("LanguageKnown") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbLanguageKnown" runat="server" Text='<%# Bind("LanguageKnown") %>'></asp:Label>
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
     
      <asp:DetailsView ID="DetailsView1" runat="server" Height="557px" Width="491px" AutoGenerateRows="False" BackColor="White" BorderColor="#CC9966" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" BorderStyle="Solid" Font-Bold="True" Font-Italic="False" Font-Size="Medium">
          <EditRowStyle BackColor="#FFCC66" ForeColor="#663399" Font-Bold="True" />
          <Fields>
               <asp:TemplateField HeaderText="Employee_Id">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("User_Id") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="EmployeeName">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("EmployeeName") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="CompanyName">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label2" runat="server" Text='<%# Bind("CompanyName") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Department">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label3" runat="server" Text='<%# Bind("Department") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Status">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label4" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Date Of Joining">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label5" runat="server" Text='<%# Bind("DateOfJoining") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="KeySkill">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label6" runat="server" Text='<%# Bind("Skill") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="CurrentSalary">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label7" runat="server" Text='<%# Bind("CurrentSalary") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Achievement">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label8" runat="server" Text='<%# Bind("Achievement") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="LanguageKnown">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label9" runat="server" Text='<%# Bind("LanguageKnown") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="PreviousCompany">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label10" runat="server" Text='<%# Bind("PreviousCompany") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Designation">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label11" runat="server" Text='<%# Bind("Designation") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Previous Salary">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label12" runat="server" Text='<%# Bind("PreviousSalary") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Experiance">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label13" runat="server" Text='<%# Bind("Experiance") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Reason For Living Previous Job">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label14" runat="server" Text='<%# Bind("Reason") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
          </Fields>
          <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
          <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
          <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
          <RowStyle BackColor="White" ForeColor="#330099" />
      </asp:DetailsView>
      <br />
     <asp:Label ID="Label2" runat="server" Text="Personal Details" Font-Bold="True"  Font-Italic="True" ForeColor="#663300" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
      <br />
      <asp:DetailsView ID="DetailsView2" runat="server" Height="296px" Width="640px" AutoGenerateRows="False" BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" Font-Bold="True" Font-Size="Medium">
            <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <Fields>
                <asp:TemplateField HeaderText="FirstName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("FirstName") %>' ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MiddleName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("MiddleName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="LastName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Age">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Age") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date Of Birth">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("DateOfBirth") %>'></asp:Label>
                    </ItemTemplate> 
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Address1") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Current City">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ContactNo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("ContactNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EmailAddress">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("EmailId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
        </asp:DetailsView>
      <br />
     <asp:Label ID="Label3" runat="server" Text="Education Details" Font-Bold="True"  Font-Italic="True" ForeColor="#663300" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
      <br />
      <br />
      <asp:DetailsView ID="DetailsView3" runat="server" Height="433px" Width="571px" AutoGenerateRows="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" Font-Bold="True" Font-Size="Medium" >
            <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <Fields>
                <asp:TemplateField HeaderText="10th Percentage">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("SSCPercentage") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="12th Percentage">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("HSCPercentage") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="HSC Passing Year">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("HSCPassingYear") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               
                <asp:TemplateField HeaderText="Degree(Bechelar)">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("DegreeUG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Percentage/CGPI">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("CPIUG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CollegeName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("CollegenameUG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="YearOfPassing">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("PassingYearUG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Degree(Master)">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("DegreePG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Percentage">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("CPIPG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CollegeName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Bind("CollegeNamePG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Year Of Passing">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# Bind("PassingYearPG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Extra Curricular">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# Bind("ExtraCurricular") %>'></asp:Label>
                        <asp:Label ID="Label14" runat="server" ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Fields>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
        </asp:DetailsView>
      <br />
     <asp:Label ID="Label15" runat="server" Text="Professional Details" Font-Bold="True"  Font-Italic="True" ForeColor="#663300" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
      <br />
      <br />
      <asp:DetailsView ID="DetailsView5" runat="server" Height="264px" Width="562px" AutoGenerateRows="False" BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" Font-Bold="True" Font-Size="Medium">
          <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
          <Fields>
              <asp:TemplateField HeaderText="EmployeeUnique_Id">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label7" runat="server" Text='<%# Bind("User_Id") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Job_Type">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("User_Id") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Experiance">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label2" runat="server" Text='<%# Bind("Experiance") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
               <asp:TemplateField HeaderText="Current Industry">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label3" runat="server" Text='<%# Bind("CurrentIndustry") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
                     
              <asp:TemplateField HeaderText="Function">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label3" runat="server" Text='<%# Bind("Function") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
                    

              <asp:TemplateField HeaderText="Key Skill">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label4" runat="server" Text='<%# Bind("KeySkill") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Profile Headline">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label5" runat="server" Text='<%# Bind("ProfileHeadline") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
               <asp:TemplateField HeaderText="Education">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label3" runat="server" Text='<%# Bind("Education") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Certificate">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label6" runat="server" Text='<%# Bind("Certificate") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
          </Fields>
          <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
          <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
          <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
          <RowStyle BackColor="White" ForeColor="#330099" />
      </asp:DetailsView>
      <br />
      <asp:Label ID="Label4" runat="server" Text="Job Discription" Font-Bold="True"  Font-Italic="True" ForeColor="#663300" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
      <br />
      <br />
      <asp:DetailsView ID="DetailsView4" runat="server" Height="253px" Width="598px" AutoGenerateRows="False" BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" Font-Bold="True" Font-Size="Medium">
          <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
          <Fields>
              <asp:TemplateField HeaderText="Discription">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("Discription") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Timing">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label2" runat="server" Text='<%# Bind("Timing") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Skill">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label3" runat="server" Text='<%# Bind("Skill") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Reference">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label4" runat="server" Text='<%# Bind("Reference") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Job_Status">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label5" runat="server" Text='<%# Bind("Job_Status") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Job_StartDate">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label6" runat="server" Text='<%# Bind("Job_StartDate") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="ApplicationName">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label7" runat="server" Text='<%# Bind("ApplicationName") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
          </Fields>
          <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
          <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
          <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
          <RowStyle BackColor="White" ForeColor="#330099" />
      </asp:DetailsView>
      <br />

</asp:Content>


