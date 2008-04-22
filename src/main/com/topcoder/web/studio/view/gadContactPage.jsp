<%@ page import="com.topcoder.web.common.BaseServlet" %>
<%@ page import="java.util.Date" %>
<%@ page isErrorPage="true" %>
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <link type="image/x-icon" rel="shortcut icon" href="/i/favicon.ico"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>TopCoder Studio</title>
    <jsp:include page="style.jsp">
        <jsp:param name="key" value="tc_studio"/>
    </jsp:include>
</head>

<body>
    <!-- wrapper -->
    <div id="wrapper">
        <!-- header -->
        <div id="header">
            <jsp:include page="top.jsp"/>
            <jsp:include page="topNav.jsp">
                <jsp:param name="node" value=""/>
            </jsp:include>
        </div>
        <!-- container -->
        <div id="container">
            <!-- content -->
            <div id="content">
                <div class="contentTop">
                    <div class="contentMiddle">

                <h1>Send Assignment Document</h1>

                <div align="center">
                    <div style="width:500px; padding: 50px 0px 100px 0px; text-align:left;">
                        <p><strong>You can email it to us at:</strong><br /><br />
                        <a href="mailto:payments@topcoder.com?subject=Assignment Document">payments@topcoder.com</a><br /><br />
                        <strong>You can also send it to us by mail at:</strong><br /><br />
                        TopCoder, Inc.<br />
                        95 Glastonbury Blvd<br />
                        Glastonbury, CT 06033 U.S.A.<br /><br />
                        <strong>You can also send it to us by fax at:</strong><br /><br />
                        860.657.4276<br /><br />
                        Upon receipt, the Assignment Document is processed immediately in order of arrival. You can view the status of your assignment document <a href="${sessionInfo.servletPath}?module=AssignmentDocumentHistory">here</a>.</p>
                    </div>
                    <%=new Date().toString()%>
                </div>

                        <br clear="all"/>
                    </div>                
                    <div class="contentBottom"></div>
                </div>
            </div>
        </div>

        <jsp:include page="foot.jsp"/>

    </div>
</body>
</html>