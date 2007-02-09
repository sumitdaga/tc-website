<%@ page import="com.topcoder.web.common.BaseServlet,
                 com.topcoder.web.forums.ForumConstants,
                 com.topcoder.web.forums.controller.ForumsUtil,
                 com.jivesoftware.forum.stats.ViewCountManager,
                 com.jivesoftware.forum.action.util.Page,
                 com.jivesoftware.base.JiveConstants,
                 com.jivesoftware.base.Group,
                 com.jivesoftware.forum.ResultFilter,
                 com.jivesoftware.forum.RatingManager,
                 com.jivesoftware.forum.RatingManagerFactory,
                 java.util.*,
                 com.topcoder.shared.util.DBMS"
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib uri="tc-webtags.tld" prefix="tc-webtag" %>

<tc-webtag:useBean id="authToken" name="authToken" type="com.jivesoftware.base.AuthToken" toScope="request"/>
<tc-webtag:useBean id="user" name="user" type="com.jivesoftware.base.User" toScope="request"/>
<tc-webtag:useBean id="forumFactory" name="forumFactory" type="com.jivesoftware.forum.ForumFactory" toScope="request"/>
<tc-webtag:useBean id="historyUser" name="historyUser" type="com.jivesoftware.base.User" toScope="request"/>
<tc-webtag:useBean id="paginator" name="paginator" type="com.jivesoftware.forum.action.util.Paginator" toScope="request"/>
<tc-webtag:useBean id="historyBean" name="historyBean" type="com.topcoder.web.ejb.messagehistory.MessageHistory" toScope="request"/>
<tc-webtag:useBean id="unreadCategories" name="unreadCategories" type="java.lang.String" toScope="request"/>

<%  RatingManager ratingManager = RatingManagerFactory.getInstance(authToken);
	
	String sortField = (String)request.getAttribute("sortField");
    String sortOrder = (String)request.getAttribute("sortOrder");
    
    StringBuffer linkBuffer = new StringBuffer("?module=History");
    linkBuffer.append("&").append(ForumConstants.USER_ID).append("=").append(historyUser.getID());
    
    StringBuffer messageLinkBuffer = new StringBuffer(linkBuffer.toString());
    StringBuffer dateLinkBuffer = new StringBuffer(linkBuffer.toString());
    messageLinkBuffer.append("&").append(ForumConstants.SORT_FIELD).append("=").append(JiveConstants.MESSAGE_SUBJECT);
    dateLinkBuffer.append("&").append(ForumConstants.SORT_FIELD).append("=").append(JiveConstants.MODIFICATION_DATE);
    if (sortField.equals(String.valueOf(JiveConstants.MESSAGE_SUBJECT))) {
        if (sortOrder.equals(String.valueOf(ResultFilter.ASCENDING))) {
            messageLinkBuffer.append("&").append(ForumConstants.SORT_ORDER).append("=").append(ResultFilter.DESCENDING);
        } else if (sortOrder.equals(String.valueOf(ResultFilter.DESCENDING))) {
            messageLinkBuffer.append("&").append(ForumConstants.SORT_ORDER).append("=").append(ResultFilter.ASCENDING);
        } else {  // default
            messageLinkBuffer.append("&").append(ForumConstants.SORT_ORDER).append("=").append(ResultFilter.ASCENDING);
        }
    } else {  // default
        messageLinkBuffer.append("&").append(ForumConstants.SORT_ORDER).append("=").append(ResultFilter.ASCENDING);
    }
    if (sortField.equals(String.valueOf(JiveConstants.MODIFICATION_DATE))) {
        if (sortOrder.equals(String.valueOf(ResultFilter.ASCENDING))) {
            dateLinkBuffer.append("&").append(ForumConstants.SORT_ORDER).append("=").append(ResultFilter.DESCENDING);
        } else if (sortOrder.equals(String.valueOf(ResultFilter.DESCENDING))) {
            dateLinkBuffer.append("&").append(ForumConstants.SORT_ORDER).append("=").append(ResultFilter.ASCENDING);
        } else {  // default
            dateLinkBuffer.append("&").append(ForumConstants.SORT_ORDER).append("=").append(ResultFilter.DESCENDING);
        }
    } else {  // default
        dateLinkBuffer.append("&").append(ForumConstants.SORT_ORDER).append("=").append(ResultFilter.DESCENDING);
    }
    String messageLink = messageLinkBuffer.toString();
    String dateLink = dateLinkBuffer.toString();

    if (!sortField.equals("")) {
        linkBuffer.append("&").append(ForumConstants.SORT_FIELD).append("=").append(sortField);
    }
    if (!sortOrder.equals("")) {
        linkBuffer.append("&").append(ForumConstants.SORT_ORDER).append("=").append(sortOrder);
    }
    String link = linkBuffer.toString();
%>

<html>
<head>
<title>TopCoder Forums</title>
    <jsp:include page="/script.jsp" />
        <jsp:include page="/style.jsp">
          <jsp:param name="key" value="tc_forums"/>
        </jsp:include>

</head>

<body>

<jsp:include page="top.jsp" >
    <jsp:param name="level1" value=""/>
</jsp:include>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
   <tr valign="top">

<!-- Left Column Begins-->
      <td width="180">
          <jsp:include page="includes/global_left.jsp">
             <jsp:param name="node" value="forums"/>
          </jsp:include>
      </td>
<!-- Left Column Ends -->


<!-- Center Column Begins -->
        <td width="100%" class="rtBody">

            <jsp:include page="page_title.jsp" >
                <jsp:param name="image" value="forums"/>
                <jsp:param name="title" value="Forum Post History"/>
            </jsp:include>


<table cellpadding="0" cellspacing="0" class="rtbcTable">
<tr>
   <div class="topLinksL">
   <strong><a href="?module=Main" class="rtbcLink">Forums</a> > Post History: <tc-webtag:handle coderId="<%=historyUser.getID()%>"/> (<%=ForumsUtil.display(forumFactory.getUserMessageCount(historyUser), "post")%>)</strong> 
   </div>
   <div class="topLinksR">
   <%  if (user.getUsername() == historyUser.getUsername()) { %>
   <b>My Post History</b>&#160;&#160;|&#160;&#160;<A href="?module=Watches" class="rtbcLink">My Watches</A>&#160;&#160;|&#160;&#160;<A href="?module=Settings" class="rtbcLink">User Settings</A><br>
   <%  } else { %>
   <A href="?module=History" class="rtbcLink">My Post History</A>&#160;&#160;|&#160;&#160;<A href="?module=Watches" class="rtbcLink">My Watches</A>&#160;&#160;|&#160;&#160;<A href="?module=Settings" class="rtbcLink">User Settings</A><br>
   <%  } %>
   </div>
</tr>
</table>
<br>
<% if (paginator.getNumPages() > 1) { %>
<table cellpadding="0" cellspacing="0" class="rtbcTable">
<tr>
   <td class="rtbc" align="right" nowrap="nowrap" style="padding-bottom:3px;"><b>
      <%  if (paginator.getPreviousPage()) { %>
         <A href="<%=link%>&<%=ForumConstants.START_IDX%>=<jsp:getProperty name="paginator" property="previousPageStart"/>" class="rtbcLink">
               << PREV</A>&#160;&#160;&#160;
        <%  } %> [
        <%  Page[] pages = paginator.getPages(5);
            for (int i=0; i<pages.length; i++) {
        %>  <%  if (pages[i] != null) { %>
                 <%  if (pages[i].getNumber() == paginator.getPageIndex()+1) { %>
                       <span class="currentPage"><%= pages[i].getNumber() %></span>
                 <%  } else { %>
                        <A href="<%=link%>&<%=ForumConstants.START_IDX%>=<%=pages[i].getStart()%>" class="rtbcLink">
                         <%= pages[i].getNumber() %></A>
                   <%  } %>
            <%  } %>
        <%  } %> ]
      <%  if (paginator.getNextPage()) { %>
         &#160;&#160;&#160;<A href="<%=link%>&<%=ForumConstants.START_IDX%>=<jsp:getProperty name="paginator" property="nextPageStart"/>" class="rtbcLink">NEXT ></A>
        <%  } %>
   </b>
   </td>
</tr>
</table>
<% } %>








<%--
<div class="topLinksL">
<span class="rtbc"><a href="?module=Main" class="rtbcLink">Forums</a> > Post History: <tc-webtag:handle coderId="<%=historyUser.getID()%>"/> (<%=ForumsUtil.display(forumFactory.getUserMessageCount(historyUser), "post")%>) </span><br><br>
</div>
<div class="topLinksR">
<%  if (user.getUsername() == historyUser.getUsername()) { %>
<b>My Post History</b>&#160;&#160;|&#160;&#160;<A href="?module=Watches" class="rtbcLink">My Watches</A>&#160;&#160;|&#160;&#160;<A href="?module=Settings" class="rtbcLink">User Settings</A><br>
<%  } else { %>
<A href="?module=History" class="rtbcLink">My Post History</A>&#160;&#160;|&#160;&#160;<A href="?module=Watches" class="rtbcLink">My Watches</A>&#160;&#160;|&#160;&#160;<A href="?module=Settings" class="rtbcLink">User Settings</A><br>
<%  } %>
</div>

<br><br>
<table cellpadding="0" cellspacing="0" class="rtbcTable">
   <tr>
<% if (paginator.getNumPages() > 1) { %>
   <td class="rtbc" align="right" nowrap="nowrap" style="padding-bottom:3px;"><b>
      <%  if (paginator.getPreviousPage()) { %>
         <A href="<%=link%>&<%=ForumConstants.START_IDX%>=<jsp:getProperty name="paginator" property="previousPageStart"/>" class="rtbcLink">
               << PREV</A>&#160;&#160;&#160;
        <%  } %> [
        <%  Page[] pages = paginator.getPages(5);
            for (int i=0; i<pages.length; i++) {
        %>  <%  if (pages[i] != null) { %>
                 <%  if (pages[i].getNumber() == paginator.getPageIndex()+1) { %>
                       <span class="currentPage"><%= pages[i].getNumber() %></span>
                 <%  } else { %>
                        <A href="<%=link%>&<%=ForumConstants.START_IDX%>=<%=pages[i].getStart()%>" class="rtbcLink">
                         <%= pages[i].getNumber() %></A>
                   <%  } %>
            <%  } %>
        <%  } %> ]
      <%  if (paginator.getNextPage()) { %>
         &#160;&#160;&#160;<A href="<%=link%>&<%=ForumConstants.START_IDX%>=<jsp:getProperty name="paginator" property="nextPageStart"/>" class="rtbcLink">NEXT></A>
        <%  } %>
   </b></td></tr>
<% } %>
</table>
--%>
<table cellpadding="0" cellspacing="0" class="rtTable">
    <tr>
    	<td class="rtHeader" width="100%"><a href="<%=messageLink%>" class="rtbcLink">Post</a></td>
    	<%  if (ratingManager.isRatingsEnabled() && user != null && ForumsUtil.showRatings(user)) { %>
        	<td class="rtHeader" align="right" width="15%">Score</td>
        <%	} %>
        <td class="rtHeader" width="25%">Forum</td>
        <td class="rtHeader" width="15%"><a href="<%=dateLink%>" class="rtbcLink">Date</a></td>
        <td class="rtHeader" align="right" width="5%">Replies</td>
        <td class="rtHeader" align="right" width="5%">Edits</td>
    </tr>
   <tc-webtag:iterator id="message" type="com.jivesoftware.forum.ForumMessage" iterator='<%=(Iterator)request.getAttribute("messages")%>'>
   <tr>
         <td class="rtThreadCellWrap"><A href="?module=Message&<%=ForumConstants.MESSAGE_ID%>=<jsp:getProperty name="message" property="ID"/>" class="rtbcLink"><jsp:getProperty name="message" property="subject"/></A>
         <%   if (message.getParentMessage() != null) { %>
            (response to <A href="?module=Message&<%=ForumConstants.MESSAGE_ID%>=<%=message.getParentMessage().getID()%>" class="rtbcLink">post</A><%if (message.getParentMessage().getUser() != null) {%> by <tc-webtag:handle coderId="<%=message.getParentMessage().getUser().getID()%>"/> (<A href="?module=History&<%=ForumConstants.USER_ID%>=<%=message.getParentMessage().getUser().getID()%>" alt="Post history for <%=message.getParentMessage().getUser().getUsername()%>" class="rtbcLink"/>history</A>)<%}%>)
      	 <%   } %></td>
      	 <%  if (ratingManager.isRatingsEnabled() && user != null && ForumsUtil.showRatings(user)) { 
         	 	int[] ratings = ForumsUtil.getRatings(ratingManager, message);
             	int posRatings = ratings[0];
             	int negRatings = ratings[1]; %>
         	<td class="rtThreadCell" align="right"><A href="?module=Message&<%=ForumConstants.MESSAGE_ID%>=<jsp:getProperty name="message" property="ID"/>" class="rtbcLink">+<%=posRatings%>/-<%=negRatings%></a></td>
         <%	  } %>
         <td class="rtThreadCell"><A href="?module=ThreadList&<%=ForumConstants.FORUM_ID%>=<%=message.getForum().getID()%>&mc=<%=message.getForum().getMessageCount()%>" class="rtbcLink"><%=message.getForum().getName()%></A></td>
         <td class="rtThreadCell"><strong><tc-webtag:beanWrite name="message" property="modificationDate" format="MMM d, yyyy h:mm a z"/></strong></td>
         <td class="rtThreadCell" align="right"><%=message.getForumThread().getTreeWalker().getRecursiveChildCount(message)%></td>
         <td class="rtThreadCell" align="right"><A href="?module=RevisionHistory&<%=ForumConstants.MESSAGE_ID%>=<%=message.getID()%>" class="rtbcLink"><%=historyBean.getEditCount(message.getID(), DBMS.FORUMS_DATASOURCE_NAME)%></A></td>
    </tr>
   </tc-webtag:iterator>
</table>

<%  Group admins = forumFactory.getGroupManager().getGroup("TopCoder Admins");
    Group architects = forumFactory.getGroupManager().getGroup("TopCoder Architects");
    if ((admins != null && admins.isMember(historyUser)) || 
        (architects != null && architects.isMember(historyUser))) { %>
<table cellpadding="0" cellspacing="0" class="rtbcTable">
    <tr>
        <td>Posts from internal and restricted forums are not displayed in post history.</td>
    </tr>
</table>
<%  } %>

        </td>
<!-- Center Column Ends -->

    </tr>
</table>

<jsp:include page="foot.jsp" />

</body>

</html>