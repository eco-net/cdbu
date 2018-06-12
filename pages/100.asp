<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252" %>
<%option explicit
DIM menuid,siteid,submenuid,pageid,dataid
pageid = "100"
menuid = "4"
%>
<!--#include virtual="/includes/siteid.asp" -->
<%submenuid = "0"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<!--#include virtual="/includes/titleprefix.asp" --><title><%=titleprefix&"Socialt"%></title><!--#include virtual="/includes/head.asp" -->
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
<h2>Socialt</h2>
<div id="maincontenttext"><P>Forestillingen om en b�redygtig udvikling indeb�rer ogs� en forestilling om social retf�rdighed. En retf�rdighed der indeb�rer en rimelig fordeling af fordele og ulemper mellem generationer, s� vi alle kan opleve rimelige levevilk�r. </P>
<P>Men hvis en s�dan social retf�rdighed over tid skal have mening, stiller det ogs� krav om social retf�rdig i nutiden. En nutidig social retf�rdighed indenfor det enkelte samfund, men ogs� mellem de forskellige samfund i verden. Mellem rige og fattige lande. </P>
<P>Brundtland rapporten udtrykker det med: </P>
<P><EM>�den fysiske b�redygtighed kan ikke sikres, uden at udviklingspolitikken tager hensyn til overvejelser om f.eks. �ndringer i adgangen til ressourcer og fordelingen af fordele og ulemper�.</EM></P></div><!-- maincontenttext -->
</div><!-- maincontent -->
<!-- END MAIN CONTENT -->

<div id="colRight">

</div><!-- colRight -->

</div><!-- contentHolder -->
<div id="footer"></div>
<div id="footer_text"><!--#include virtual="/includes/footer.asp" --></div>
</div><!-- mother -->
<!--#include virtual="/includes/drops.asp" --><!--#include virtual="/includes/log.asp" -->
</body>
</html>
