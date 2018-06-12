<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252" %>
<%
DIM menuid,siteid,submenuid,pageid
pageid = 714
menuid = 0 %>
<!--#include virtual="/includes/siteid.asp" -->
<%submenuid = 0 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--designit name="General page information" descr="" size="2" type="groupstart"-->
<!--/designit-->
<!--designit name="Page title" descr="" size="1" type="asp" varname="pagetitle" vartype="text"-->
<%
pagetitle="Newsletter"
%>
<!--/designit-->
<!--designit name="Metatag Keywords" descr="" size="3" type="asp" varname="pagekeywords" vartype="text"-->
<%
pagekeywords=""
%>
<!--/designit-->
<!--designit name="Metatag Description" descr="" size="3" type="asp" varname="pagedescription" vartype="text"-->
<%
pagedescription=""
%>
<!--/designit-->
<!--designit name="Label" descr="" size="2" type="groupend"-->
<!--/designit-->
<!--#include virtual="/general/acts/newsmail.asp" -->
<!--#include virtual="/includes/titleprefix.asp" -->
<title><%=titleprefix&pagetitle%></title>
<!--#include virtual="/includes/head.asp" -->
<%
if pagekeywords="" then pagekeywords=gpagekeywords
if pagedescription="" then pagedescription=gpagedescription
%>
<meta name="keywords" content="<%=pagekeywords%>" />
<meta name="description" content="<%=pagedescription%>" />
<script language="JavaScript">
function dosubscribe(theform){
	if(theform.mail.value.indexOf('@')==-1 || theform.mail.value.indexOf('.')==-1) {
		alert(tMail);;return false;
	} else{return true};
}
</script>
</head>
<body>
<div id="mother">

<div id="contentHolder">
<div id="topbarsub"><!--#include virtual="/includes/homepagetitle.asp" --><!--#include virtual="/includes/tools.asp" --></div>
<div id="menubar"><!--#include virtual="/includes/topmenu.asp" --></div>

<div id="navBar">
<img src="/general/layout/submenu_top.gif" /><br>
<div id="menuleft">
<div id="menu_general">
<table cellpadding="0" cellspacing="0" border="0" class="leftmenu">
<tr>
<td valign="top">
<!--#include virtual="/includes/leftmenu.asp" -->
</td>
<td><img src="/general/layout/spacer.gif" height="400" width="1"></td></tr>
</table>
<br>
</div><!-- / menu_general -->
</div><!-- / menuleft-->

</div><!--  navBar -->

<div id="colLeft">
<div id="text">

<div id="listeBar"><%= pagetitle %></div>
<br /><br /><br />
<% if stat=0 then %>
<!--designit name="Phrases used on the page" descr="" size="2" type="groupstart"-->
<!--/designit-->

<form action="" method="get" onSubmit="return dosubscribe(this);">
<table width="300" border="0">
<tr>
<td colspan="2">
<!--designit name="Label for subscribe" descr="" size="2" type="html"-->
<b>Subscribe</b> to our newsletter by entering your email address here:
<!--/designit-->
</td>
</tr>
<tr>
<td><input type="text" name="mail" style="width:200px;"></td>
<td>
<!--designit name="Label for Join button" descr="" size="1" type="asp" varname="btnLabel1" vartype="text"-->
<%
btnLabel1="Subscribe"
%>
<!--/designit-->
<input type="submit" name="Submit" value="<%=btnLabel1%>" class="submit" style="width:80px;"></td>
</tr>
<tr>
<td colspan="2"></td>
</tr>
</table>
<!--designit name="Error message when the email address is not valid" descr="" size="1" type="javascript" varname="var tMail" vartype="text"-->
<script language="JavaScript">
var tMail='The entered email address is not valid !';
</script>
<!--/designit-->
</form>
<form action="" method="get"><table width="300" border="0">
<tr>
<td colspan="2">
<!--designit name="Label for unsubscribe" descr="" size="2" type="html"-->
<b>Unsubscribe</b> to our newsletter by entering your email address here:
<!--/designit-->
</td>
</tr>
<tr>
<td><input type="text" name="mail2" style="width:200px;"></td>
<td>
<!--designit name="Label for remove button" descr="" size="1" type="asp" varname="btnLabel2" vartype="text"-->
<%
btnLabel2="Unsubscribe"
%>
<!--/designit-->
<input type="submit" name="Submit" value="<%=btnLabel2%>" class="submit" style="width:80px;"></td>
</tr>
<tr>
<td colspan="2"></td>
</tr>
</table>
</form>
<% else ' Confirmation %>
<% if stat = 1 then ' tilmelding %>
<table class="searchresultsTABLE"><tr>
<td valign="top">
<h5>
<!--designit name="Confirmation on subscription" descr="" size="2" type="html"-->
Thank you for your subscribtion.
<!--/designit--> 
</h5>
</td></tr></table>
<% else 'afmelding %>
<table class="searchresultsTABLE"><tr>
<td valign="top">
<h5>
<!--designit name="Confirmation on unsubscription" descr="" size="2" type="html"-->
You will no longer recieve our newsletter.
<!--/designit--> 
</h5>
</td></tr></table>
<!--designit name="Label" descr="" size="2" type="groupend"-->
<!--/designit-->
<% end if %>
<% end if 'state controller %>
</div><!--  txt -->
</div><!--  colLeft -->
<div id="colRight">
<!--#include virtual="/includes/crosslinks/716.asp" -->
</div><!--  colRight -->
</div><!--  contentHolder -->
<div id="footer"><!--#include virtual="/includes/footer.asp" --></div>
</div><!-- mother -->
<!--#include virtual="/includes/drops.asp" -->
<!--#include virtual="/includes/log.asp"-->
</body>
</html>
