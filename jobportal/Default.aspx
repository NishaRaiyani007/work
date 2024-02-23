<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .login
        {
            margin-left: 250px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="login">
        <div class="col-md-8 single_right">
            <div class="login-form-section">
                <div class="login-content">
                    <div class="section-title">
                        <h3>
                            LogIn to your Account</h3>
                    </div>
                    <div class="textbox-wrap">
                        <div class="input-group">
                            <span class="input-group-addon "><i class="fa fa-user"></i></span>
                            <%--<input type="text" required="required" class="form-control" placeholder="Username">--%>
                            <asp:TextBox ID="txtunm" runat="server" placeholder="Username" Width="452" Height="40"></asp:TextBox>
                        </div>
                    </div>
                    <div class="textbox-wrap">
                        <div class="input-group">
                            <span class="input-group-addon "><i class="fa fa-key"></i></span>
                            <%-- <input type="password" required="required" class="form-control " placeholder="Password">--%>
                            <asp:TextBox ID="txtpass" runat="server" placeholder="Password" TextMode="Password"
                                Width="450" Height="40"></asp:TextBox>
                        </div>
                    </div>
                    <div class="forgot">
                        <div class="login-check">
                            <label class="checkbox1">
                                <asp:CheckBox runat="server" ID="chkremebr" />
                                <%--<input type="checkbox" name="checkbox" checked="">--%><i> </i>Remember me</label>
                        </div>
                        <div class="login-para">
                            <p>
                                <a href="#">Forgot Password? </a>
                            </p>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                    <div class="col-md-3 control-lable">
                        <asp:Label ID="lbl_error" runat="server" Text="Username or Password Is Incorrect"></asp:Label>
                    </div>
                    <div class="login-btn">
                        <%--<input type="submit" value="Log in">--%>
                        <asp:Button runat="server" ID="btnlogin" Text="Login" OnClick="btnlogin_Click" />
                    </div>
                    <h4>
                        Don,t have an Account? <a href="registration.aspx">Register Now!</a></h4>
                    <div class="login-bottom">
                        <p>
                            With your social media account</p>
                        <div class="social-icons">
                            <div class="button">
                                <a class="tw" href="#"><i class="fa fa-twitter tw2"></i><span>Twitter</span>
                                    <div class="clearfix">
                                    </div>
                                </a><a class="fa" href="#"><i class="fa fa-facebook tw2"></i><span>Facebook</span>
                                    <div class="clearfix">
                                    </div>
                                </a><a class="go" href="#"><i class="fa fa-google-plus tw2"></i><span>Google+</span>
                                    <div class="clearfix">
                                    </div>
                                </a>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
