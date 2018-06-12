<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252" %>
<%option explicit
DIM menuid,siteid,submenuid,pageid,dataid
pageid = "109"
menuid = "7"
%>
<!--#include virtual="/includes/siteid.asp" -->
<%submenuid = "0"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<!--#include virtual="/includes/titleprefix.asp" --><title><%=titleprefix&"Sundhed"%></title><!--#include virtual="/includes/head.asp" -->
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
<h2>Sundhed</h2>
<div id="maincontenttext"><P>Målsætninger: </P>
<P>Senest 2015 at have halveret andelen af mennesker der er uden adgang til eller har råd til sikkert drikkevand, som aftalt i FN’s Millenium-erklæring (Johannesburg Plan of Implementation, artikel 8) </P>
<P>Senest 2015 at have halveret andelen af mennesker der ikke har adgang til basal kloakering (artikel 8). </P>
<P>Senest 2015 at have reduceret døds raten for babyer og børn under 5 år med to tredje dele, og raten for død fødte med tre fjerde dele i forhold til raten i år 2000.</P>
<P> Reducer tilstedeværelsen af HIV mellem unge mænd og kvinder mellem 15-24 år med 25 % i de mest ramte lande inden år 2005 og globalt inden år 2010, og bekæmp malaria, tuberkuloses og andre sygdomme. </P>
<P>Initiativer: </P>
<P>Lancering af et handlingsprogram med finansiel og teknisk bistand for at opfylde Millennium-målet om sikkert drikkevand (artikel 25)</P></div><!-- maincontenttext -->
</div><!-- maincontent -->
<!-- END MAIN CONTENT -->

<div id="colRight">
<table cellpadding="0" cellspacing="0"><tr><td><img src=/media/sundhed3.jpg width="145" height="97"/></td></tr></table>
</div><!-- colRight -->

</div><!-- contentHolder -->
<div id="footer"></div>
<div id="footer_text"><!--#include virtual="/includes/footer.asp" --></div>
</div><!-- mother -->
<!--#include virtual="/includes/drops.asp" --><!--#include virtual="/includes/log.asp" -->
</body>
</html>
