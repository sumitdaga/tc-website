<%@  page language="java"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>2005 TopCoder Open - Computer Programming Tournament</title>
<link type="text/css" rel="stylesheet" href="/css/TCO05style.css"/>
<link type="text/css" rel="stylesheet" href="/css/style.css"/>
</head>
<body>

<!-- Tab barlinks-->
<jsp:include page="spon_links.jsp" >
<jsp:param name="tabLev2" value="advancers"/>
<jsp:param name="tabLev3" value="qualification"/>
</jsp:include>

<table width="100%" border=0 cellpadding=0 cellspacing=0>
<!-- Body-->
	<tr valign=top>
		<td valign=top align=center>
		<div class=bodySpacer>
            
<span class="bigTitle">Advancers - Qualification</span>
<br><br>
Click a column title to sort the list of advancers by that column. Click <a href="?module=SimpleStats&c=tccc05_alg_adv_overview&trans=true&d1=tournaments&d2=tccc05&d3=alg_adv_overview">here</a> to reset the list to its originally sorted format.
<br><br>
<table width="500" align="center" border="0" cellpadding="2" cellspacing="0" class="formFrame">
   <tr class="advHeader">
      <td width = "10%" align = "center" nowrap="nowrap"><a href="">Seed</a></td>
      <td width = "15%" nowrap="nowrap"><a href="">Handle</a></td>
      <td width = "10%" align = "center" nowrap="nowrap"><a href="">Problem Set</a></td>
      <td width = "5%" align = "right" nowrap="nowrap"><a href="">Rating</a></td>
      <td width = "10%" align = "right" nowrap="nowrap"><a href="">Points</a></td>
   </tr>
   <tr>
      <td class="advanceLt" align="center">bla</td>
      <td class="advanceLt">bla</td>
      <td class="advanceLt" align="center">bla</td>
      <td class="advanceLt" align="right">bla</td>
      <td class="advanceLt" align="right">bla</td>
   </tr>
   <tr>
      <td class="advanceDk" align="center">bla</td>
      <td class="advanceDk">bla</td>
      <td class="advanceDk" align="center">bla</td>
      <td class="advanceDk" align="right">bla</td>
      <td class="advanceDk" align="right">bla</td>
   </tr>
</table>
        </div>
		</td>
        
         
<!-- Right Column-->
<td width="170" align="right">
<img src="/i/clear.gif" alt="" width="170" height="15" border="0" /><br />
<img src="/i/tournament/tco05/sun_right.gif" alt="Sun" border="0" /><br />
<img src="/i/clear.gif" alt="" width="10" height="10" border="0" /><br />
<img src="/i/tournament/tco05/nsa_right.gif" alt="NSA" border="0" /><br />
<img src="/i/clear.gif" alt="" width="10" height="10" border="0" /><br />
<img src="/i/tournament/tco05/yahoo_right.gif" alt="Yahoo" border="0" /><br />
<img src="/i/clear.gif" alt="" width="10" height="10" border="0" /><br />
<img src="/i/tournament/tco05/verisign_right.gif" alt="Verisign" border="0" /><br />
<img src="/i/clear.gif" alt="" width="10" height="10" border="0" /><br />
<jsp:include page="../../calendar.jsp" />
</td>
		
	</tr>
	
</table>

<jsp:include page="../../foot.jsp" />

</body>

</html>
