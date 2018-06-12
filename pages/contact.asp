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
pagetitle="Contact us"
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
<!--#include virtual="/includes/titleprefix.asp" -->
<title><%=titleprefix&pagetitle%></title>
<!--#include virtual="/includes/head.asp" -->
<%
if pagekeywords="" then pagekeywords=gpagekeywords
if pagedescription="" then pagedescription=gpagedescription
%>
<meta name="keywords" content="<%=pagekeywords%>" />
<meta name="description" content="<%=pagedescription%>" />
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
<p><img src="/images/logo.gif" width="250" height="31" /></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<!--designit name="Company information" descr="" size="2" type="groupstart"-->
<!--/designit-->
<strong>
<!--designit name="Company name" descr="" size="1" type="html"-->
Kildemoes Cykelfabrik A/S
<!--/designit-->
</strong><br />
<!--designit name="Address" descr="Use &lt;br&gt; for linebreaks" size="2" type="html"-->
Albanivej 7 <br />Nr. Lyndelse <br />5792 Årslev
<!--/designit-->
<br /><br />
<!--designit name="Phone" descr="Include label" size="1" type="html"-->
T: 63 90 26 00
<!--/designit-->
<br />
<!--designit name="Fax" descr="Include label" size="1" type="html"-->
F: 63 90 26 35
<!--/designit-->
<br />
<p>
<!--designit name="Leadtext before email-address" descr="Use &lt;br&gt; for linebreaks" size="3" type="html"-->
Mail dine kommentarer<br />eller forslag på adressen
<!--/designit-->
: </p>
<% DIM tEmail %>
<!--designit name="Email address" descr="" size="1" type="asp" varname="tEmail" vartype="text"-->
<%
tEmail="info@kildemoes.dk"
%>
<!--/designit-->
<p><a href="mailto:<%=tEmail%>"><%=tEmail%></a><br /></p>
<!--designit name="Label" descr="" size="2" type="groupend"-->
<!--/designit-->
</div><!--  colLeft -->
<div id="colRight">
<!--#include virtual="/includes/crosslinks/714.asp" -->
</div><!--  colRight -->
</div><!--  contentHolder -->
<div id="footer"><!--#include virtual="/includes/footer.asp" --></div>
</div><!-- mother -->
<!--#include virtual="/includes/drops.asp" -->
<!--#include virtual="/includes/log.asp"-->
</body>
</html>
