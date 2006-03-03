<%@ include file = "includes.jsp"%>

<div class="fixedWidthBody">

<jsp:include page="../page_title.jsp">
    <jsp:param name="image" value="statistics_w"/>
    <jsp:param name="title" value="Component Competition Record Book"/>
</jsp:include>

<% ResultSetContainer rsc = (ResultSetContainer) request.getAttribute("result");
String type = (String)request.getParameter("type");
if (type == null) type = HandleTag.COMPONENT; %>

<div style="float:right;"><A href="/tc?module=Static&d1=compstats&d2=comp_recordbook_home">back to table of contents</A></div>
<br><br>
<table class="stat" cellpadding="0" cellspacing="0" width="270" style="float: left; margin-right: 15px; margin-bottom: 15px;">
    <tr><td class="title" colspan="3">Highest Component Contest Royalty Earners</td></tr>
    <tr><td class="headerC">Rank</td><td class="header">Coder</td><td class="headerR">Ryoalties</td></tr>
    <% boolean even = false; %>
    <rsc:iterator list="<%=rsc%>" id="row">
        <tr class="<%=even?"dark":"light"%>">
        <td class="valueC"><rsc:item name="rank" row="<%=row%>"/></td>
        <td class="value"><tc-webtag:handle coderId='<%=row.getLongItem("coder_id")%>' context='<%=type%>'/></td>
        <td class="valueR"><rsc:item name="money" row="<%=row%>" format="$#,###,###.00"/></td>
        </tr>
    <% even = !even;%>
    </rsc:iterator>
</table>
<span class="bodyText">
<strong>Record:</strong> Top earners from software royalties.  Component competitors earn software royalties for winning contests designing and developing components used by TopCoder Software customers.
</span>
</div>
</html>