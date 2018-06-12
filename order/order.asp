<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/Connections/ecoinfo.asp" -->
<%
FUNCTION InsertRec(theSQL)
	'response.write theSQL&"<br>"
	'response.write MM_ecoinfo_STRING
    Set theComm = Server.CreateObject("ADODB.Command")
    theComm.ActiveConnection = MM_ecoinfo_STRING
    theComm.CommandText = theSQL
	theComm.Execute
    theComm.ActiveConnection.Close
	
		Set theComm = Server.CreateObject("ADODB.RecordSet")
		theComm.ActiveConnection = MM_ecoinfo_STRING
		theComm.Source = "SELECT MAX(id) as themax FROM bucd_order" & theTable
		
		theComm.Open()
		InsertRec=theComm.Fields.Item("themax").value
		theComm.Close()
	
END FUNCTION
SUB SendMail (theBody,email)
	
	set jmail = server.createobject("JMAIL.SMTPMail")
	jMail.sendername = "Øko-net"
	jMail.sender = "info@eco-net.dk"
	jMail.Subject = "Din bestilling er registreret"
	jMail.ServerAddress = "mail.cdbu.dk"
	'jMail.Charset = "UTF-8"
	jMail.AddRecipient email
	jMail.HTMLBody = theBody
	jMail.Priority = 3
	jMail.execute


	' setting up mail-obj ...
'	set msg = server.CreateObject("CDO.Message")
'	set conf = server.CreateObject("CDO.Configuration")
'	conf.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "mail.dir.dk"
'	conf.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
'	conf.Fields("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
'	conf.Fields("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60
'	conf.Fields.Update
	
'	msg.configuration = conf
'	msg.MimeFormatted=True
'	msg.To = strTo
'	if sendmode = "approve" then
'		msg.From = GetSetting(5,"dk")
'	else
'		msg.From = "info@eco-net.dk"
'	end if
'	msg.autoGenerateTextBody = true
'	msg.send()

'	strBodyHTML=Readfile("/newsmails/"&mailid&".asp")
'	msg.subject = "Din bestilling er registreret"
'	msg.TextBody = theBody
'	msg.To= email
'	msg.Send()
END SUB
%>
<%
Dim antal,amount
antal=CInt(request("quantity"))
amount=(antal*150)+15
if antal>0 then
theSQL="INSERT INTO bucd_order (name,address,zip,city,email,quantity) " &_
" VALUES ('" & request("name") &_
"','" & request("address") &_
"'," & request("zip") &_
",'" & request("city") &_
"','" & request("email") &_
"'," & request("quantity") & ")"
ordernumber=InsertRec(theSQL)
if request("email")<>"" then 
thebody="Vi takker for bestillingen af CD'en B&aelig;reklang.<br>Vi sender bestillingen s&aring; snart vi har modtaget din betaling.<br><br> "
theBody=theBody & " Betalingen p&aring; " & amount & " kr. kan indbetales p&aring; f&oslash;lgende m&aring;der: <br>" & vbCrLf
theBody=theBody & " <strong>Merkur - Den Almennyttige Andelskasse - Reg nr. 8401 - Kontonr. 1021494</strong> <br>" & vbCrLf
theBody=theBody & " <strong>Postgiro til &Oslash;ko-net, Svendborgvej 9, Ollerup  giro. nr. 1 222 0766</strong> <br><br>" & vbCrLf & vbCrLf
theBody=theBody & " M&aelig;rk betalingen med ordrenummer: " & ordernumber & "<br><br>"&vbCrLf & vbCrLf
theBody=theBody & " <strong>Med Venlig Hilsen</strong><br> &Oslash;ko-net, Svendborgvej 9, 5762 V.Skerninge <br>" & vbCrLf
theBody=theBody & " 62244324, eco-net@eco-net.dk"

email=request("email")
SendMail theBody,email
end if
end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<!--#include virtual="/includes/titleprefix.asp" --><title><%=titleprefix&"Ordrebekr&aelig;ftelse"%></title><!--#include virtual="/includes/head.asp" -->
<meta name="keywords" content="" />
<meta name="description" content="" />
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
<table width="350" border="0" align="center">
  <tr>
    <td><img src="/images/introimages/BaereklangCD.jpg" width="350" height="321"></td>
  </tr>
  <tr>
    <td><% if antal>0 then %>
	  <span class="contentHeader2">Vi takker for bestillingen</span> <br>
	  af <%=antal%> 
	<% if antal>1 then %>
	B&aelig;reklang CD'er 
	<% else %>
	B&aelig;reklang CD 
	<% end if %>
	<% else %>
	Du glemte vist at bestille<br>
	<a href="javascript:history.go(-1)">Pr&oslash;v igen</a>	<% end if %>	</td>
  </tr>
  <% if antal>0 then %>
  <tr>
    <td>
	Bestillingen sendes til denne addresse:<br />
	<%=request("name")%> - <%=request("address")%> <br>
	<%=request("zip")%> &nbsp; <%=request("name")%> <br>
	<%=request("email")%>
	
	</td>
  </tr>
  <tr>
    <td><strong>N&aring;r vi har registreret din betaling af bel&oslash;bet p&aring; <%=amount%> kr.</strong>
	sender vi straks <% if antal>1 then %>
	CD'erne.
	<% else %>
	CD'en. 
	<% end if %></td>
  </tr>
<tr>
<td>
<p>Bel&oslash;bet kan indbetales p&aring; bankkonto:<br>
<span class="formLabeltext"><strong>Merkur - Den Almennyttige Andelskasse<br>
Reg nr. 8401 - Kontonr. 1021494 </strong></span><strong><br>
M&aelig;rk betalingen med ordrenummer: <%=ordernumber%></strong></p>
<script type='text/javascript' language='javascript' src='http://www.ewire.dk/includes/quickservice_functions.js.asp'></script>
<p><strong>Bel&oslash;bet kan ogs&aring; betales via ewire.
<a style="cursor:pointer" onclick="javascript:open_ewire_email('eco-net@eco-net.dk','%D8ko-net+','CD - ordrenr <%=ordernumber%>','','<%=amount%>,00','24','1');">
Klik her.</a></strong>
</p></td>
</tr>
  <tr>
    <td>Dette er din ordrebekr&aelig;ftelse, gem den eller udskriv.
    <% if request("email")<>"" then%>
    <br>
    Du vil samtidig modtage bekr&aelig;ftelsen pr. mail
    <% end if %></td>
  </tr>
  <tr>
    <td><p class="sitetag">&nbsp;</p>
      <p class="sitetag">Med Venlig Hilsen <br>
&Oslash;ko-net, Svendborgvej 9, 5762 V.Skerninge<br>
    62244324, <a href="mailto:eco-net@eco-net.dk">eco-net@eco-net.dk</a></p></td>
  </tr>
 
  <% end if %>
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
