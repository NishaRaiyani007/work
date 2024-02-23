<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepwd.aspx.cs" Inherits="changepwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
        .login
        {
            margin-left:250px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div class="login">
        <div class="col-md-8 single_right">
            <div class="login-form-section">
                <div class="login-content">
                    <div class="section-title">
                        <h3>Change Your Password</h3>
                    </div>

                    
                     
                    <div class="textbox-wrap">
                        <div class="col-md-3 control-lable">
                                 <asp:Label ID="lblold" runat="server" Text="Old Password"></asp:Label></div>
                       
                          <div>  <%--<input type="text" required="required" class="form-control" placeholder="Username">--%>
                            <asp:TextBox ID="txtold" runat="server" placeholder="Old Password" Width="450" Height="40"></asp:TextBox>
                          </div>
                    </div>
                    <div class="textbox-wrap">
                        <div class="col-md-3 control-lable">
                                   <asp:Label ID="lblnew" runat="server" Text="New Password"></asp:Label> </div>
                       
                            <%-- <input type="password" required="required" class="form-control " placeholder="Password">--%>
                          <div>  <asp:TextBox ID="txtnew" runat="server" placeholder="New Password" TextMode="Password"
                                Width="450" Height="40"></asp:TextBox>
                        </div>
                    </div>

                     <div class="textbox-wrap">
                            <div class="col-md-3 control-lable">
                                <asp:Label ID="lblconfirm" runat="server" Text="Confirm Password"></asp:Label></div>
                       
                            <%-- <input type="password" required="required" class="form-control " placeholder="Password">--%>
                           <div> <asp:TextBox ID="txtconfirm" runat="server" placeholder="Confirm Password" TextMode="Password"
                                Width="450" Height="40"></asp:TextBox>
                        </div>
                    </div>
                 
                 
                    <div class="login-btn">
                        <%--<input type="submit" value="Log in">--%>
                        <asp:Button runat="server" ID="btnchange" Text="Change" 
                            onclick="btnchange_Click"  />
                    </div>
                    
                    
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>

