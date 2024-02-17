<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="AdminPreviewquest.aspx.cs" Inherits="Admin_AdminPreviewquest" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.lblfont
{
	font-family:Calibri; font-size:15px;
}
</style>
<script type="text/javascript">
    function checkview() {



        var e = document.getElementById("ctl00_ContentPlaceHolder1_DDCategory");
        var e1 = document.getElementById("ctl00_ContentPlaceHolder1_DDSubCategory");
        var e2 = document.getElementById("ctl00_ContentPlaceHolder1_DdlMin");
        var strUser = e.options[e.selectedIndex].value;



        var strUser2 = e2.options[e2.selectedIndex].value;

        if (strUser == 0) //for text use if(strUser1=="Select")
        {
            alert("Please select a Category");
            document.getElementById("ctl00_ContentPlaceHolder1_DDCategory").focus();
            return false;
        }

        else if (strUser2 == 0) //for text use if(strUser1=="Select")
        {
            alert("Please select a Category");
            document.getElementById("ctl00_ContentPlaceHolder1_DdlMin").focus();

            return false;
        }



        else {


            return true;

        }
    }


    function checkvalue1() {

        var e = document.getElementById("ctl00_ContentPlaceHolder1_DDSubCategory");
        var strUser = e.options[e.selectedIndex].value;

        if (strUser == 0) //for text use if(strUser1=="Select")
        {

            var e1 = document.getElementById("ctl00_ContentPlaceHolder1_DDSubCategory");
            var strUser1 = e1.options[e1.selectedIndex].value;

            if (strUser1 == 0) //for text use if(strUser1=="Select")
            {
                alert("Please select a Sub Category First ..");
                document.getElementById("ctl00_ContentPlaceHolder1_DDCategory").focus();
                return false;
            }

            else {

                return true;

            }

        }

        else {

            return true;
        }

    }
             
             
 </script>
 
 
 <script type="text/javascript">

     function Validateview() {
        
         var Category = document.getElementById("ctl00_ContentPlaceHolder1_DDCategory").value;
         
         var SubCatName = document.getElementById("ctl00_ContentPlaceHolder1_DDSubCategory").value;

         if (Category == "0") {
             alert("Please select a Category ");
             return false;
         }
         else if (SubCatName == "0") {
             alert("Please select a Sub Category ");
             return false;
         }

         else {
             return true;
         }

     }
   
</script>
 

<style type="text/css">
    
.floating
{
float: right;
}
.panel
{
background-color: #f0f0f0;
border: solid 5px #797979;
float: right;
margin-top: 10px;
margin-right: 10px;
font-family: Arial, helvetica, Sans-Serif;
font-size: 14px;
-moz-border-radius: 10px;
-webkit-border-radius: 10px;
-khtml-border-radius: 10px;
border-radius: 10px;
}
.Modal
{
background-position: center;
filter: alpha(opacity=100);
background-color: #000000;
opacity: 0.75;
z-index: 10000;
-moz-border-radius: 10px;
-webkit-border-radius: 10px;
-khtml-border-radius: 10px;
border-radius: 10px;
}
#mask
{
display: none;
background: #000;
position: fixed;
left: 0;
top: 0;
z-index: 10;
width: 100%;
height: 100%;
opacity: 0.8;
z-index: 999;
}
/* You can customize to your needs */
.login-popup
{
display: none;
background: #333;
padding: 10px;
border: 2px solid #ddd;
float: left;
font-size: 1.2em;
position: fixed;
top: 50%;
left: 50%;
z-index: 99999;
box-shadow: 0px 0px 20px #999; /* CSS3 */
-moz-box-shadow: 0px 0px 20px #999; /* Firefox */
-webkit-box-shadow: 0px 0px 20px #999; /* Safari, Chrome */
border-radius: 3px 3px 3px 3px;
-moz-border-radius: 3px; /* Firefox */
-webkit-border-radius: 3px; /* Safari, Chrome */
}
img.btn_close
{
position: ttheclosebuttonfloat:right;margin:-28px-28px00;
}
fieldset
{
border: none;
}
form.signin .textbox label
{
display: block;
padding-bottom: 7px;
}
form.signin .textbox span
{
display: block;
}
form.signin p, form.signin span
{
color: #999;
font-size: 11px;
line-height: 18px;
}
form.signin .textbox input
{
background: #666666;
border-bottom: 1px solid #333;
border-left: 1px solid #000;
border-right: 1px solid #333;
border-top: 1px solid #000;
color: #fff;
border-radius: 3px 3px 3px 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
font: 13px Arial, Helvetica, sans-serif;
padding: 6px 6px 4px;
width: 200px;
}
form.signin input:-moz-placeholder
{
color: #bbb;
text-shadow: 0 0 2px #000;
}
form.signin input::-webkit-input-placeholder
{
color: #bbb;
text-shadow: 0 0 2px #000;
}
.button
{
background: -moz-linear-gradient(center top, #f3f3f3, #dddddd);
background: -webkit-gradient(linear, left top, left bottom, from(#f3f3f3), to(#dddddd));
background: -o-linear-gradient(top, #f3f3f3, #dddddd);
filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#f3f3f3', EndColorStr='#dddddd');
border-color: #000;
border-width: 1px;
border-radius: 4px 4px 4px 4px;
-moz-border-radius: 4px;
-webkit-border-radius: 4px;
color: #333;
cursor: pointer;
display: inline-block;
padding: 6px 6px 4px;
margin-top: 10px;
font: 12px;
width: 214px;
}
.button:hover
{
background: #ddd;
}
</style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style=" width:650px;">

  <tr>
<td style="font-family:Calibri; font-size:15px;width: 10px;">Category</td><td style="width: 60px;">
<asp:UpdatePanel ID="UpdateCat" runat="server">

<ContentTemplate>
<asp:DropDownList ID="DDCategory" runat="server" OnSelectedIndexChanged="Bindsubcategory_indexchange" AutoPostBack="true" Width="140px"></asp:DropDownList>

</ContentTemplate>
</asp:UpdatePanel>

</td>
<td style="font-family:Calibri; font-size:15px;width: 88px;">Sub Category</td><td>

<asp:UpdatePanel ID="Updatesubcat" runat="server">

<ContentTemplate>
      <asp:DropDownList ID="DDSubCategory" runat="server" 
          onselectedindexchanged="DDSubCategory_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
          </ContentTemplate>
</asp:UpdatePanel>
          </td>


<td>

<asp:UpdatePanel ID="UpdateButton" runat="server">

<ContentTemplate>
<asp:ImageButton runat="server" ID="Assign"  Text="View" ImageUrl="~/images/view.png" onclick="View_Click" OnClientClick="return Validateview ()" />
</ContentTemplate>
</asp:UpdatePanel>


</td>


</tr>

</table>


<asp:UpdatePanel ID="updatedatalist" runat="server" >

<ContentTemplate>

<asp:DataList runat="server" ID="PreviewQuest"  RepeatDirection="Vertical" Width="100%">


<ItemTemplate>

<table style=" width:100%;">
    

<tr>
<td colspan="6" style=" width:650px;">

    <table style=" width:650px;">
    
    <tr>
        <td style="width: 1px;font-family:Calibri; font-size:15px;">
            <asp:Label ID="lbl_questionNum" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"QuestionNo") %>' CssClass="lblfont"></asp:Label>
        </td>
        <td style="width: 2px;"><b> : </b></td><td><asp:Label ID="lbl_question" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Question") %>' CssClass="lblfont"></asp:Label></td>
    
    </tr>
    <tr>
    <td>
    <td colspan="6" style=" width:650px;">
<table style="width:650px; font-family:Calibri; font-size:15px;">

<tr style="font-family:Calibri; font-size:15px;">
             <td style="width: 1px;">A</td><td style="width: 1px;">:</td><td style="width:100px;">
                 <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"OptionA") %>'></asp:Label></td>
          <td style="width: 1px;">B</td><td style="width: 1px;">:</td><td style="width: 100px;"> 
              <asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"OptionB") %>'></asp:Label></td>
         </tr>
         <tr>
          <td style="width: 1px;">C</td><td style="width: 1px;">:</td><td style="width: 100px;">
              <asp:Label ID="Label3" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"OptionC") %>'></asp:Label></td>
          <td style="width: 1px;">D</td><td style="width: 1px;">:</td><td style="width: 100px;">
              <asp:Label ID="Label4" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"OptionD") %>'></asp:Label></td>
          
</tr>
</table>

</td>
    </td>
  </tr>
       
    </table>

</td>
</tr>
<tr>
<td colspan="2" style=" width:650px;">
<table style=" width:270px;">
<tr>
           
         <td>Answer </td><td><b>:</b></td> <td style="width: 1px;"><asp:TextBox ID="txt_answer" runat="server" ReadOnly="true" Text='<%#DataBinder.Eval(Container.DataItem,"Answer") %>'></asp:TextBox></td>   
</tr>
</table>
</td>        
</tr>


<tr>
<td colspan="2" style=" width:650px;">
    <table style="width: 270px;">
        <tr>
            <td>
                
<asp:LinkButton ID="Edit_btn" runat="server" Text="Edit" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"QuestionID") %>' OnCommand="Editted_Contents">
</asp:LinkButton>

            </td>
            <td>
                
<asp:LinkButton ID="delete_btn" runat="server" Text="Delete" OnCommand="cat_delete" OnClientClick="return confirm('Are you sure you want to delete this Question?')"
CommandArgument='<%#DataBinder.Eval(Container.DataItem,"QuestionID") %>'>
</asp:LinkButton>

            </td>
        </tr>
    </table>
</td>        
</tr>
</table>
</ItemTemplate>
</asp:DataList>
</ContentTemplate>
</asp:UpdatePanel>

<asp:UpdatePanel ID="update_panels" runat="server">
<ContentTemplate>
<center>
<asp:Label ID="lblerror" runat="server" ForeColor="Red" Font-Size="Large" Font-Bold="true" Font-Names="calibri"></asp:Label>
</center>
</ContentTemplate>
</asp:UpdatePanel>




                      <%--    popup starts--%>


<asp:LinkButton ID="btn" runat="server"></asp:LinkButton>

<cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="panel1" CancelControlID="cancel" TargetControlID="btn" BackgroundCssClass="Modal">

</cc1:ModalPopupExtender>
<asp:Panel ID="panel1" runat="server" CssClass="panel" Width="750px" style="height:auto;overflow:scroll">
<asp:ImageButton ID="cancel" ImageUrl="~/images/close_pop.png" runat="server" CssClass="floating"/>

<div>

<asp:UpdatePanel ID="updatepnl" runat="server">
<ContentTemplate>
<br /><br />
<center>
  <asp:Label ID="lbl_msg" runat="server" Text="There is no products..."  Visible="false" Font-Names="verdana" ForeColor="Red" Font-Size="Medium"></asp:Label></center>
     <%--<asp:LinkButton ID="LinkButton1" runat="server" OnClick="closeview">close</asp:LinkButton>--%>
    <%--<asp:DataList ID="Edited_Items_Show" runat="server" >
        <ItemTemplate>
    --%>     
       <table style=" width:100%;">
    

<tr>
<td style=" width:650px;">

    <table style=" width:650px;">
    
    <tr>
        <td style="width: 1px;font-family:Calibri; font-size:15px;">
            <asp:TextBox ID="txt_questionNumber" runat="server" CssClass="lblfont"></asp:TextBox>
            
        </td>
        <td style="width: 2px;"><b> : </b></td><td>
            <asp:TextBox ID="txt_question" runat="server" CssClass="lblfont"></asp:TextBox>
<%--<asp:Label ID="lbl_question" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Question") %>' CssClass="lblfont"></asp:Label>--%>        
        </td>
    
    </tr>
    <tr>
    <td>
    <td colspan="2" style=" width:650px;">
<table style="width:650px; font-family:Calibri; font-size:15px;">

<tr style="font-family:Calibri; font-size:15px;">
             <td style="width: 1px;">A</td><td style="width: 1px;">:</td><td style="width:100px;">
<%-- <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"OptionA") %>'></asp:Label>--%>                 
                 <asp:TextBox ID="txt_optionA" runat="server"></asp:TextBox>
                 </td>
          <td style="width: 1px;">B</td><td style="width: 1px;">:</td><td style="width: 100px;"> 
              <asp:TextBox ID="txt_optionB" runat="server"></asp:TextBox>
<%--  <asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"OptionB") %>'></asp:Label>--%> </td>
         </tr>
         <tr>
          <td style="width: 1px;">C</td><td style="width: 1px;">:</td><td style="width: 100px;">
              <asp:TextBox ID="txt_optionC" runat="server"></asp:TextBox>
<%-- <asp:Label ID="Label3" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"OptionC") %>'></asp:Label>--%> </td>
          <td style="width: 1px;">D</td><td style="width: 1px;">:</td><td style="width: 100px;">
              <asp:TextBox ID="txt_optionD" runat="server"></asp:TextBox>
<%-- <asp:Label ID="Label4" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"OptionD") %>'></asp:Label>--%>              </td>
          
</tr>
</table>

</td>
    </td>
  </tr>
       
    </table>

</td>
</tr>
<tr>
<td style=" width:650px;">
<table style=" width:270px;">
<tr>   
         <td>Answer </td><td><b>:</b></td> <td style="width: 1px;"><asp:TextBox ID="txt_answer" runat="server" ></asp:TextBox></td>   
</tr>
</table>
</td>        
</tr>


<tr>
<td style=" width:650px;">
<table style=" width:270px;">

<tr><td>

    <asp:Button ID="updatebutton_clk" runat="server" Text="Update" OnClick="updatebutton_Click" /></td>
    <td>
        <asp:Button ID="Button2" runat="server" Text="Cancel" />
    </td>
    </tr>
    
    <asp:Label ID="lbl_success" runat="server" Font-Bold="true" Font-Names="calibri" Font-Size="14px" ForeColor="green" ></asp:Label>
</table>
</td>        
</tr>
</table>
        <%--</ItemTemplate></asp:DataList> --%>
    
    <br />
      

</ContentTemplate>
</asp:UpdatePanel>


</div>
</asp:Panel>

 <%--    popup Ends--%>
                    

</asp:Content>

