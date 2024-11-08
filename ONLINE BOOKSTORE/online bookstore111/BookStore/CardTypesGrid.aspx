<%@ Page language="c#" Inherits="Book_Store.CardTypesGrid" CodeFile="CardTypesGrid.cs" %>
<%@ Register TagPrefix="CC" TagName="Header" Src="Header.ascx" %><%@ Register TagPrefix="CC" TagName="Footer" Src="Footer.ascx" %><%@Register TagPrefix="CC" TagName="Pager" Src="CCPager.ascx"%>
<html>
  <head>
	<title>Book Store</title>
	<meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie3-2nav3-0">
	<meta name="GENERATOR" content="YesSoftware CodeCharge v.2.0.5 using 'ASP.NET C#.ccp' build 9/27/2001">
	<meta name="CODE_LANGUAGE" Content="C#">
	<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"></head>
  <body style="background-color: #FFFFFF; color: #000000; font-family: Arial, Tahoma, Verdana, Helveticabackground-color: #FFFFFF; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">

  <form method="post" runat="server">
<CC:Header id="Header" runat="server"/>
	
<table><tr><td valign="top" >


	<table   id="CardTypes_holder" runat="Server" style="width:100%">
	<tr><td colspan="1"
        style="background-color: #336699; text-align: Center; border-style: outset; border-width: 1"
><font style="font-size: 12pt; color: #FFFFFF; font-weight: bold"><asp:label id="CardTypesForm_Title" runat="server">Card Types</asp:label></font></td></tr>
<tr>
<td style="background-color: #FFFFFF; border-style: inset; border-width: 0">
<asp:LinkButton id="CardTypes_Column_name" Text="Name" CommandArgument="c.[name]" onClick="CardTypes_SortChange" style="font-size: 10pt; color: #CE7E00; font-weight: bold" runat="server"/></td>
	
</tr><tr id=CardTypes_no_records runat="server"><td style="background-color: #FFFFFF; border-width: 1" colspan="1"><font style="font-size: 10pt; color: #000000">No records</font></td></tr>
	<tr><td><asp:Repeater id=CardTypes_Repeater runat="server">
	<HeaderTemplate>
	</td></tr>
	</HeaderTemplate>
	<ItemTemplate>

	<tr>

<td style="background-color: #FFFFFF; border-width: 1">

<asp:HyperLink id=CardTypes_name NavigateUrl='<%# "CardTypesRecord.aspx"+"?"+"card_type_id="+Server.UrlEncode(DataBinder.Eval(Container.DataItem, "c_card_type_id").ToString()) +"&" +""%>' style="font-size: 10pt; color: #000000" runat="server"> <%#Server.HtmlEncode(DataBinder.Eval(Container.DataItem, "c_name").ToString()) %> </asp:HyperLink>&nbsp;
</td></tr>
</ItemTemplate>

	<FooterTemplate>
	<tr><td>
	</FooterTemplate>
	</asp:Repeater></td></tr>

    <tr><td
        style="background-color: #FFFFFF; border-style: inset; border-width: 0"
        colspan=1>

<asp:LinkButton id="CardTypes_insert" style="font-size: 10pt; color: #CE7E00; font-weight: bold" runat="server">Insert</asp:LinkButton></font></td></tr>
	</table>


</td>
    </tr></table>


<CC:Footer id="Footer" runat="server"/>

    </form>

</body>
</html>
