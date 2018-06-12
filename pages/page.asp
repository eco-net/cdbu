<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252" %>
<%
DIM menuid,siteid,submenuid,pageid
menuid = "0" %>
<!--#include virtual="/includes/siteid.asp" -->
<%pageid = "5" 
submenuid = "0" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<!--#include virtual="/includes/head.asp" -->
<!--#include virtual="/includes/homepagetitle.asp" -->
<!--#include virtual="/includes/titleprefix.asp" -->
<title><%=titleprefix&homepagename%></title>
<%
pagekeywords=gpagekeywords
pagedescription=gpagedescription
%>
<meta name="keywords" content="<%=pagekeywords%>" />
<meta name="description" content="<%=pagedescription%>" />
<script language="JavaScript" type="text/JavaScript">
window.name='main';
</script>
</head>
<body>

<div id="mother">
<div id="contentHolder">
<div id="topbar"><!--#include virtual="/includes/tools.asp" --></div>
<div id="menubar"><!--#include virtual="/includes/topmenu.asp" --></div>

<!-- LEFT MENU -->
<%
menuid=10
submenuid=23
%>
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
<h2>djsl fkdjf lsdkfjsl klasj dlaskj dlkas dlaskjda sldkj saldj</h2>
<div id="maincontenttext">dfkjsldkfjsldkfj sdlfksj lfksdj lsdkfj sljf sf 
lsdkfjl skdfj sdlkfj sdlkfjsd lkj fsldfj slkfj slfjskfs j
 sdlkfjsflsdkfj sldkfjs flskdfj sldkfj sldkfjsd lfkjs df 
 sldkfj sdlkfjsd flkjsd flksd jflksdj lfkj sdklfj sldkfjl s
 lksdfj lsdkfj sdlkfjs <a href="#">dflsdkfj</a> sldkfj sldkfjkls dfj sj
 sdlkfj sdlkfjsd lkfjsd flskfj sdlkfj sdlkfj sdlkfj s
 sdlkfj sldkfjsd lkfj sdlkfj sdlfkj sdlkfj sdlkjf sd
 lksdfj sdlkfj sdlfkjsd fkjsdf lsdkfj ls
<h3>djsl fkdjf lsdkfjsl</h3>
<img src="/img.jpg" border="0" align="left"><br>
sdlfksj lfksdj lsdkfj sljf sf 
lsdkfjl skdfj sdlkfj sdlkfjsd lkj fsldfj slkfj slfjskfs j
 sdlkfjsflsdkfj sldkfjs flskdfj sldkfj sldkfjsd lfkjs df 
 sldkfj sdlkfjsd flkjsd flksd jflksdj lfkj sdklfj sldkfjl s
 lksdfj lsdkfj sdlkfjs dflsdkfj sldkfj sldkfjkls dfj sj
 sdlkfj sdlkfjsd lkfjsd flskfj sdlkfj sdlkfj sdlkfj s
 sdlkfj sldkfjsd lkfj sdlkfj sdlfkj sdlkfj sdlkjf sd
 lksdfj sdlkfj sdlfkjsd fkjsdf lsdkfj ls
</div><!--text-->
</div><!--  maincontent -->
<!-- END MAIN CONTENT -->

<div id="colRight">
<h3>alksdj alskjdla</h3><p>kjsdhf skhfsdkjfhskfh sdkfh kshksdfh skdh fk  dlkj dlfksdj lksjd flsj lsdjf lsdkj flsdjf lsdjf
klæsdjf sdjfsldkfj lsdkjf <a href="#">sdljlsdkjflsdjf</a> lsdkj fljslsdjflsdjlsdj flsdjf lsd jldskj lsdkj flkjsdljf sd
sdfs dæsdlkæsdlk ælsd fælsd æl æsdl lædf</p>
</div><!-- colRight -->

</div><!-- contentHolder -->
<div id="footer"><!--#include virtual="/includes/footer.asp" --></div>
</div><!-- mother -->
<!--#include virtual="/includes/drops.asp" -->
<!--#include virtual="/includes/log.asp" -->
</body>
</html>
