<%@ page contentType="text/html;charset=utf-8" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>2007 TopCoder Open - Computer Programming Tournament</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link type="image/x-icon" rel="shortcut icon" href="/i/favicon.ico"/>
    <link type="text/css" rel="stylesheet" href="/css/tournaments/tco07.css"/>
    <link type="text/css" rel="stylesheet" href="/css/coders.css"/>
    <jsp:include page="../../script.jsp" />
</head>
<body>

<div align="center" style="background: transparent;">
    <div id="content">

        <jsp:include page="header.jsp" />

        <table cellpadding="0" cellspacing="0" id="spacer">
        <tbody>
            <tr>
                <td id="navSpacer">

                    <jsp:include page="sponsorNav.jsp" >
                    <jsp:param name="tabLev1" value="sponsortrack"/>
                    <jsp:param name="tabLev2" value="arena"/>
                    <jsp:param name="tabLev3" value=""/>
                    </jsp:include>

                </td>
                <td id="bodySpacer" width="100%">
                   <%-- <img src="/i/tournament/tco07/competitorsbanner.jpg" alt="Competitors" />--%>
                    <div id="pageBody">
                        <h1><div>Competition Arena</div></h1>

<p>Click <a href="Javascript:openWin('?module=Static&d1=tournaments&d2=tco07&d3=sponsortrack&d4=quick_launch','comp',300,275);">here</a> to run the Competition Arena as a <a href="Javascript:openWin('?module=Static&d1=tournaments&d2=tccc06&d3=spon_quick_launch','comp',300,275);">Java Applet</A>.</p>
<p>Click <a href="/contest/arena/ContestAppletSponsor.jnlp" target="_blank">here</a> to run the Competition Arena as a <a href="/contest/arena/ContestAppletSponsor.jnlp" target="_blank">Java Web Start Application</A>.</p>

<p>Note:  If you wish to install Java Web Start click <a href="http://java.sun.com/products/javawebstart/index.html" target="_blank">here</a>.  </p>
<p>If you experience problems loading or running the Competition Arena please contact  <A href="mailto:service@topcoder.com">service@topcoder.com</A>.
<br><br><br><br><br><br><br><br></p>

<p>See the official <A href="/tc?module=Static&d1=tournaments&d2=tco07&d3=sponsortrack&d4=rules">rules and regulations</A> for more details.
<br><br><br><br><br><br><br><br><br><br><br><br></p>
                    </div>
                </td>
            </tr>
        </table>


        <jsp:include page="footer.jsp" />
    </div>
</div>

</body>

</html>
