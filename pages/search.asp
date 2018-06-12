<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!--#include virtual="//backend_oop/classes/_includeall.asp" -->
<%
session("siteid") = 1
' Hent liste over subbrands
dim subbrands_dp, sdi, dbm, cat, list, arrgears, frames_di, idarray, i
dim bodyheight, gender, numgears, color, ignoredlist

set dbm = oSingletons.getDBManager()
set sdi = new DataItem
sdi.siteid = session("siteid")

' Hent liste over subbrands
sdi.contextname = "Subbrands"
subbrands_dp = dbm.getDataProviderFromDataItem(sdi) ' subbrands_dp indeholder nu id'er og navne for de 5/6 subbrand-DataItems

' Hent liste over køn
dim sex_dp
sdi.contextname = "Bicycle Sex"
sex_dp = dbm.getDataProviderFromDataItem(sdi)

' liste over farver
dim colour_dp
sdi.contextname = "Bicycle color"
colour_dp = dbm.getDataProviderFromDataItem(sdi)

' liste over gear
arrgears = dbm.getDistinctFieldValues("Bicycles", "numgears")

bodyheight = request("bodyheight")

if request("search") = "true" then
	set sdi = new DataItem
	sdi.siteid = session("siteid")
	sdi.contextname = "Bicycles"
	' Gender
	gender = request("gender")
	if len(gender)>0 then
		set cat = new Category
		cat.catid = gender
		cat.catckey = "sex_name"
		sdi.createCategory "sex", cat
	end if
	' Colour
	color = request("color")
	if len(color)>0 then
		set cat = new Category
		cat.catid = color
		cat.catckey = "color_name"
		sdi.createCategory "color", cat
	end if
	' Number of gears
	numgears = request("numgears")
	if len(numgears)>0 then
		sdi.createField "numgears", "int", CInt(numgears)
	end if
	' Frame size
	bodyheight = request("bodyheight")
	if len(bodyheight)>0 then
		if isNumeric(bodyheight) then
			set frames_di = new DataItem
			frames_di.contextname = "Bicycle framesize"
			frames_di.siteid = session("siteid")
			frames_di.createField "minheight", "int", CInt(bodyheight)
			frames_di("minheight").operator = "<="
			frames_di.createField "maxheight", "int", CInt(bodyheight)
			frames_di("maxheight").operator = ">="
			idarray = dbm.DataItemSearch(frames_di)	' resultat: id'er for de framesize-dataitems, der opfylder kriterierne.
			if ubound(idarray)<0 then
				' Lav kategori, der giver 0 resultater
				set cat = new Category
				cat.catid = 0
				cat.catckey = "framesize_name"
				cat.required = true
				sdi.createCategory "framesize", cat
			else
				for i = 0 to ubound(idarray)
					set cat = new Category
					cat.catid = idarray(i)
					cat.catckey = "framesize_name"
					cat.required = "auto"
					sdi.createCategory "framesize", cat
				next
			end if
		else
			bodyheight = ""
		end if
	end if
	set list = dbm.getList(sdi, "")
	' Regradierende søgning: Løsner søgekriterier, hvis der ingen resultater er.
	'Most important:	Body height
	'Second important:	Gender
	'Third important:	Color
	'Forth important:	Number of gears
	if list.length = 0 and len(numgears)>0 and sdi.fieldExists("numgears") then
		' response.write("Removing numgears criteria.<br />")
		ignoredlist = "Søgningen var for snæver til at give resultat. Søger derfor ikke på antal gear"
		sdi.deleteField "numgears"
		numgears = ""
		set list = dbm.getList(sdi, "")
	end if
	if list.length = 0 and len(color)>0 and sdi.categoryExists("color") then
		' response.write("Removing colors criteria.<br />")
		ignoredlist = ignoredlist & " og farve"
		sdi.deleteCategory "color"
		color = ""
		set list = dbm.getList(sdi, "")
	end if
	if list.length = 0 and len(gender)>0 and sdi.categoryExists("gender") then
		' response.write("Removing gender criteria.<br />")
		ignoredlist = ignoredlist & " og køn"
		sdi.deleteCategory "gender"
		gender = ""
		set list = dbm.getList(sdi, "")
	end if
	if list.length = 0 and len(bodyheight)>0 and sdi.categoryExists("bodyheight") then
		' response.write("Removing bodyheight criteria.<br />")
		ignoredlist = ignoredlist & " og kropshøjde"
		sdi.deleteCategory "bodyheight"
		bodyheight = ""
		set list = dbm.getList(sdi, "")
	end if
	if len(ignoredlist)>0 then ignoredlist = ignoredlist & "."
	
	list.sortBy "subbrand.sortnumber,menuname,price"
end if

dim di, media, selstr, curbrand
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Søg efter cykler</title>
<meta http-equiv="Cache-Control" content="no-cache, no-store, proxy-revalidate, must-revalidate">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- HUSK METATAGS !! -->
<link href="/general/styles/div_styles.css" media="screen" rel="stylesheet" type="text/css">
<link href="/general/styles/global.css" media="screen" rel="stylesheet" type="text/css">

</head>
<body>

<div id="mother">

<div id="contentHolder">
<div id="topbar"><!--#include virtual="/general/tools.asp" --></div>
<div id="menubar"><!--#include virtual="/general/menu.asp" -->
</div>

<div id="navBar">
<div id="subbrands">
<% 
for i = 0 to ubound(subbrands_dp) %>
<a href="cycles.asp?subbrand=<%=subbrands_dp(i).name%>"><img src="/basicsite/general/layout/<%=subbrands_dp(i).name%>_small.jpg" border="0" /></a>
<% next %>
</div>

<div id="weblink">
<form>
<span class="blue">Indtast weblink her:</span><br>
<input name="" type="text" class="input" style="width:60px;" />
<input type="button" value="Vis" style="width:68px;" class="submit"/>
</form>
</div>
</div><!--  menuleft -->

<div id="colLeft">
  <h2>Søgning</h2>
  <% if request("search") <> "true" then %>
  <p>Indtast dine søgekriterier og du vil blive præsenteret for de cykler som passer netop til dig.</p>
 <% else %>
 <p><%=ignoredlist%></p>
 <p>Fundet: <% = list.length%> cykler.</p>

<% 
curbrand = ""
for i = 0 to list.length -1 
	set di = list.itemAt(i)
	if di.getFirstCategory("subbrand").catvalue <> curbrand then
		curbrand = di.getFirstCategory("subbrand").catvalue
	%>
  <img src="/general/layout/bar_<%=curbrand%>.gif" width="350" height="30" class="searchresultsLogo"/>
	<%
	end if
	set media = di("smallimage")
%>  
  <table class="searchresultsTABLE">
   <tr>
    <td rowspan="3" valign="top"><a href="cycles.asp?id=<%=di.id%>"><img src="..<%=media.filepath%>" border="0" width="100"/></a></td>
    <td><a href="cycles.asp?id=<%=di.id%>"><strong><% = di("menuname").text%></strong></a></td>
  </tr>
  <tr>
    <td valign="top">&nbsp;</td>
  </tr>
   <tr>
    <td valign="bottom">Pris: <span class="blue"><% = di("price").val%> DKK</span></td>
  </tr>
 </table>
<% next %>
   <% end if %>
</div>
<div id="colRight">
<div id="searchbox">
  <h3>Søg på cykel </h3>
  <form name="searchbox" method="get" action="">
  <table width="145" class="searchbox">
    <tr>
      <td class="searchBoxTD">Antal gear:</td>
    </tr>
    <tr>
      <td>
	  <select name="numgears" class="select" id="gear" style="width:130px;">
	    <option value="">&lt;-- Alle -- &gt;</option>
<% for i = 0 to ubound(arrgears) 
selstr = ""
if numgears = arrgears(i) then selstr = " selected"
%>
        <option value="<% = arrgears(i) %>" <%=selstr%>><% = arrgears(i) %></option>
<% next %>
	  </select>	  </td>
    </tr>
    <tr>
      <td class="searchBoxTD">Cykelfarve:</td>
    </tr>
    <tr>
      <td><select name="color" class="select" id="color" style="width:130px;">
        <option value="">&lt;-- Alle --&gt;</option>
<% for i = 0 to ubound(colour_dp) 
	selstr = ""
	if CStr(colour_dp(i).id) = CStr(color) then selstr = " selected"
%>
        <option value="<% = colour_dp(i).id%>" <%=selstr%>><% = colour_dp(i).name%></option>
<% next %>
	  </select>	</td>
    </tr>
    <tr>
      <td class="searchBoxTD">Din h&oslash;jde (cm): </td>
    </tr>
    <tr>
      <td><input name="bodyheight" type="text" id="bodyheight" style="width:40px;" value="<% = bodyheight %>" maxlength="3" />	</td>
    </tr>
    <tr>
      <td class="searchBoxTD">Dit k&oslash;n: </td>
    </tr>
    <tr>
      <td><select name="gender" class="select" id="gender" style="width:130px;">
        <option value="">&lt;-- Alle --&gt;</option>
<% for i = 0 to ubound(sex_dp) 
	selstr = ""
	if request("search") = "true" then
		if CStr(sex_dp(i).id) = CStr(gender) then selstr = " selected"
	end if
%>

        <option value="<%=sex_dp(i).id%>"<%=selstr%>><% = sex_dp(i).name%></option>
<% next %>
	  </select>	</td>
    </tr>
	<tr><td>&nbsp;</td></tr>
    <tr>
      <td><input type="submit" name="Submit" value="Find" class="submit" style="width:100px; ">
        <input name="search" type="hidden" id="search" value="true" /></td>
    </tr>
  </table>
</form></div>
</div><!--  rightbar -->

</div><!--  contentHolder -->
<div id="footer"></div>
</div><!-- mother -->
</body>
</html>
