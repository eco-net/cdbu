<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252" %>
<%
DIM menuid,siteid,submenuid,pageid
pageid = 896 
menuid=0
%>
<!--#include virtual="/includes/siteid.asp" -->
<%submenuid = 0 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
DIM catoptions, tChoose, catid, tIntro,tCatlabel,catname
catid=Cint("0"&request("catid"))
catname=""&request("catname")
submenuid=catid
%>
<!--designit name="Phrases used on the page" descr="" size="2" type="groupstart"-->
<!--/designit-->
<!--designit name="Number of news to show when page is first loaded" descr="" size="1" type="asp" varname="tIntro" vartype="num"-->
<% 
tIntro=3
%>
<!--/designit-->
<!--designit name="Label for category dropdown" descr="" size="1" type="asp" varname="tCatlabel" vartype="text"-->
<% 
tCatlabel="Choose category"
%>
<!--/designit-->
<!--designit name="The phrase 'Choose' for use in dropdown" descr="" size="1" type="asp" varname="tChoose" vartype="text"-->
<% 
tChoose="Choose"
%>
<!--/designit-->
<!--designit name="Label" descr="" size="2" type="groupend"-->
<!--/designit-->

<%
catoptions=getNamedOptionsFromDb("cen_data", "siteid="&siteid&" and context=8", "name", "id", "id", catid, "sortnumber", "", tChoose)

if catid>0 then
set rs = openRS("Select d.id,t1.content as name, t2.content as text,da.content as pdate from "&_
	"(("&_
	"cen_data d inner join cen_data_texts t1 on d.id=t1.dataid and t1.ckey='title') "&_
	"inner join cen_data_texts t2 on d.id=t2.dataid and t2.ckey='resume') "&_
	"inner join cen_data_dates da on d.id=da.dataid and da.ckey='newsdate' "&_
	"where d.context=9 and d.hidden=0 and d.category="&catid&" order by da.content desc")
else
set rs = openRS("Select top "&tIntro&" d.id,t1.content as name, t2.content as text,da.content as pdate from "&_
	"(("&_
	"cen_data d inner join cen_data_texts t1 on d.id=t1.dataid and t1.ckey='title') "&_
	"inner join cen_data_texts t2 on d.id=t2.dataid and t2.ckey='resume') "&_
	"inner join cen_data_dates da on d.id=da.dataid and da.ckey='newsdate' "&_
	"where d.context=9 and d.hidden=0 and d.siteid="&siteid&" order by da.content desc")
end if
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--designit name="General page information" descr="" size="2" type="groupstart"-->
<!--/designit-->
<!--designit name="Page title" descr="" size="1" type="asp" varname="pagetitle" vartype="text"-->
<% 
pagetitle="News"
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

<div id="topbarsub" onMouseOver="P7_autoLayers(0);if(safari){flashlayer.innerHTML=flashHTML};"><!--#include virtual="/includes/homepagetitle.asp" --><!--#include virtual="/includes/tools.asp" --></div>
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
<div id="listeBar"><%= pagetitle %></div>
<div align="right">
<form action="" method="get" style="margin-top:5px;">
<%=tCatlabel%>:
<select name="catid" class="select" id="catid" style="width:130px;" onchange="if(this.selectedIndex>0)this.form.submit();">
<%=catoptions%>
</select>
</div>
<%
if catid=0 then
	do while not rs.eof
		response.write "<table class=""searchresultsTABLE""><tr><td>"&rs("pdate")&"</td></tr><tr>"&_
			"<td valign=""top""><strong><a href=""/pages/"&rs("id")&".asp"">"&rs("name")&"</a></strong><br>"&replace(rs("text"),chr(13),"<br>")&"</td></tr></table>"
		rs.movenext
	loop
else
	do while not rs.eof
		response.write "<table class=""searchresultsTABLE""><tr><td>"&rs("pdate")&"</td></tr><tr>"&_
			"<td valign=""top""><strong><a href=""/pages/"&rs("id")&".asp?catid="&catid&""">"&rs("name")&"</a></strong><br>"&replace(rs("text"),chr(13),"<br>")&"</td></tr></table>"
		rs.movenext
	loop
end if
%>
</div><!--  colLeft -->
<div id="colRight">
<!--#include virtual="/includes/crosslinks/896.asp" -->
</div><!--  colRight -->
</div><!--  contentHolder -->
<div id="footer"><!--#include virtual="/includes/footer.asp" --></div>
</div><!-- mother -->
<!--#include virtual="/includes/drops.asp" -->
<!--#include virtual="/includes/log.asp"-->
</body>
</html>
