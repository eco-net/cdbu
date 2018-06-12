<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252" %>
<%option explicit
DIM menuid,siteid,submenuid,pageid,dataid
pageid = "240"
menuid = "4"
%>
<!--#include virtual="/includes/siteid.asp" -->
<%submenuid = "0"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<!--#include virtual="/includes/titleprefix.asp" --><title><%=titleprefix&"Retslig"%></title><!--#include virtual="/includes/head.asp" -->
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
<h2>Retslig</h2>
<div id="maincontenttext"><P>For at et samfund skal kunne udvikle sig bæredygtigt er det nødvendigt at der eksisterer en bæredygtig retsorden, der sætter de legale rammer for borgernes handlinger. </P>
<P>Hvis der ikke findes en sådan retsorden vil alle forsøg på at tilfredsstille sine behov have samme gyldighed. Men med en bæredygtig retsorden vil der være forskel på hvilke behov et menneske har ret til at få tilfredsstillet. Det bliver dermed muligt for samfundet at prioritere i forhold til bæredygtigheden hvilke behovstilfredsstillelse der legalt kan forfølges. </P>
<P>I forhold til bæredygtigheden kan det fx anses for at være ugyldigt at berige sig umådeholdent på andres bekostning, og derved fratage disse andre muligheden for et godt liv. </P>
<P>Det kan også være ulovligt at beherske eller udnytte naturen på måder som ikke er bæredygtigt. Fx at have flere svin i en svinebesætning end samfundet har fundet er bæredygtigt i forhold til naturens bæreevne. </P></div><!-- maincontenttext -->
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
