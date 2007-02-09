<%@ page import="com.jivesoftware.base.JiveConstants,
                 com.jivesoftware.forum.ReadTracker,
                 com.jivesoftware.forum.stats.ViewCountManager,
                 com.topcoder.web.forums.ForumConstants,
                 java.util.Iterator"
        %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib uri="tc-webtags.tld" prefix="tc-webtag" %>

<tc-webtag:useBean id="forumFactory" name="forumFactory" type="com.jivesoftware.forum.ForumFactory" toScope="request"/>
<tc-webtag:useBean id="user" name="user" type="com.jivesoftware.base.User" toScope="request"/>
<tc-webtag:useBean id="watchManager" name="watchManager" type="com.jivesoftware.forum.WatchManager" toScope="request"/>
<tc-webtag:useBean id="unreadCategories" name="unreadCategories" type="java.lang.String" toScope="request"/>
<jsp:useBean id="sessionInfo" class="com.topcoder.web.common.SessionInfo" scope="request"/>

<% ReadTracker readTracker = forumFactory.getReadTracker(); %>

<html>
<head>
    <title>TopCoder Forums</title>
    <jsp:include page="script.jsp"/>
    <jsp:include page="/style.jsp">
        <jsp:param name="key" value="tc_forums"/>
    </jsp:include>
</head>

<body>

<jsp:include page="top.jsp">
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

            <jsp:include page="page_title.jsp">
                <jsp:param name="image" value="forums"/>
                <jsp:param name="title" value="Watches"/>
            </jsp:include>

            <div class="topLinksL">
                <span class="rtbc"><a href="?module=Main" class="rtbcLink">Forums</a> <img src="/i/interface/exp_w.gif" align="absmiddle"/> My Watches </span><br><br>
            </div>

            <div class="topLinksR">
                <A href="?module=History" class="rtbcLink">My Post History</A>&#160;&#160;|&#160;&#160;<b>My Watches</b>&#160;&#160;|&#160;&#160;<A href="?module=Settings" class="rtbcLink">User
                Settings</A><br/>
            </div><br><br>
	
            All watch updates will be emailed to your email address: <b><%=user.getEmail()%></b>.
            Watches on content that hasn't been updated for more than 90 days will be automatically removed from your
            list.
            To prevent any watch from being automatically deleted, toggle the "Save" option.<br><br>
            
            <form name="form1" method="post" action="<%=sessionInfo.getServletPath()%>">
                <tc-webtag:hiddenInput name="module" value="Watches"/>
                <tc-webtag:hiddenInput name="<%=ForumConstants.WATCH_TYPE%>" value="<%=String.valueOf(JiveConstants.THREAD)%>"/>
                <tc-webtag:hiddenInput name="<%=ForumConstants.STATUS%>"/>
                <div style="padding-bottom:3px;"><b>Watched Threads (<%=watchManager.getTotalWatchCount(user, JiveConstants.THREAD)%>)</b></div>
                <table cellpadding="0" cellspacing="0" class="rtTable">
                    <tr>
                        <td class="rtHeader" width="70%">Thread</td>
                        <td class="rtHeader" width="30%">Author</td>
                        <td class="rtHeader" align="right">Replies</td>
                        <td class="rtHeader" align="right">Views</td>
                        <td class="rtHeader" align="center" colspan="2">Last Post</td>
                        <td class="rtHeader">Save</td>
                        <td class="rtHeader">Delete</td>
                    </tr>
                    <tc-webtag:iterator id="thread" type="com.jivesoftware.forum.ForumThread" iterator='<%=(Iterator)request.getAttribute("threads")%>'>
                        <tc-webtag:useBean id="rootMessage" name="thread" type="com.jivesoftware.forum.ForumMessage" toScope="page" property="rootMessage"/>
                        <tc-webtag:useBean id="latestMessage" name="thread" type="com.jivesoftware.forum.ForumMessage" toScope="page" property="latestMessage"/>
                        <tr>
                            <% String trackerClass = (user == null || readTracker.getReadStatus(user, latestMessage) == ReadTracker.READ) ? "rtLinkOld" : "rtLinkBold"; %>
                            <td class="rtThreadCellWrap">
                                <a href="?module=Message&<%=ForumConstants.MESSAGE_ID%>=<%=rootMessage.getID()%>" class="<%=trackerClass%>"><%=thread.getName()%></a>
                            </td>
                            <td class="rtThreadCell"><%if (rootMessage.getUser() != null) {%>
                                <tc-webtag:handle coderId="<%=rootMessage.getUser().getID()%>"/><%}%></td>
                            <td class="rtThreadCell" align="right"><%=thread.getMessageCount() - 1%></td>
                            <td class="rtThreadCell" align="right"><%=ViewCountManager.getInstance().getThreadCount(thread)%></td>
                            <td class="rtThreadCell"><b>
                                <tc-webtag:format object="${thread.modificationDate}" format="MMM d, yyyy h:mm a z" timeZone="${sessionInfo.timezone}"/></b>
                            </td>
                            <td class="rtThreadCell"><%if (latestMessage.getUser() != null) {%>
                                <tc-webtag:handle coderId="<%=latestMessage.getUser().getID()%>"/><%}%></td>
                            <td class="rtThreadCell" align="center">
                                <input name="<%=ForumConstants.STATUS_SAVE%><%=thread.getID()%>" value="<%=thread.getID()%>" type="checkbox"
                                        <%= (watchManager.getWatch(user, thread).isExpirable()) ? "" : "checked" %> onclick="Javascript:document.form1.<%=ForumConstants.STATUS_DELETE%><%=thread.getID()%>.checked=false;"/>
                            </td>
                            <td class="rtThreadCell" align="center">
                                <input name="<%=ForumConstants.STATUS_DELETE%><%=thread.getID()%>" value="<%=thread.getID()%>" type="checkbox"
                                       onclick="Javascript:document.form1.<%=ForumConstants.STATUS_SAVE%><%=thread.getID()%>.checked=false;"/>
                            </td>
                        </tr>
                    </tc-webtag:iterator>
                </table>

                <div align="right">
                    <input type="image" src="/i/roundTables/update.gif" alt="Update" onclick="form1.<%=ForumConstants.STATUS%>.value='<%=ForumConstants.STATUS_UPDATE%>'"/>
                </div>
            </form>

			<%	if (watchManager.getTotalWatchCount(user, JiveConstants.FORUM_CATEGORY) > 0) { %>
			<form name="form2" method="post" action="<%=sessionInfo.getServletPath()%>">
                <tc-webtag:hiddenInput name="module" value="Watches"/>
                <tc-webtag:hiddenInput name="<%=ForumConstants.WATCH_TYPE%>" value="<%=String.valueOf(JiveConstants.FORUM_CATEGORY)%>"/>
                <tc-webtag:hiddenInput name="<%=ForumConstants.STATUS%>"/>
                <div style="padding-bottom:3px;"><b>Watched Software Forums (<%=watchManager.getTotalWatchCount(user, JiveConstants.FORUM_CATEGORY)%>)</b></div>
                <table cellpadding="0" cellspacing="0" class="rtTable">
                    <tr>
                        <td class="rtHeader" width="100%">Category</td>
                        <td class="rtHeader" align="right">Threads</td>
                        <td class="rtHeader" align="right">Messages</td>
                        <td class="rtHeader" align="center" colspan="2">Last Post</td>
                        <td class="rtHeader">Save</td>
                        <td class="rtHeader">Delete</td>
                    </tr>
                    <tc-webtag:iterator id="category" type="com.jivesoftware.forum.ForumCategory" iterator='<%=(Iterator)request.getAttribute("categories")%>'>
                        <tc-webtag:useBean id="latestMessage" name="thread" type="com.jivesoftware.forum.ForumMessage" toScope="page" property="latestMessage"/>
                        <tr>
                            <% String trackerClass = (user == null || readTracker.getReadStatus(user, latestMessage) == ReadTracker.READ) ? "rtLinkOld" : "rtLinkBold"; %>
                            <td class="rtThreadCellWrap">
                                <a href="?module=Category&<%=ForumConstants.CATEGORY_ID%>=<%=category.getID()%>" class="<%=trackerClass%>"><%=category.getName()%></a>
                            </td>
                            <td class="rtThreadCell" align="right"><%=category.getThreadCount()%></td>
                            <td class="rtThreadCell" align="right"><%=category.getMessageCount()%></td>
                            <td class="rtThreadCell"><b>
                                <tc-webtag:format object="${category.modificationDate}" format="MMM d, yyyy h:mm a z" timeZone="${sessionInfo.timezone}"/></b>
                            </td>
                            <td class="rtThreadCell"><%if (latestMessage.getUser() != null) {%>
                                <tc-webtag:handle coderId="<%=latestMessage.getUser().getID()%>"/><%}%>
                            </td>
                            <td class="rtThreadCell" align="center">
                                <input name="<%=ForumConstants.STATUS_SAVE%><%=category.getID()%>" value="<%=category.getID()%>" type="checkbox"
                                        <%= (watchManager.getWatch(user, category).isExpirable()) ? "" : "checked" %> onclick="Javascript:document.form2.<%=ForumConstants.STATUS_DELETE%><%=category.getID()%>.checked=false;"/>
                            </td>
                            <td class="rtThreadCell" align="center">
                                <input name="<%=ForumConstants.STATUS_DELETE%><%=category.getID()%>" value="<%=category.getID()%>" type="checkbox"
                                       onclick="Javascript:document.form2.<%=ForumConstants.STATUS_SAVE%><%=category.getID()%>.checked=false;"/>
                            </td>
                        </tr>
                    </tc-webtag:iterator>
                </table>

                <div align="right">
                    <input type="image" src="/i/roundTables/update.gif" alt="Update" onclick="form2.<%=ForumConstants.STATUS%>.value='<%=ForumConstants.STATUS_UPDATE%>'"/>
                </div>                
            </form>
            <p><br/></p>
            <%	} %>
        </td>
        <!-- Center Column Ends -->

    </tr>
</table>

<jsp:include page="foot.jsp"/>

</body>

</html>