<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="AdminUploadExcel.aspx.cs" Inherits="Admin_AdminUploadExcel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>
    <div class="content-box-header">
        <h3 style="cursor: s-resize;">
            Upload Excel Sheet</h3>
        <ul class="content-box-tabs">
            <%--<li><a href="#tab1" class="default-tab current">Upload Excel Sheet</a></li>--%>
            <!-- href must be unique and match the id of target div -->
        </ul>
        <div class="clear">
        </div>
    </div>
    <div>
            <br />
            <table>
                <tr>
                    <td style="width: 120px;">
                        <asp:Label ID="lblXlFilename" runat="server" Text="Select A Excel File :"></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="upload_Click" /><br />
                        <asp:Label ID="wlblMessage" runat="server" ForeColor="Green"></asp:Label>
                        <br />
                    </td>
                </tr>
                
            </table>
            
            
    </div>
    </div>
</asp:Content>

