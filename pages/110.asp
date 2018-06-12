<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252" %>
<%option explicit
DIM menuid,siteid,submenuid,pageid,dataid
pageid = "110"
menuid = "7"
%>
<!--#include virtual="/includes/siteid.asp" -->
<%submenuid = "0"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<!--#include virtual="/includes/titleprefix.asp" --><title><%=titleprefix&"Ernæring og landbrug"%></title><!--#include virtual="/includes/head.asp" -->
<meta name="keywords" content="" />
<meta name="description" content="" />
</head>
<body>

<div id="mother">
<div id="contentHolder">
<div id="topbarsub"><!--#include virtual="/includes/homepagetitle.asp" --><!--#include virtual="/includes/tools.asp" --><div id="topbar_text"><!--#include virtual="/includes/tagline.asp" --></div></div>
<div id="menubar"><!--#include virtual="/includes/topmenu.asp" --></div>

<!-- LEFT MENU -->
<div id="leftmenu">
<img src="/images/leftmenu/top.gif" /><br>
<div id="leftmenu_text">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td valign="top">
<!--#include virtual="/includes/leftmenu.asp" -->
</td>
<td><img src="/general/layout/spacer.gif" height="400" width="1"></td></tr>
</table>
<br>
</div><!-- / leftmenu_text -->
<img src="/images/leftmenu/bottom.gif" /><br>
</div><!--  leftmenu -->
<!-- END LEFT MENU -->

<!-- MAIN CONTENT -->
<div id="maincontent">
<h2>Ernæring og landbrug</h2>
<div id="maincontenttext"><P>Målsætninger: </P>
<P>Forbedre bæredygtig produktivitet i landbruget og fødevaresikkerhed i Afrika, som aftalt i FN’s Millenium-erklæring, specielt skal der senest år 2015 være opnået en halvering af antallet der lider sult i Afrika (artikel 67). </P>
<P>Initiativer: </P>
<P>Sigte mod udfasning af alle former for eksportstøtte samt betydelig reduktion af anden handelsforvridende landbrugsstøtte (artikel 86c). </P>
<P>Støtte til Afrikanske lande til inden år 2005 at udvikle og implementere strategier til fødevaresikkerhed (artikel 67a). </P>
<P>USA vil i 2003 investere 90 millioner $ i bæredygtige landbrugs programmer.</P></div><!-- maincontenttext -->
</div><!-- maincontent -->
<!-- END MAIN CONTENT -->

<div id="colRight">
<table cellpadding="0" cellspacing="0"><tr><td><img src=/media/ris_farmers_tanz.jpg width="145" height="97"/></td></tr></table>
</div><!-- colRight -->

</div><!-- contentHolder -->
<div id="footer"></div>
<div id="footer_text"><!--#include virtual="/includes/footer.asp" --></div>
</div><!-- mother -->
<!--#include virtual="/includes/drops.asp" --><!--#include virtual="/includes/log.asp" -->
</body>
</html>
