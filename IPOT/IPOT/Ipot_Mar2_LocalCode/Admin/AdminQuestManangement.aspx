<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="AdminQuestManangement.aspx.cs" Inherits="Admin_AdminQuestManangement" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    function ValidateQuest() {


        var SubCategory = document.getElementById('<%=DDCategory.ClientID%>').value;
        var SubCatName = document.getElementById('<%= DDSubCategory.ClientID %>').value;
        var QuestionNO = document.getElementById('<%= ddlqno.ClientID %>').value;
        var txtQuestName = document.getElementById('<%= txt_question.ClientID %>').value;
        var txtoptionA = document.getElementById('<%= txt_A.ClientID %>').value;
        var txtoptionB = document.getElementById('<%= txt_B.ClientID %>').value;
        var txtoptionC = document.getElementById('<%= txt_C.ClientID %>').value;
        var txtoptionD = document.getElementById('<%= txt_D.ClientID %>').value;
        var txtAns = document.getElementById('<%= ddlans.ClientID %>').value;

        if (SubCategory == "0") {
            alert("Please select a Category ");
            return false;
        }
        else if (SubCatName == "0") {
            alert("Please select a Sub Category ");
            return false;
        }

        else if (QuestionNO == "0") {
            alert("Please select a Question NO ");
            return false;
        }


       else if (txtQuestName == null || txtQuestName == "") {
            alert("Please  enter Question Name ");
            document.getElementById('<%= txt_question.ClientID %>').focus();
            return false;
        }
     

       else if (txtoptionA == null || txtoptionA == "") {
            alert("Please  enter Option A ");
            document.getElementById('<%= txt_A.ClientID %>').focus();
            return false;
        }
   
        else if (txtoptionB == null || txtoptionB == "") {
            alert("Please  enter Option B ");
            document.getElementById('<%= txt_B.ClientID %>').focus();
            return false;
        }

       else if (txtoptionC == null || txtoptionC == "") {
            alert("Please  enter Option C ");
            document.getElementById('<%= txt_C.ClientID %>').focus();
            return false;
        }
        if (txtoptionD == null || txtoptionD == "") {
            alert("Please  enter Option D ");
            document.getElementById('<%= txt_D.ClientID %>').focus();
            return false;
        }
        if (txtAns == "0") {
            alert("Please  Select Answer ");
            document.getElementById('<%= ddlans.ClientID %>').focus();
            return false;
        }
        return true;
        
    }
    
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="clear" style="height: 10px">
    </div>
    <div class="content-box">
        <div class="content-box-header">
            <h3 style="cursor: s-resize;">
                ONLINE EXAM Management</h3>
            <div class="clear">
            </div>
        </div>
        
         <cc1:TabContainer ID="TabContainerforCategories" runat="server" Width="600px" >
           
           
            
            <cc1:TabPanel ID="TabPanel1" runat="server">
                <HeaderTemplate>
                    Question
                </HeaderTemplate>
                <ContentTemplate>
                    <table>
                    <tr>
                            <td>Category</td>
                            <td>:</td>
                            <td>
                            <asp:UpdatePanel ID="UpdateDDcat" runat="server">
                            
                            <ContentTemplate>
                             <asp:DropDownList ID="DDCategory" runat="server" OnSelectedIndexChanged="Bindsubcategory" AutoPostBack="true">
                                </asp:DropDownList>
                                
                                  </ContentTemplate>
                            </asp:UpdatePanel>
                            </td>
                        </tr>
                        <tr>
                            <td>Sub Category</td>
                            <td>:</td>
                            <td>
                            <asp:UpdatePanel ID="UpdateDDsubCat" runat="server">
                            <ContentTemplate>
                            
                                <asp:DropDownList ID="DDSubCategory" runat="server">
                                </asp:DropDownList>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                                
                            </td>
                        </tr>
                    <tr>
                            <td>Question No.</td>
                            <td>:</td>
                            <td>
                                <asp:DropDownList ID="ddlqno" runat="server">
                                
                                <asp:ListItem value="0">Please select Question No.</asp:ListItem>
                                 <asp:ListItem value="1">1</asp:ListItem>
                                  <asp:ListItem value="2">2</asp:ListItem>
                                   <asp:ListItem value="3">3</asp:ListItem>
                                    <asp:ListItem value="4">4</asp:ListItem>
                                     <asp:ListItem value="5">5</asp:ListItem>
                                      <asp:ListItem value="6">6</asp:ListItem>
                                       <asp:ListItem value="7">7</asp:ListItem>
                                        <asp:ListItem value="8">8</asp:ListItem>
                                         <asp:ListItem value="9">9</asp:ListItem>
                                          <asp:ListItem value="10">10</asp:ListItem>
                                           <asp:ListItem value="11">11</asp:ListItem>
                                            <asp:ListItem value="12">12</asp:ListItem>
                                             <asp:ListItem value="13">13</asp:ListItem>
                                              <asp:ListItem value="14">14</asp:ListItem>
                                               <asp:ListItem value="15">15</asp:ListItem>
                                                <asp:ListItem value="16">16</asp:ListItem>
                                                 <asp:ListItem value="17">17</asp:ListItem>
                                                 
                                                  <asp:ListItem value="18">18</asp:ListItem>
                                                  <asp:ListItem value="19">19</asp:ListItem>
                                                  <asp:ListItem value="20">20</asp:ListItem>
                                                  <asp:ListItem value="21">21</asp:ListItem>
                                                  <asp:ListItem value="22">22</asp:ListItem>
                                                <asp:ListItem value="23">23</asp:ListItem>
                                                <asp:ListItem value="24">24</asp:ListItem>
                                                <asp:ListItem value="25">25</asp:ListItem>
                                                <asp:ListItem value="26">26</asp:ListItem>
                                                <asp:ListItem value="27">27</asp:ListItem>
                                                
                                                <asp:ListItem value="28">28</asp:ListItem>
                                                <asp:ListItem value="29">29</asp:ListItem>
                                                <asp:ListItem value="30">30</asp:ListItem>
                                                
                                                      <asp:ListItem value="31">31</asp:ListItem>
                                                      
                                                         <asp:ListItem value="32">32</asp:ListItem>
                                                         <asp:ListItem value="33">33</asp:ListItem>
                                                         <asp:ListItem value="34">34</asp:ListItem>
                                                         <asp:ListItem value="35">35</asp:ListItem>
                                                         <asp:ListItem value="36">36</asp:ListItem>
                                                         <asp:ListItem value="37">37</asp:ListItem>
                                                         <asp:ListItem value="38">38</asp:ListItem>
                                                         <asp:ListItem value="39">39</asp:ListItem>
                                                         <asp:ListItem value="40">40</asp:ListItem>
                                                          <asp:ListItem value="41">41</asp:ListItem>
                                                           <asp:ListItem value="42">42</asp:ListItem>
                                                            <asp:ListItem value="43">43</asp:ListItem>
                                                            
                                                             <asp:ListItem value="44">44</asp:ListItem>
                                                             <asp:ListItem value="45">45</asp:ListItem>
                                                             <asp:ListItem value="46">46</asp:ListItem>
                                                             <asp:ListItem value="47">47</asp:ListItem>
                                                             <asp:ListItem value="48">48</asp:ListItem>
                                                             <asp:ListItem value="49">49</asp:ListItem>
                                                             <asp:ListItem value="50">50</asp:ListItem>
                                                             <asp:ListItem value="51">51</asp:ListItem>
                                                             <asp:ListItem value="52">52</asp:ListItem>
                                                             <asp:ListItem value="52">53</asp:ListItem>
                                                             <asp:ListItem value="54">54</asp:ListItem>
                                                             <asp:ListItem value="55">55</asp:ListItem>
                                                             <asp:ListItem value="56">56</asp:ListItem>
                                                             <asp:ListItem value="57">57</asp:ListItem>
                                                             <asp:ListItem value="58">58</asp:ListItem>
                                                             <asp:ListItem value="59">59</asp:ListItem>
                                                             <asp:ListItem value="60">60</asp:ListItem>
                                </asp:DropDownList>
                             
                            </td>
                        </tr>
                     
                     
                        <tr>
                            <td>Question</td>
                            <td>:</td>
                            <td>
                                
                                <asp:TextBox ID="txt_question" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>OptionA</td>
                            <td>:</td>
                            <td>
                                <asp:TextBox ID="txt_A" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>OptionB</td>
                            <td>:</td>
                            <td>
                                <asp:TextBox ID="txt_B" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>OptionC</td>
                            <td>:</td>
                            <td>
                                <asp:TextBox ID="txt_C" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>OptionD</td>
                            <td>:</td>
                            <td>
                                <asp:TextBox ID="txt_D" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Answer</td>
                            <td>:</td>
                            <td>
                              
                               <asp:DropDownList ID="ddlans" runat="server">
                               
                                <asp:ListItem value="0">Please select Answer</asp:ListItem>
                                 <asp:ListItem value="1">A</asp:ListItem>
                                  <asp:ListItem value="2">B</asp:ListItem>
                                   <asp:ListItem value="3">C</asp:ListItem>
                                    <asp:ListItem value="4">D</asp:ListItem>
                               </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                           <td>
                               <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button1_Question" OnClientClick="return ValidateQuest ()" />
                           </td>
                        </tr>
                        <tr><td>
                           <asp:Label 
                            ID="lblquest" runat="server" ForeColor="#33CC33"></asp:Label>
                            </td></tr>
                    </table>
                </ContentTemplate>
            </cc1:TabPanel>
          
        </cc1:TabContainer>   
    </div>
    <div class="clear">
    </div>
    

</asp:Content>
