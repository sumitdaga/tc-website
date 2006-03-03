<%@ page
  language="java"
  import="com.topcoder.shared.dataAccess.*,com.topcoder.shared.dataAccess.resultSet.*,com.topcoder.shared.util.ApplicationServer"

%>

<%@ taglib uri="struts-bean.tld" prefix="bean" %>
<%@ taglib uri="struts-logic.tld" prefix="logic" %>
<%@ taglib uri="tc.tld" prefix="tc" %>
<%@ taglib uri="rsc-taglib.tld" prefix="rsc" %>
<%@ taglib uri="tc-webtags.tld" prefix="tc-webtag" %>

<HTML>
<HEAD>
<TITLE>TopCoder Statistics</TITLE>
<jsp:include page="/style.jsp">
  <jsp:param name="key" value="tc_stats"/>
</jsp:include>
<jsp:include page="baseHRef.jsp" />
<jsp:include page="../script.jsp" />
</HEAD>
<BODY>
   <jsp:include page="../top.jsp" />
   <TABLE WIDTH="100%" BORDER="0" CELLPADDING="0" CELLSPACING="0">
     <TR valign="top">
        <TD WIDTH="180">
<!-- Left nav begins -->
         <jsp:include page="/includes/global_left.jsp">
            <jsp:param name="node" value="m_competitor_stats"/>
         </jsp:include>
<!-- Left nav ends -->
        </TD>

<!-- Center Column Begins -->
<td class="statTableSpacer" width="100%" valign="top">

<%
Request srb = (Request) request.getAttribute("REQUEST_BEAN");
pageContext.setAttribute("coder_id", srb.getProperty("cr","0000"));
%>

<% if(srb.getProperty("pi").equals("113")){ %>
    <jsp:include page="../page_title.jsp" >
    <jsp:param name="image" value="statistics_w"/>
    <jsp:param name="title" value="Component Development Rating History"/>
    </jsp:include>
<% } else { %>
    <jsp:include page="../page_title.jsp" >
    <jsp:param name="image" value="statistics_w"/>
    <jsp:param name="title" value="Component Design Rating History"/>
    </jsp:include>
<% } %>

<% if(srb.getProperty("pi").equals("113")){ %>

    <span class="bigHandle">Coder:&#160;<tc-webtag:handle coderId='<%=pageContext.getAttribute("coder_id").toString() %>' context="development"/></span>
    <br>
    <span class="bodySubtitle">Development Statistics&#160;>&#160;</span><br>
    <span class="bc">
    <A HREF="/tc?module=MemberProfile&cr=<%= pageContext.getAttribute("coder_id") %>" class="bcLink">Member Profile</A>
    &#160;|&#160;Rating History
    &#160;|&#160;<A HREF="/stat?pi=113&c=component_history&cr=<%= pageContext.getAttribute("coder_id") %>" class="bcLink">Earnings History</A>
    </span>

<% } else { %>

    <span class="bigHandle">Coder:&#160;<tc-webtag:handle coderId='<%=pageContext.getAttribute("coder_id").toString() %>' context="design"/></span>
    <br>
    <span class="bodySubtitle">Design Statistics&#160;>&#160;</span><br>
    <span class="bc">
    <A HREF="/tc?module=MemberProfile&cr=<%= pageContext.getAttribute("coder_id") %>" class="bcLink">Member Profile</A>
    &#160;|&#160;Rating History
    &#160;|&#160;<A HREF="/stat?pi=112&c=component_history&cr=<%= pageContext.getAttribute("coder_id") %>" class="bcLink">Earnings History</A>
    </span>

<% } %>

<bean:define id="nameColor" name="CODER_COLORS" scope="application" toScope="page"/>
<bean:define name="QUERY_RESPONSE" id="queryEntries" type="java.util.Map" scope="request"/>
<%
ResultSetContainer rsc = (ResultSetContainer) queryEntries.get("Basic_Coder_Information");
boolean bEmpty = (rsc == null || rsc.size()!=1);
if (!bEmpty) {
ResultSetContainer.ResultSetRow rsr = rsc.getRow(0);
pageContext.setAttribute("resultRow", rsr);
%>
    <bean:define id="coderrank" name="resultRow" property='<%= "item[" + 1 /*"coder_score"*/ + "]" %>'/>
<% }
ResultSetContainer rsc2 = (ResultSetContainer) queryEntries.get("TCS_Ratings_History");
pageContext.setAttribute("resultSet", rsc2);

//calculate scrolling information
//1. pick apart parms
String sStartRow=srb.getProperty("sr","1");
pageContext.setAttribute("sr", sStartRow);
String sEndRow = srb.getProperty("er",Integer.toString(rsc2.size()));
pageContext.setAttribute("er", sEndRow);
String sNumRow = srb.getProperty("nr",Integer.toString(rsc2.size()));
pageContext.setAttribute("nr", sNumRow);

//2. calculate next scroll
int iTemp = Integer.parseInt(sEndRow)+1;
pageContext.setAttribute("next_sr", Integer.toString(iTemp));
iTemp += Integer.parseInt(sNumRow)-1;
pageContext.setAttribute("next_er", Integer.toString(iTemp));

//3. now calculate previous scroll
iTemp = Math.max(1,Integer.parseInt(sStartRow)-1);
pageContext.setAttribute("prev_er", Integer.toString(iTemp));
iTemp = Math.max(1,(iTemp-Integer.parseInt(sNumRow)+1));
pageContext.setAttribute("prev_sr", Integer.toString(iTemp));

String sortString = "";
if (srb.getProperty("sq")!=null){
  sortString="&sq=" + srb.getProperty("sq");
  sortString+="&sc=" + srb.getProperty("sc");
  sortString+="&sd=" + srb.getProperty("sd", "desc");
}
String sSortUrl = "/stat?c=tcs_ratings_history&cr="+srb.getProperty("cr")+"&sq=tcs_ratings_history&pi=" + srb.getProperty("pi");
%>

    <% if (!bEmpty) { %>
   <% if (rsc2.croppedDataBefore() ||  rsc2.croppedDataAfter()) { %>
      <div class="pagingBox">
      <% if (rsc2.croppedDataBefore()) { %>
         <a href="/stat?c=ratings_history&cr=<%=pageContext.getAttribute("coder_id").toString() %>&sr=<%=pageContext.getAttribute("prev_sr").toString() %>&er=<%=pageContext.getAttribute("prev_er").toString() %>&nr=<%=pageContext.getAttribute("nr").toString() %><%=sortString%>" class="bcLink">&lt;&lt; previous</a>
      <% } else { %>
         &lt;&lt; previous
      <% } %>
         &nbsp;|&nbsp;
      <% if (rsc2.croppedDataAfter()) { %>
         <a href="/stat?c=atings_history&cr=<%=pageContext.getAttribute("coder_id").toString() %>&sr=<%=pageContext.getAttribute("next_sr").toString() %>&er=<%=pageContext.getAttribute("next_er").toString() %>&nr=<%=pageContext.getAttribute("nr").toString() %><%=sortString%>" class="bcLink">next &gt;&gt;</a>
      <% } else { %>
         next &gt;&gt;
      <% } %>
      </div>
   <% } else { %>
      <div class="pagingBox">&#160;</div>
   <% } %>

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="statTableHolder">
   <tr>
      <td>
      <table cellpadding="0" cellspacing="0" border="0" width="100%" class="statTable">
         <tr><td class="tableTitle" colspan="6">
         <% if(srb.getProperty("pi").equals("113")){%>
         Development
         <% } else { %>
         Design
         <% } %>
         Rating History
         </td></tr>
         <TR>
            <TD CLASS="tableHeader"><a href="<%=sSortUrl%>&sc=3&sd=<%= "3".equals(srb.getProperty("sc")) && srb.getProperty("sd","desc").equals("desc") ?"asc":"desc"%>">Date</a></TD>
            <TD CLASS="tableHeader" WIDTH="40%"><a href="<%=sSortUrl%>&sc=4&sd=<%= "4".equals(srb.getProperty("sc")) && srb.getProperty("sd","desc").equals("desc") ?"asc":"desc"%>">Contest</a></TD>
            <TD CLASS="tableHeader" WIDTH="15%" align="right"><a href="<%=sSortUrl%>&sc=13&sd=<%= "13".equals(srb.getProperty("sc")) && srb.getProperty("sd","desc").equals("desc") ?"asc":"desc"%>">Place</a></TD>
            <TD CLASS="tableHeader" WIDTH="15%" align="right"><a href="<%=sSortUrl%>&sc=7&sd=<%= "7".equals(srb.getProperty("sc")) && srb.getProperty("sd","desc").equals("desc") ?"asc":"desc"%>">Score</a></TD>
            <TD CLASS="tableHeader" WIDTH="15%" align="right"><a href="<%=sSortUrl%>&sc=5&sd=<%= "5".equals(srb.getProperty("sc")) && srb.getProperty("sd","desc").equals("desc") ?"asc":"desc"%>">Rating</a></TD>
            <TD CLASS="tableHeader" WIDTH="15%" align="right">&#160;</TD>
         </TR>
         <%boolean even = true;%>
         <logic:iterate name="resultSet" id="resultRow2" type="ResultSetContainer.ResultSetRow">
         <TR>
            <TD class="<%=even?"statLt":"statDk"%>"><bean:write format="MM.dd.yy" name="resultRow2" property='<%= "item[" + 3 /* event date */ + "].resultData" %>'/></TD>
            <TD class="<%=even?"statLt":"statDk"%>"><A HREF="http://<%=ApplicationServer.SOFTWARE_SERVER_NAME %>/catalog/c_component.jsp?comp=<bean:write name="resultRow2" property='<%= "item[" + 2 /* component id */ + "]" %>'/>" class="statLink"><bean:write name="resultRow2" property='<%= "item[" + 4 /* contest name */ + "]" %>'/></A></TD>
            <TD class="<%=even?"statLt":"statDk"%>" align="right"><bean:write name="resultRow2" property='<%= "item[" + 13 /* placed */ + "]" %>'/></TD>
            <TD class="<%=even?"statLt":"statDk"%>" align="right"><bean:write name="resultRow2" property='<%= "item[" + 7 /* score */ + "]" %>'/></TD>
            <TD class="<%=even?"statLt":"statDk"%>" align="right"><bean:write name="resultRow2" property='<%= "item[" + 5 /* new Rating */ + "]" %>'/></TD>
            <TD class="<%=even?"statLt":"statDk"%>" align="right" nowrap="nowrap"><A href="/tc?module=CompContestDetails&pj=<rsc:item name="project_id" row="<%=resultRow2%>"/>" class="statLink">Contest Details</A></TD>
         </TR>
         <%even=!even;%>
         </logic:iterate>
      </TABLE>
      </TD>
   </TR>
</table>

<% } else { %>
   This member has no rating history.
<% } %>

<% if (!bEmpty) { %>
   <% if (rsc2.croppedDataBefore() ||  rsc2.croppedDataAfter()) { %>
      <div class="pagingBox">
      <% if (rsc2.croppedDataBefore()) { %>
         <a href="/stat?c=ratings_history&cr=<%=pageContext.getAttribute("coder_id").toString() %>&sr=<%=pageContext.getAttribute("prev_sr").toString() %>&er=<%=pageContext.getAttribute("prev_er").toString() %>&nr=<%=pageContext.getAttribute("nr").toString() %><%=sortString%>" class="bcLink">&lt;&lt; previous</a>
      <% } else { %>
         &lt;&lt; previous
      <% } %>
         &nbsp;|&nbsp;
      <% if (rsc2.croppedDataAfter()) { %>
         <a href="/stat?c=atings_history&cr=<%=pageContext.getAttribute("coder_id").toString() %>&sr=<%=pageContext.getAttribute("next_sr").toString() %>&er=<%=pageContext.getAttribute("next_er").toString() %>&nr=<%=pageContext.getAttribute("nr").toString() %><%=sortString%>" class="bcLink">next &gt;&gt;</a>
      <% } else { %>
         next &gt;&gt;
      <% } %>
      </div>
   <% } %>
<% } %>

         <p><br></p>
         <!-- END BODY -->

       </TD>
       <td WIDTH="180" VALIGN="top">
         <jsp:include page="../public_right.jsp" >
             <jsp:param name="level1" value="profile"/>
         </jsp:include>
       </TD>
    <!-- Gutter -->
    <td WIDTH="10"><IMG SRC="/i/clear.gif" WIDTH="10" HEIGHT="1" border="0"/></TD>
    <!-- Gutter Ends -->
     </tr>
   </TABLE>
   <jsp:include page="../foot.jsp" />
 </BODY>
</HTML>