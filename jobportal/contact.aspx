<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
    <div class="single">  
	   <div class="contact_top">
	   	 <h2>Our Addresses</h2>
          </div>
	      <div class="col-sm-4">
	   	   <address class="addr">
                <p class="secondary3">
                    8901 Marmora Road, <br>
                   Glasgow, D04 89GR.</p>
                <dl>
                    <dt>Freephone:</dt>
                    <dd>
                        +1 2587 4677 236
                    </dd>
                </dl>
                <dl>
                    <dt>Telephone:</dt>
                    <dd>
                        +1 2587 4677 236
                    </dd>
                </dl>
                <dl>
                    <dt>FAX:</dt>
                    <dd>
                        +1 2587 4677 236
                    </dd>
                </dl>
                <dl class="email">
                    <dt>E-mail:</dt>
                    <dd>
                        <a href="malito:mail@demolink.org">mail(at)Seeking.com</a>
                    </dd>
                </dl>
           </address>
          </div> 
          <%--
          <div class="col-sm-4">
	   	   <address class="addr">
                <p class="secondary3">
                    58701 Lorem Ipsum, <br>
                   nulla pariatur.</p>
                <dl>
                    <dt>Freephone:</dt>
                    <dd>
                        +1 2587 4677 236
                    </dd>
                </dl>
                <dl>
                    <dt>Telephone:</dt>
                    <dd>
                        +1 2587 4677 236
                    </dd>
                </dl>
                <dl>
                    <dt>FAX:</dt>
                    <dd>
                        +1 2587 4677 236
                    </dd>
                </dl>
                <dl class="email">
                    <dt>E-mail:</dt>
                    <dd>
                        <a href="malito:mail@demolink.org">mail(at)Seeking.com</a>
                    </dd>
                </dl>
           </address>
          </div>--%>
         <%-- <div class="col-sm-4">
	   	   <address class="addr">
                <p class="secondary3">
                    578 Marmora Road, <br>
                   Lorem Ipsum, D04 89GR.</p>
                <dl>
                    <dt>Freephone:</dt>
                    <dd>
                        +1 2587 4677 236
                    </dd>
                </dl>
                <dl>
                    <dt>Telephone:</dt>
                    <dd>
                        +1 2587 4677 236
                    </dd>
                </dl>
                <dl>
                    <dt>FAX:</dt>
                    <dd>
                        +1 2587 4677 236
                    </dd>
                </dl>
                <dl class="email">
                    <dt>E-mail:</dt>
                    <dd>
                        <a href="malito:mail@demolink.org">mail(at)Seeking.com</a>
                    </dd>
                </dl>
           </address>
          </div>--%>
          <div class="clearfix"> </div>
	   </div>
	   <div class="content_bottom">
	   	 <h3>Contact Form</h3>
	   	   <form>
			<div class="contact_box1">
             	<%--<input type="text" class="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
			 	<input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" style="margin-left:3%">
			 	<input type="text" class="text" value="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}" style="margin-left:3%">
			--%>
                <asp:TextBox ID="txtname" runat="server" placeholder="Name"></asp:TextBox>
                <asp:TextBox ID="txtemail" runat="server" placeholder="Email"></asp:TextBox>
                <asp:TextBox ID="txtphone" runat="server" placeholder="Phone"></asp:TextBox>
            </div>
			<div class="text_1">
              <%--  <textarea value="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>--%>
                <asp:TextBox ID="txtmsg" runat="server" placeholder="Feedback Message" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div class="form-submit1 form_but1">
	          <%--  <input name="submit" type="submit" id="submit" value="Submit"><br>--%>
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                    onclick="btnsubmit_Click" />
	        </div>
			<div class="clearfix"></div>
           </form>
	   </div>
    </div>

</asp:Content>

