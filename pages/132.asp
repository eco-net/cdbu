<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252" %>
<%option explicit
DIM menuid,siteid,submenuid,pageid,dataid
pageid = "132"
menuid = "8"
%>
<!--#include virtual="/includes/siteid.asp" -->
<%submenuid = "0"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<!--#include virtual="/includes/titleprefix.asp" --><title><%=titleprefix&"Transport"%></title><!--#include virtual="/includes/head.asp" -->
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
<h2>Transport</h2>
<div id="maincontenttext"><P>”Det er regeringens overordnede mål at bryde sammenhængen mellem vækst i transportens miljø- og sundhedsbelastning og vækst i økonomien for at opnå bæredygtig udvikling på transportområdet. Hensyn til sundhed, miljø og sikkerhed integreres i transportområdet. Regeringen har som langsigtede pejlemærker, at transportsektoren skal yde sit rimelige bidrag til reduktion af det nationale udslip af drivhusgasser, og at luftforurening fra trafikken ikke udgør en sundhedsfare for befolkningen. Trafikstøj skal begrænses til et niveau, som sikrer, at ingen udsættes for væsentlige negative sundhedspåvirkninger. Det skal være sikkert og trygt for alle at færdes i trafikken. Transportsystemets negative påvirkning af levesteder for dyr og planter skal begrænses. </P>
<P>Transportsystemet skal sikre befolkningen adgang til arbejde, butikker, offentlig service og fritidsaktiviteter, og alle skal sikres effektiv mobilitet gennem kollektive og private transportløsninger. Erhvervslivet skal sikres gode transportforbindelser til omverdenen, og trængsel på vejene bør kun forekomme i spidsbelastningssituationer. Den kollektive og individuelle trafik herunder cykel- og gangtrafikken skal sikres høj fremkommelighed.” </P>
<P>Kilde: ”FÆLLES FREMTID – udvikling i balance”</P></div><!-- maincontenttext -->
</div><!-- maincontent -->
<!-- END MAIN CONTENT -->

<div id="colRight">
<table cellpadding="0" cellspacing="0"><tr><td><img src=/media/togperon.jpg width="145" height="107"/></td></tr></table>
</div><!-- colRight -->

</div><!-- contentHolder -->
<div id="footer"></div>
<div id="footer_text"><!--#include virtual="/includes/footer.asp" --></div>
</div><!-- mother -->
<!--#include virtual="/includes/drops.asp" --><!--#include virtual="/includes/log.asp" -->
</body>
</html>
