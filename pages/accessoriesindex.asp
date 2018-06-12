<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252" %>
<%
option explicit

DIM menuid,siteid,submenuid,pageid
pageid = "711" 
menuid=0
%>
<!--#include virtual="/includes/siteid.asp" -->
<%submenuid = "0" %>
<%
DIM rCount, i, rs
set rs=openRS("Select count(*) as c from cen_data where context=27 and hidden=0 and siteid="&siteid)
rCount=rs("c")
set rs = openRS("Select d.id,t1.content as name, t2.content as text, m.filepath as img from "&_
	"((("&_
	"cen_data d inner join cen_data_texts t1 on d.id=t1.dataid and t1.ckey='categoryname') "&_
	"inner join cen_data_texts t2 on d.id=t2.dataid and t2.ckey='description') "&_
	"inner join cen_data_integers i on d.id=i.dataid and i.ckey='image') "&_
	"inner join cen_data_media m on i.val=m.dataid and m.ckey='image' "&_
	"where d.context=27 and d.hidden=0 and d.siteid="&siteid&" order by d.sortnumber")
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--#include virtual="/includes/titleprefix.asp" -->
<!--#include virtual="/includes/head.asp" -->
<!--designit name="General page information" descr="" size="2" type="groupstart"-->
<!--/designit-->
<!--designit name="Page title" descr="" size="1" type="asp" varname="pagetitle" vartype="text"-->
<% 
pagetitle=""
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
<%
if pagekeywords="" then pagekeywords=gpagekeywords
if pagedescription="" then pagedescription=gpagedescription
%>
<meta name="keywords" content="<%=pagekeywords%>" />
<meta name="description" content="<%=pagedescription%>" />
<title><%=titleprefix&pagetitle%></title>
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

<div id="contentIntro">

<div id="introtext">
<!--designit name="Introtext" descr="" size="2" type="groupstart"-->
<!--/designit-->
<!--designit name="Image" descr="" size="" type="img" imgsize="5237" imgfolder="5236"-->
<img src="/media/accessories.jpg" border="0" />
<!--/designit-->
<!--designit name="" descr="" size="4" type="html"-->
Introtext to this area
<!--/designit-->
<!--designit name="Label" descr="" size="2" type="groupend"-->
<!--/designit-->
</div>
<div id="listeBarWide"><%=pagetitle%></div>
<div id="introTable">
<%
response.write "<table width=""480"" border=""0"" cellspacing=""5"" cellpadding=""5"">"
for i=0 to rCount-1
	if i mod 2 = 0 then response.write "<tr>"
	response.write "<td width=""50""><a href=""accessorieslist.asp?catid="&rs("id")&"""><img src="""&rs("img")&""" border=""1""/></a></td>"&_
		"<td width=""250""><span class=""blue""><a href=""accessorieslist.asp?catid="&rs("id")&""">"&rs("name")&"</a></span><br>"&rs("text")&"</td>"&vbcrlf
	if i mod 2 = 1 then response.write "</tr>"
	rs.movenext
next
if i mod 2 = 1 then 'afslut rækken
	response.write "<td>&nbsp;</td><td></td></tr>"&vbcrlf
end if
response.write "</table>"
%>
</div>
</div>
</div><!--  contentHolder -->
<div id="footer"><!--#include virtual="/includes/footer.asp" --></div>
</div><!-- mother -->
<!--#include virtual="/includes/drops.asp" -->
<!--#include virtual="/includes/log.asp"-->
</body>
</html>
