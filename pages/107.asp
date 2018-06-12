<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252" %>
<%option explicit
DIM menuid,siteid,submenuid,pageid,dataid
pageid = "107"
menuid = "7"
%>
<!--#include virtual="/includes/siteid.asp" -->
<%submenuid = "0"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<!--#include virtual="/includes/titleprefix.asp" --><title><%=titleprefix&"Vand"%></title><!--#include virtual="/includes/head.asp" -->
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
<h2>Vand</h2>
<div id="maincontenttext"><P>Målsætninger: </P>
<P>Senest 2015 skal andelen af mennesker uden adgang til eller råd til sikkert drikkevand være halveret, som aftalt i FN’s Millenium-erklæring (Johannesburg Plan of Implementation, artikel 8) </P>
<P>Senest 2015 skal andelen af mennesker uden adgang til basal kloakering være halveret (artikel 8). </P>
<P>Senest 2005 skal der være udviklet integreret forvaltning af vandressourcer samt planer for effektivisering af vandforbruget (artikel 26). </P>
<P>Initiativer: </P>
<P>Lancering af et handlingsprogram med finansiel og teknisk bistand for at opfylde Millennium-målet om sikkert drikkevand (artikel 25) </P>
<P>På Johannesburg-topmødet annoncerede EU et partnerskabs-initiativ om vand – ”Water for Life”, som har fokus på Afrika og det tidligere Sovjetunionen (NIS-landene i bl.a. Centralasien). Formålet er at skabe en samlet ramme om forvaltning af vandressourcerne samt forbedre vandforsyning og sanitære forhold. </P>
<P>USA annoncerede et 970 millioner $ program til investering over en 3 års periode i vand og kloakering. </P></div><!-- maincontenttext -->
</div><!-- maincontent -->
<!-- END MAIN CONTENT -->

<div id="colRight">
<table cellpadding="0" cellspacing="0"><tr><td><img src=/media/pige_bare_vand.jpg width="145" height="216"/></td></tr></table>
</div><!-- colRight -->

</div><!-- contentHolder -->
<div id="footer"></div>
<div id="footer_text"><!--#include virtual="/includes/footer.asp" --></div>
</div><!-- mother -->
<!--#include virtual="/includes/drops.asp" --><!--#include virtual="/includes/log.asp" -->
</body>
</html>
