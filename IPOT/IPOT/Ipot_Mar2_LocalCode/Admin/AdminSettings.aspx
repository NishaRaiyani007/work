<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="AdminSettings.aspx.cs" Inherits="Admin_AdminSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<script type="text/javascript">
    function ValidatePassword() {

        var Password = document.getElementById('<%= txtPassword.ClientID %>').value;
        var CPassword = document.getElementById('<%= txtConfirmPassword.ClientID %>').value;
        if (Password == "null" || Password == "") {
            alert("Please  enter your New  password ");
            document.getElementById('<%= txtPassword.ClientID %>').focus();
            return false;
        }
        
        else if (CPassword == "null" || CPassword == "") {
            alert("Please  confirm  your  password ");
            document.getElementById('<%= txtConfirmPassword.ClientID %>').focus();
            return false;
        }
       else if (CPassword != Password) {
            alert("Your Password did not match ");
            document.getElementById('<%= txtConfirmPassword.ClientID %>').focus();
            return false;
        }
else
{
       return true;

}

    }
 
 </script>
 
 <script language="javascript" type="text-javascript">
     
     function DoFocus(txt) 
     {
         txt.className = 'focus';
     }    
   </script>

   <style type="text/css">
  
  input.textbox, select, textarea
{
  font-family    :  verdana, arial, snas-serif;
  color          :  #000000;

  background     :  #f0f0f0;
  border-left    :  solid 1px #c1c1c1;
  border-top     :  solid 1px #cfcfcf;
  border-right   :  solid 1px #cfcfcf;
  border-bottom  :  solid 1px #6f6f6f;
  
  padding: 6px;
                font-size: 13px;
                background: #fff url(../images/bg-form-field.gif) top left repeat-x;
                border: 1px solid #d5d5d5;
				color: #333;
				-webkit-border-radius: 4px;
border-radius: 4px;
width:200px;
height:30px;
}

input.textbox:focus, input.input_text_focus
{
    border-color:#646464;
    background: #fff url(../images/bg-form-field2.gif) top left repeat-x;
   
   
    margin-left:0px;
    
} 
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="content-box" ><!-- Start Content Box -->
				
				<div class="content-box-header">
					
					<h3 style="cursor: s-resize; ">Content box</h3>
					
					<ul class="content-box-tabs">
						<%--<li><a href="#" class="">Forms</a></li>--%>
							<li><a href="#tab1" class="default-tab current">Change Password</a></li>
					</ul>
					
					<div class="clear"></div>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content">
					
					<div class="tab-content default-tab" id="tab1" style="display: block; "> <!-- This is the target div. id must match the href of this div's tab -->
						
						<div class="notification attention png_bg">
							<a href="#" class="close">
							<img src="../images/cross_grey_small.png" title="Close this notification" alt="close"></a>
							<div>
								You can reset your password here
							</div>
						</div>
						
						<div>
			  
			  
			   <table class="tablefont" style="border:solid 1px #8f8fa9">
     <tr>
     <td colspan="3">
         <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
     </td>
     </tr>

         <tr>
            <td style="font-family:Times New Roman;font-size:16px;letter-spacing:1px">
           <b> New Password  </b>          
            </td>
            <td>:</td>
            <td>
            <asp:TextBox ID="txtPassword" runat="server" Width="200px" TextMode="Password" CssClass="textbox" onfocus="DoFocus(this)"> </asp:TextBox>
            </td>
         
         </tr>
        
         <tr>
            <td style="font-family:Times New Roman;font-size:16px;letter-spacing:1px">
          <b>  Confirm Password  </b>          
            </td>
            <td>:</td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server" Width="200px" TextMode="Password" CssClass="textbox" onfocus="DoFocus(this)"></asp:TextBox>
            </td>
         
         </tr>
        
         <tr>
         <td colspan="3" align="center" style="padding-left: 400px;">
         <asp:ImageButton ID="imgchange" runat="server"  ImageUrl="~/images/submit123.gif" 
                  onclick="imgchange_Click" OnClientClick="return ValidatePassword ()" />
         </td>
         
         </tr>
         <asp:Label ID="wlbl" runat="server" Visible="false"></asp:Label>
         
         
         
         </table>
			</div>
						
					</div> <!-- End #tab1 -->
					
					 
					
				</div> <!-- End .content-box-content -->
				
			</div>


</asp:Content>

