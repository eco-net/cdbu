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
<div id="maincontenttext"><P>For at et samfund skal kunne udvikle sig b�redygtigt er det n�dvendigt at der eksisterer en b�redygtig retsorden, der s�tter de legale rammer for borgernes handlinger. </P>
<P>Hvis der ikke findes en s�dan retsorden vil alle fors�g p� at tilfredsstille sine behov have samme gyldighed. Men med en b�redygtig retsorden vil der v�re forskel p� hvilke behov et menneske har ret til at f� tilfredsstillet. Det bliver dermed muligt for samfundet at prioritere i forhold til b�redygtigheden hvilke behovstilfredsstillelse der legalt kan forf�lges. </P>
<P>I forhold til b�redygtigheden kan det fx anses for at v�re ugyldigt at berige sig um�deholdent p� andres bekostning, og derved fratage disse andre muligheden for et godt liv. </P>
<P>Det kan ogs� v�re ulovligt at beherske eller udnytte naturen p� m�der som ikke er b�redygtigt. Fx at have flere svin i en svinebes�tning end samfundet har fundet er b�redygtigt i forhold til naturens b�reevne. </P></div><!-- maincontenttext -->
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
