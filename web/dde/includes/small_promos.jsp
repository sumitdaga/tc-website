<%@ page import="com.topcoder.shared.util.ApplicationServer" %>
<%@ page import="com.topcoder.shared.util.TCResourceBundle" %>

<%	TCResourceBundle bundle = new TCResourceBundle("TC");
	long tcsForumsID = Long.parseLong(bundle.getProperty("tcs_forums_root_category_id")); %>
                <tr>
                    <td class="bodyText" width="170" height="120"><a href="/components/subscriptions.jsp" target="_top"><img src="/images/promos/home_subscriptions.gif" alt="Component Subscriptions" border="0"></a></td>
                    <td class="bodyText" width="170" height="120"><a href="/catalog/index.jsp" target="_top"><img src="/images/promos/home_catalog.gif" alt="Component Catalog" border="0"></a></td>
                    <td class="bodyText" width="170" height="120"><a href="http://<%=ApplicationServer.FORUMS_SERVER_NAME%>/?module=Category&categoryID=<%=tcsForumsID%>"> target="_top"><img src="/images/promos/home_forums.gif" alt="Software Forums" border="0"></a></td>
                </tr>
