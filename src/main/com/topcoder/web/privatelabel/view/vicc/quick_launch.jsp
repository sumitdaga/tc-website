<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html id="quickLaunch">

<head>

    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Competition Arena</title>

    <jsp:include page="../script.jsp"/>

    <SCRIPT type="text/javascript">
        function getReq() {
            u = '?module=Static&d1=faq&d2=soft_req';
            window.open(u);
            close();
        }
    </SCRIPT>

</head>

<body>

<table width="100%" cellspacing="0" cellpadding="10" border="0">
    <tr>
        <td class="bodyText" width="100%">
            <h2>Competition Arena</h2>

            <p>This page should present you with a button to start the competition arena applet.</p>

            <p>NOTE: If a red button to "Load Competition Arena" does <strong>not</strong> appear below, you may not
                have the appropriate
                Plug-in software installed.</p>

            <div align="center">
                <OBJECT classid="clsid:8AD9C840-044E-11D1-B3E9-00805F499D93"
                        width="239"
                        height="26"
                        name="LaunchApplet"
                        align="middle"
                        vspace="0"
                        hspace="0"
                        codebase="http://java.sun.com/update/1.5.0/jinstall-1_5-windows-i586.cab#Version=1,5,0,0"
                <PARAM value="LaunchApplet" name="name">
                <PARAM value="com.topcoder.client.contestApplet.LaunchApplet.class" name="code">
                <PARAM name="codebase" value="http://www.topcoder.com/contest/classes">
                <PARAM value="VeriSignContestApplet.jar" name="archive">
                <PARAM value="application/x-java-applet;version=1.5" name="type">
                <PARAM value="false" name="scriptable">
                <PARAM name="host" value="www.topcoder.com">
                <PARAM name="port" value="8001">
                <PARAM name="tunnel" value="http://tunnel2.topcoder.com/servlets-examples/tunnel?host~newlistener&port~8001">
                <PARAM name="companyName" value="VeriSign">
                <PARAM name="poweredbyview" value="true">
                <PARAM name="com.topcoder.client.contestApplet.editors.NoPluginManager" value="true">

                <EMBED type="application/x-java-applet;version=1.5"
                       code="com.topcoder.client.contestApplet.LaunchApplet.class"
                       codebase="http://www.topcoder.com/contest/classes"
                       name="LaunchApplet"
                       archive="VeriSignContestApplet.jar"
                       host="www.topcoder.com"
                       port="8001"
                       tunnel="http://tunnel2.topcoder.com/servlets-examples/tunnel?host~newlistener&port~8001"
                       companyName="VeriSign"
                       poweredbyview="true"
                       com.topcoder.client.contestApplet.editors.NoPluginManager="true"
                       width="239"
                       height="26"
                       align="middle"
                       vspace="0"
                       hspace="0"
                       scriptable="false"
                       pluginspage="http://java.sun.com/j2se/1.5/jre/index.html">
                    <NOEMBED>
                    </NOEMBED>
                </EMBED>
            </OBJECT>
        </div>
        <p><strong>You may minimize this browser window, but do not close it.</strong> Doing so will close the applet.
        </p>
    </td>
</tr>
</table>

</body>

</html>
