<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<title>Technical Assessment</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<link type="text/css" rel="stylesheet" href="/css/screening.css" >
</head>
<body>

<table class=bodyCenter cellspacing=0 cellpadding=0>
   <tr>
      <td align=center>

<%-- TITLE/CLOCK --%>
      <jsp:include page="time.jsp" >
         <jsp:param name="timer" value="off"/>
      </jsp:include>

      <table cellspacing=0 cellpadding=0 class=bodyTable>
         <tr>
            <td><img src="/i/corp/screening/bodyTL.gif" alt=""/></td>
            <td class=bodyT colspan=2>&#160;</td>
            <td><img src="/i/corp/screening/bodyTR.gif" alt=""/></td>
         </tr>
         <tr>
            <td class=bodyL>&#160;</td>
<%-- LEFT NAV --%>
            <td class=bodyNav>
            <jsp:include page="helpLeft.jsp" >
                <jsp:param name="selected" value="testingApp"/>
            </jsp:include>
            </td>

<%-- CONTENT --%>
            <td class=bodyContent>

            <p class=pL>
            <span class=bodyBigTitle>Loading the Technical Assessment Application</span>
            <br /><br />

            The Technical Assessment Application is a Java Applet that requires the Java 1.4 runtime to be installed on your machine.  Load the
            application by using the URL that has been provided to you.  Once you click on the URL, you will be notified if you need to
            upgrade your Java runtime.  If so, please follow the steps of the installation wizard to upgrade your system.  If an upgrade
            is not required, the application will load automatically and present you with an orange <strong>Launch Technical Assessment</strong> button.
            <br><br>
            Get further information on <a href="http://java.sun.com/products/plugin/" target="_blank">Java 1.4 runtime</a>

            </p>

            </td>
            <td class=bodyR>&#160;</td>
         </tr>
         <tr>
            <td><img src="/i/corp/screening/bodyBL.gif" alt=""/></td>
            <td class=bodyB colspan=2>&#160;</td>
            <td><img src="/i/corp/screening/bodyBR.gif" alt=""/></td>
         </tr>
      </table>


      </td>
   </tr>
</table>

</body>
</html>