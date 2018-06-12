<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252" %>
<%option explicit
DIM menuid,siteid,submenuid,pageid,dataid
pageid = "370"
menuid = "270"
%>
<!--#include virtual="/includes/siteid.asp" -->
<%submenuid = "0"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<!--#include virtual="/includes/titleprefix.asp" --><title><%=titleprefix&"Links"%></title><!--#include virtual="/includes/head.asp" -->
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
<h2>Links</h2>
<div id="maincontenttext"><P><STRONG>Info på internettet: <BR></STRONG></P>
<P><a href="http://www.bu.dk" target="_new">www.bu.dk</A> <BR>– en indgang til alt om bæredygtig udvikling <BR><BR><A href="http://www.eco-info.dk">www.eco-info.dk</A> [Øko-info] <BR>– Danmarks grønneste portal og internet-guide <BR><BR><BR><STRONG>Debatoplæg fra Øko-net:</STRONG> <BR><BR><STRONG>Kolding Manifestet</STRONG> • Skal tumperne redde verden, når nu de kloge ikke vil? <BR>– om teknologi, demokrati og bæredygtighed <BR><A href="http://www.KoldingManifestet.dk">www.KoldingManifestet.dk</A><BR><BR><STRONG>DanmarksDeklarationen</STRONG> – erklæring om en dansk dagsorden <BR>for bæredygtig udvikling i det 21. århundrede <BR><A href="http://www.DanmarksDeklarationen.dk">www.DanmarksDeklarationen.dk</A></P></div><!-- maincontenttext -->
</div><!-- maincontent -->
<!-- END MAIN CONTENT -->

<div id="colRight">
<P><BR><BR><BR><EM>»Der er nok til alles behov <BR>i denne verden, <BR>men ikke til alles grådighed« <BR><STRONG>Mahatma Gandhi</STRONG></EM> </P>
<P><BR>&nbsp;</P>
<P align=center><table cellpadding="0" cellspacing="0"><tr><td><img src=/media/Floejtedreng_s.jpg width="145" height="218"/></td></tr></table></P>
</div><!-- colRight -->

</div><!-- contentHolder -->
<div id="footer"></div>
<div id="footer_text"><!--#include virtual="/includes/footer.asp" --></div>
</div><!-- mother -->
<!--#include virtual="/includes/drops.asp" --><!--#include virtual="/includes/log.asp" -->
</body>
</html>
