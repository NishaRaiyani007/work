<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Student.master" AutoEventWireup="true" CodeFile="StudentSocialProfile.aspx.cs" Inherits="StudentSocialProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 41px;
            width: 296px;
        }
        .auto-style2 {
            height: 42px;
        }
        .auto-style3 {
            height: 41px;
            width: 81px;
        }
        .auto-style4 {
            height: 42px;
            width: 81px;
        }
        .auto-style5 {
            height: 42px;
            width: 296px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
    
     
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                     &nbsp;</td>
                <td class="auto-style1">
                     <asp:Label ID="Label17" runat="server" Text="Social Profile" Font-Bold="True"  Font-Italic="True" ForeColor="Blue" Font-Names="Lucida Calligraphy" Font-Size="Large"></asp:Label>
                </td>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                </td>
                <td class="auto-style5">
                    <asp:Label ID="LbTwitter" runat="server" Text="Twitter"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtTwitter" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbFacebook" runat="server" Text="Facebook"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtFacebook" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbLinkedIn" runat="server" Text="LinkedIn"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtLinkedIn" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbQuiker" runat="server" Text="Quiker"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtQuiker" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbFlipKart" runat="server" Text="FlipKart"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtFlipKart" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbTagged" runat="server" Text="Tagged"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtTagged" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbPinterest" runat="server" Text="Pinterest"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtPinterest" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbWikiPedia" runat="server" Text="WikiPedia"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtWikiPedia" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbMyspace" runat="server" Text="Myspace"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtMyspace" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbBadoo" runat="server" Text="Badoo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtBadoo" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbIndiaTimes" runat="server" Text="IndiaTimes"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtIndiaTimes" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbMeetUp" runat="server" Text="MeetUp"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtMeetUp" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbWebsites" runat="server" Text="Websites"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtWebsites" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbLocation" runat="server" Text="Location"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtLocation" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="LbJob" runat="server" Text="Job"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtJob" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Display" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Id" PageSize="4" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:TemplateField HeaderText="Twitter" SortExpression="Twitter">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtTwitter" runat="server" Text='<%# Bind("Twitter") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbTwitter" runat="server" Text='<%# Bind("Twitter") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Facebook" SortExpression="Facebook">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtFacebook" runat="server" Text='<%# Bind("Facebook") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbFacebook" runat="server" Text='<%# Bind("Facebook") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="LinkedIn" SortExpression="LinkedIn">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtLinkedIn" runat="server" Text='<%# Bind("LinkedIn") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbLinkedIn" runat="server" Text='<%# Bind("LinkedIn") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quiker" SortExpression="Quiker">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtQuiker" runat="server" Text='<%# Bind("Quiker") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbQuiker" runat="server" Text='<%# Bind("Quiker") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="FlipKart" SortExpression="FlipKart">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtFlipKart" runat="server" Text='<%# Bind("FlipKart") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbFlipKart" runat="server" Text='<%# Bind("FlipKart") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tagged" SortExpression="Tagged">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtTagged" runat="server" Text='<%# Bind("Tagged") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbTagged" runat="server" Text='<%# Bind("Tagged") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Pinterest" SortExpression="Pinterest">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtPinterest" runat="server" Text='<%# Bind("Pinterest") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbPinterest" runat="server" Text='<%# Bind("Pinterest") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Wikipedia" SortExpression="Wikipedia">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtWikipedia" runat="server" Text='<%# Bind("Wikipedia") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbWikipedia" runat="server" Text='<%# Bind("Wikipedia") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Myspace" SortExpression="Myspace">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtMyspace" runat="server" Text='<%# Bind("Myspace") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbMyspace" runat="server" Text='<%# Bind("Myspace") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Badoo" SortExpression="Badoo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtBadoo" runat="server" Text='<%# Bind("Badoo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbBadoo" runat="server" Text='<%# Bind("Badoo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="IndiaTimes" SortExpression="IndiaTimes">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtIndiaTimes" runat="server" Text='<%# Bind("IndiaTimes") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbIndiaTimes" runat="server" Text='<%# Bind("IndiaTimes") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MeetUp" SortExpression="MeetUp">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtMeetUp" runat="server" Text='<%# Bind("MeetUp") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbMeetUp" runat="server" Text='<%# Bind("MeetUp") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Websites" SortExpression="Websites">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtWebsites" runat="server" Text='<%# Bind("Websites") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbWebsites" runat="server" Text='<%# Bind("Websites") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Location" SortExpression=" Location">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtLocation" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbLocation" runat="server" Text='<%# Bind("Location") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Job" SortExpression="Job">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtJob" runat="server" Text='<%# Bind("Job") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LbJob" runat="server" Text='<%# Bind("Job") %>'></asp:Label>
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

