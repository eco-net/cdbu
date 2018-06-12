<script language="JavaScript" type="text/JavaScript">
<% if session("cen_sessionid")="" then %>
document.write ('<img src="/general/log.asp?siteid=<%=siteid%>&menuid=<%=menuid%>&pageid=<%=pageid%>&submenuid=<%=submenuid%>&dataid=<%=dataid%>&screenw='+scrw+'&screenh='+scrh+'&ref=<%=request.ServerVariables("HTTP_REFERER")%>" width="1" height="1">');
<% else %>
document.write ('<img src="/general/log.asp?siteid=<%=siteid%>&menuid=<%=menuid%>&pageid=<%=pageid%>&submenuid=<%=submenuid%>&dataid=<%=dataid%>&screenw='+scrw+'&screenh='+scrh+'" width="1" height="1">');
<% end if %>
</script>
<h1 style="margin:0px;display:none"><a href="http://www.syneo.dk" style="color:#FFFFFF">Syneo</a></h1>
