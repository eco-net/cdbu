<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252" %>
<%option explicit
DIM menuid,siteid,submenuid,pageid,dataid
pageid = "236"
menuid = "4"
%>
<!--#include virtual="/includes/siteid.asp" -->
<%submenuid = "0"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<!--#include virtual="/includes/titleprefix.asp" --><title><%=titleprefix&"Eksempel - Boligvalg"%></title><!--#include virtual="/includes/head.asp" -->
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
<h2>Eksempel - Boligvalg</h2>
<div id="maincontenttext"><P>Valg af bolig. </P>
<P>Når vi skal anskaffe bolig står vi overfor mange valg: </P>
<P>Hvor skal boligen placeres geografisk? <BR>Hvor stor skal den være? <BR>Hvilke materialer skal den være bygget af? <BR>Hvordan skal den opvarmes? </P>
<P>Og mange andre spørgsmål som der skal vælges blandt. </P>
<P>Alle de valg vi træffer vil have konsekvenser for bæredygtigheden. </P>
<P>Hvor vi vælger at placerer boligen vil have indflydelse på den mængde af ressourcer samt tid vi kommer til at bruge på at transportere os til og fra arbejde, til indkøb, skole mm. Dermed har det betydning i forhold til de energiressourcer vi kommer til at bruge på transport. </P>
<P>Vælger vi en stor bolig, vil det betyde at der skal bruges mange naturressourcer til opførelse af boligen samt mange energiressourcer til opvarmning af den. </P>
<P>Hvilke materialer vælger vi i vores bolig. For eksempel vælger vi gulv trægulve, som er en fornyelig ressource eller marmor gulve, som er en ikke fornyelig ressource, der udvindes med relativt store miljømæssige konsekvenser. </P>
<P>Hvordan skal den opvarmes, som et lavenergihus med opvarmning via solenergi, eller et hus med stort energi forbrug og oliefyr, der bruger store mængder ikke fornyelige energiressourcer. </P>
<P>Vores individuelle handlinger i forbindelse med vores valg af bolig har således konsekvenser for bæredygtigheden ikke alene af vores egen økonomi men også for den samfundsmæssige bæredygtighed for vores egen generation og for fremtidige generationer. </P></div><!-- maincontenttext -->
</div><!-- maincontent -->
<!-- END MAIN CONTENT -->

<div id="colRight">
<table cellpadding="0" cellspacing="0"><tr><td><img src=/media/økohus1.jpg width="145" height="109"/></td></tr></table>
</div><!-- colRight -->

</div><!-- contentHolder -->
<div id="footer"></div>
<div id="footer_text"><!--#include virtual="/includes/footer.asp" --></div>
</div><!-- mother -->
<!--#include virtual="/includes/drops.asp" --><!--#include virtual="/includes/log.asp" -->
</body>
</html>
