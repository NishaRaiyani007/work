<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="myprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="single">
            <div class="form-container">
                <h2>Edit Your Profile</h2>
                <form>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="firstName">
                            First Name</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtfnm" runat="server" placeholder="First Name" class="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="lastName">
                            Last Name</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtlnm" runat="server" placeholder="Last Name" class="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="lastName">
                            Mobile Number</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtmob" runat="server" placeholder="Mobile Number" class="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="sex">
                            Gender</label>
                        <div class="col-md-9" class="form-control input-sm">
                            <div class="radios">
                                <asp:RadioButtonList ID="radgen" runat="server" class="label_radio" Height="20px"
                                    Width="123px">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="dob">
                            Date of birth</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtdob" runat="server" placeholder="dd/mm/yyyy" class="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="email">
                            Email</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtmail" runat="server" placeholder="example@something.com" class="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="country">
                            Country</label>
                        <div class="col-md-9">
                            <asp:DropDownList ID="ddcountry" runat="server" class="form-control input-sm">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Japan</asp:ListItem>
                                <asp:ListItem>Italy</asp:ListItem>
                                <asp:ListItem>Australia</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>Shrilanka</asp:ListItem>
                                <asp:ListItem>Dubai</asp:ListItem>
                                <asp:ListItem>Doha</asp:ListItem>
                                <asp:ListItem>China</asp:ListItem>
                                <asp:ListItem>Thailand</asp:ListItem>
                                <asp:ListItem>Kenya</asp:ListItem>
                                <asp:ListItem>Germany</asp:ListItem>
                                <asp:ListItem>Canada</asp:ListItem>
                                <asp:ListItem>Nepal</asp:ListItem>
                                <asp:ListItem>Maxico</asp:ListItem>
                                <asp:ListItem>Rusia</asp:ListItem>
                                <asp:ListItem>Norway</asp:ListItem>
                                <asp:ListItem>Oman</asp:ListItem>
                                <asp:ListItem>Pakistan</asp:ListItem>
                            </asp:DropDownList>
                            <%--  <select path="country" id="country" class="form-control input-sm">
                        <option value="">Select Country</option>
                        <option value="">Japan</option>
                        <option value="">Kenya</option>
                        <option value="">Dubai</option>
                        <option value="">Italy</option>
                        <option value="">Greece</option> 
                        <option value="">Iceland</option> 
                        <option value="">China</option> 
                        <option value="">Doha</option> 
                        <option value="">Irland</option> 
                        <option value="">Srilanka</option> 
                        <option value="">Russia</option> 
                        <option value="">Hong Kong</option> 
                        <option value="">Germany</option>
                        <option value="">Canada</option>  
                        <option value="">Mexico</option> 
                        <option value="">Nepal</option>
                        <option value="">Norway</option> 
                        <option value="">Oman</option>
                        <option value="">Pakistan</option>  
                        <option value="">Kuwait</option> 
                        <option value="">Indonesia</option>  
                        <option value="">Spain</option>
                        <option value="">Thailand</option>  
                        <option value="">Saudi Arabia</option> 
                        <option value="">Poland</option> 
                    </select>--%>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="country">
                            Work Experience</label>
                        <div class="col-md-9">
                            <asp:DropDownList ID="ddexp" runat="server" class="form-control input-sm">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Fresher</asp:ListItem>
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                            </asp:DropDownList>
                            <%-- <select path="country" id="country" class="form-control input-sm">
                        <option value="">Select</option>
                        <option value="">Fresher</option>
                        <option value="">0</option>
                        <option value="">1</option>
                        <option value="">2</option>
                        <option value="">3</option> 
                        <option value="">4</option> 
                        <option value="">5</option> 
                        <option value="">6</option> 
                        <option value="">7</option> 
                        <option value="">8</option> 
                        <option value="">9</option> 
                        <option value="">10</option> 
                        <option value="">11</option>
                        <option value="">12</option>  
                        <option value="">13</option>
                        <option value="">14</option>
                        <option value="">15</option>      
                    </select>--%>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="country">
                            Education</label>
                        <div class="col-md-9">
                            <asp:DropDownList ID="ddeducation" runat="server" class="form-control input-sm">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>BE/BTech</asp:ListItem>
                                <asp:ListItem>BCA</asp:ListItem>
                                <asp:ListItem>MCA</asp:ListItem>
                                <asp:ListItem>Msc</asp:ListItem>
                                <asp:ListItem>Diploma</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                            <%--  <select path="country" id="country" class="form-control input-sm">
                        <option value="">Select</option>
                        <option value="">Bsc</option>
                        <option value="">BTech</option>
                        <option value="">Mca</option>
                        <option value="">BCA</option>
                        <option value="">Diploma</option> 
                        <option value="">Other</option> 
                    </select>--%>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-actions floatRight">
                        <asp:Button ID="btnupdate" runat="server" Text="Update" 
                            class="btn btn-primary btn-sm" onclick="btnupdate_Click"/>
                    </div>
                </div>

                <div class="row">
                    <div class="form-actions floatRight">
                        <asp:LinkButton ID="linkbtnchange" runat="server" onclick="linkbtnchange_Click">Change Your Password</asp:LinkButton>
                             </div>
                </div>

                <div>
                    <asp:Label ID="lblupdate" runat="server" Text="Successfully updated"></asp:Label>
                    <asp:Label ID="lblnotupdate" runat="server" Text="Record not updatedted..!!"></asp:Label>
                </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>

