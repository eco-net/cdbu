<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252" %>
<%option explicit
DIM menuid,siteid,submenuid,pageid,dataid
pageid = "200"
menuid = "10"
%>
<!--#include virtual="/includes/siteid.asp" -->
<%submenuid = "0"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<!--#include virtual="/includes/titleprefix.asp" --><title><%=titleprefix&"�kologisk rygs�k"%></title><!--#include virtual="/includes/head.asp" -->
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
<h2>�kologisk rygs�k</h2>
<div id="maincontenttext"><P>Er en metode til at illustrere den menneskeskabte brug af naturressourcerne. Den �kologiske rygs�k er et m�l for et produkts eller en proces �kologiske p�virkning af milj�et. </P>
<P>Den �kologiske rygs�k kan ses som et billedligt udtryk for alle de naturressourcer, som et produkt b�rer med sig over hele produktets livsforl�b, dels som: </P>
<UL>
<LI>� R�materialer. <BR>� Energi input. <BR>� Affaldsstoffer. </LI></UL>
<P>Til et produkts hele livsforl�b medregnes hele produktets forl�b fra vugge til grav, s� det kommer til at inkludere dels: </P>
<UL>
<LI>� Udvindingen og fremskaffelsen af alle r�varer. <BR>� Fremstillingen af alle hj�lpestoffer, udstyr og maskiner der bruges i fremstillingsprocessen. <BR>� Selve fremstillingsprocessen. <BR>� Al transport <BR>� Alt der medg�r til emballering, markedsf�ring og salg af produktet. <BR>� Brug og drift af produktet i hele dets levetid. <BR>� Bortskaffelse af produktet. </LI></UL>
<P>Den �kologiske rygs�k opg�res som den samlede v�gt af de materiale str�mme, der indg�r i produktet minus v�gten af selve produktet. P� den m�de kan den �kologiske rygs�k ses som de indirekte materiale str�mme, som produktet b�rer med sig. Der kan skelnes mellem tre typer af indirekte materiale str�mme: </P>
<P>� Den uudnyttede udvinding af materialer, som er de materialer som enten flyttes i forbindelse med udvindingen af prim�re materialer eller er affaldsstoffer fra udvindingen af prim�re materialer. ( f.eks. m� der udgraves 140 ton kobbermalm for at kunne udvinde 1 ton kobber, de �vrige 139 ton bliver tilbage som et affaldsprodukt.) <BR>� Den indirekte str�m af materialer som bruges i produktets livs cyklus. <BR>� De affaldsstoffer som generes i forbindelse med produktets fremstilling, brug og bortskaffelse. </P>
<P>St�rrelsen af et produkts �kologiske rygs�k kan ses som en indikator for den ressource effektivitet, der er knyttet til et produkt. En stor �kologisk rygs�k indikerer at der til produktet er knyttet en h�j milj�belastning. En over tid faldende �kologisk rygs�k til et bestemt produkt kan ses som en indikator af en effektivisering af ressource forbruget i forbindelse med produktet. </P>
<P>Eksempler p� nogle produkters �kologiske rygs�k: </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Egen v�gt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �kologisk rygs�k </P>
<P>12 vin glas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2 kg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6 kg </P>
<P>1 PCer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20 kg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.500 kg </P>
<P>1 plastik spand&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0,5 kg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 26 kg </P>
<P>1 guld ring&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5 g&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.000 kg </P>
<P>1 bil&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 700 kg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;70.000 kg </P>
<P>&nbsp;</P>
<P>Den �kologiske rygs�k blev som begreb lanceret af det tyske Wuppertal Institute, du kan l�se mere om det <a href="http://www.wupperinst.org/FactorFour/FactorFour_FAQ.html" target="_new">p� deres hjemmeside.</A></P></div><!-- maincontenttext -->
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
