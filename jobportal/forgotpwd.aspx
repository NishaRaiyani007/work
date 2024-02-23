<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgotpwd.aspx.cs" Inherits="forgotpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="login">
        <div class="col-md-8 single_right">
            <div class="login-form-section">
                <div class="login-content">
                    <div class="section-title">
                        <h3>Reset Password</h3>
                    </div>
 
                     
                    <div class="textbox-wrap">
                        <div class="col-md-3 control-lable">
                                 <asp:Label ID="lbltext" runat="server" Text="Email/Mobile no."></asp:Label></div>
                       
                          <div>  <%--<input type="text" required="required" class="form-control" placeholder="Username">--%>
                            <asp:TextBox ID="txttext" runat="server"  Width="450" Height="40"></asp:TextBox>
                          </div>
                    </div>
                    
                    <div><asp:Label ID="lblpwd" runat="server" Text=""></asp:Label></div>
                    <div class="login-btn">
                        <%--<input type="submit" value="Log in">--%>
                        <asp:Button runat="server" ID="btnchange" Text="Send" 
                            onclick="btnchange_Click"/>
                    </div>
                    
                    
                </div>
            </div>
        </div>
    </div>

</asp:Content>

