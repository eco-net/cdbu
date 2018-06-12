<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252" %>
<%option explicit
DIM menuid,siteid,submenuid,pageid,dataid
pageid = "408"
menuid = "272"
%>
<!--include virtual="/includes/siteid.asp" -->
<%submenuid = "0"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<!--#include virtual="/includes/titleprefix.asp" --><title><%=titleprefix&"Bestil CDen her"%></title><!--#include virtual="/includes/head.asp" -->
<meta name="keywords" content="" />
<meta name="description" content="" />
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_validateForm() { //v4.0
  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
    if (val) { nm=val.name; if ((val=val.value)!="") {
      if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
        if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
      } else if (test!='R') { num = parseFloat(val);
        if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
        if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
          min=test.substring(8,p); max=test.substring(p+1);
          if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
    } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
  } if (errors) alert('The following error(s) occurred:\n'+errors);
  document.MM_returnValue = (errors == '');
}
//-->
</script>
</head>
<body>

<div id="mother">
<div id="contentHolder">
<div id="topbarsub"><!--#include virtual="/includes/homepagetitle.asp" --><!--#include virtual="/includes/tools.asp" --><div id="topbar_text"><!--#include virtual="/includes/tagline.asp" --></div></div>
<div id="menubar"><!--#include virtual="/includes/topmenu.asp" --></div>


<!-- MAIN CONTENT -->
<div id="maincontent_XL">
<h2>Bestil CDen her</h2>
<div id="maincontenttext"><P><STRONG>Online bestilling</STRONG></P>
<table width="350"  border="0" align="center">
  <tr>
    <td><img src="/images/introimages/baereklangCD.jpg" width="350" height="321"></td>
  </tr>
  <tr>
    <td><form name="form1" method="post" action="order.asp">
      <table width="100%"  border="0">
  <tr>
    <td colspan="2" valign="top"><p>Bestil CD’en her: </p>
      <p><strong>Prisen er 150 kr.</strong> (inkl. moms) + porto p&aring; 15 kr. (der kan godt bestilles mere end et eksemplar i samme pakke).</p>
      <p>Bestillinger  sendes indenfor 24 timer efter at  vi har modtaget betalingen.</p>
      <p>Du kan betale p&aring; f&oslash;lgende m&aring;der: </p>
      <p> Overf&oslash;r pengene til vores konto i Merkur - Den Almennyttige Andelskasse - Reg nr. 8401 - Kontonr. 1021494.</p>
      <p>Du kan også indbetale beløbet via postgiro – udfyld og betal et girokort på posthuset til Øko-net, Svendborgvej 9, Ollerup – giro. nr. 1 222 0766 </p>
      <p>&nbsp;</p>
      <p> <strong>Hvis du bestiller CD'en her p&aring; sitet, bedes du m&aelig;rke overf&oslash;rslen/indbetalingen med det ordrenummer der fremsendes pr. mail</strong>.</p>
      <p>&nbsp;</p>
      <p>&nbsp;           </p></td>
    </tr>
  <tr valign="top">
    <td width="50%" valign="top">Navn</td>
    <td><input name="name" type="text" class="formInputobject" id="name"></td>
  </tr>
  <tr valign="top">
    <td valign="top">Adresse</td>
    <td><input name="address" type="text" class="formInputobject" id="address"></td>
  </tr>
  <tr valign="top">
    <td valign="top">Postnr</td>
    <td><input name="zip" type="text" class="formInputobject" id="zip"></td>
  </tr>
  <tr valign="top">
    <td valign="top">By</td>
    <td><input name="city" type="text" class="formInputobject" id="city"></td>
  </tr>
  <tr valign="top">
    <td valign="top">Email</td>
    <td><input name="email" type="text" class="formInputobject" id="email"></td>
  </tr>
  <tr valign="top">
    <td valign="top">Antal B&aelig;reklang </td>
    <td><input name="quantity" type="text" class="formInputobject" id="quantity" value="1"></td>
  </tr>
  <tr valign="top">
    <td valign="top"><strong>Ved bestilling modtager du en bekr&aelig;ftelse med ordrenr. til brug ved betalingen. </strong></td>
    <td valign="middle"><div align="center">
      <input name="Submit" type="submit" class="formSubmitbutton" id="Submit" onClick="MM_validateForm('name','','R','address','','R','zip','','RisNum','city','','R','email','','RisEmail','quantity','','RinRange1:1000');return document.MM_returnValue" value="Bestil">
    </div></td>
  </tr>
  <tr valign="top">
    <td colspan="2" valign="top"><p class="sitetag">Med Venlig Hilsen <br>
&Oslash;ko-net, 
          Svendborgvej 9, 
          5762 V.Skerninge<br>
          62244324, <a href="mailto:eco-net@eco-net.dk">eco-net@eco-net.dk</a></p>      </td>
    </tr>
</table>

      </form></td>
  </tr>
</table>

</div><!-- maincontenttext -->
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
