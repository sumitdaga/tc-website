<%@ page contentType="text/html; charset=ISO-8859-1"
         import="com.topcoder.web.corp.Constants,
                 com.topcoder.web.corp.controller.TransactionServlet"
         %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Recruiting, Testing and User Management at TopCoder Employment Services</title>

<jsp:include page="includes/css.jsp" />

<script language="JavaScript" type="text/javascript" src="/js/script.js"></script>

</head>

<body>

<!-- Top begins -->
<jsp:include page="includes/top.jsp" >
    <jsp:param name="level1" value="employment_services"/>
</jsp:include>

</jsp:include>
<!-- Top ends -->

<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr valign="top">

<!-- Left Column Begins -->
        <td width="170">
            <jsp:include page="includes/left.jsp">
                <jsp:param name="level1" value="tces"/>
                <jsp:param name="level2" value="overview"/> 
            </jsp:include>
        </td>
<!-- Left Column Ends -->

<!-- Gutter Begins -->
        <td width="15"><img src="/i/clear.gif" width="15" height="1" border="0"/></td>
<!-- Gutter Ends -->

<!-- Center Column begins -->
        <td width="100%">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">

                <tr valign="top">
                    <td class="bodyText" width="99%">
                        <img src="/i/corp/clear.gif" width="1" height="10" alt="" border="0">
                        
                    <div align="center"><img src="/i/corp/tces_header.jpg" width="530" height="173" alt="" border="0"></div>
                      
                      <p>TopCoder has created an online venue that brings together some of the most talented developers from over 
                      160 countries around the world.  This enterprising group of over 38,000 developers joins TopCoder to compete 
                      against, learn from and interact with one another.  For those companies looking to hire developers, we offer 
                      a variety of employment services.  Our competition model ensures that the best candidates are separated from the rest.</p>
                      
                      <p><span class="bodySubtitle"><a href="/corp/?module=Static&d1=corp&d2=spon_prog&d3=tourny_index">Tournament Sponsorship</a></span><br>
                      TopCoder conducts global programming tournaments involving thousands of developers, the latest technologies, energy and 
                      excitement not seen in any other online venue in the software world.  The finals for these events are large gatherings 
                      of proven and recognizable software developers.  Whether you want to hire developers at the professional or college 
                      level, sponsoring TopCoder tournaments is the most effective way to reach the development community.</p>
                      
                      <p><img src="/i/corp/quote_nvidia.gif" width="273" height="170" alt="" border="0" align="right"><span class="bodySubtitle">
                      <a href="/corp/?module=Static&d1=corp&d2=private_label&d3=index">Private Label Events</a></span><br>
                      Whether your company seeks to identify and recruit the best talent or develop and recognize employees, TopCoder can provide 
                      expertise and experience in executing online and onsite events.</p>

                        <p><span class="bodySubtitle"><a href="/corp/?module=Static&d1=corp&d2=testing&d3=index">Testing</a></span><br>
                        The TopCoder Testing Program allows companies to test the technical abilities of candidates during the interview 
                        process, thereby reducing the time incurred by in-house engineers. Employers can choose problem sets to test candidates' 
                        problem solving skills with scenarios that mirror on-the-job issues.</p>
	
                        <p><span class="bodySubtitle">Client list</span><br></p>
                        
                        <table width="100%" border="0" cellpadding="5" cellspacing="0">
                        	<tr>
                        		<td><img src="/i/corp/tcesclient_yahoo.gif" width="132" height="50" alt="" border="0" align="right"></td>
                        		<td><img src="/i/corp/tcesclient_nvidia.gif" width="132" height="50" alt="" border="0" align="right"></td>
                        		<td><img src="/i/corp/tcesclient_paypal.gif" width="132" height="50" alt="" border="0" align="right"></td>
                        		<td><img src="/i/corp/tcesclient_google.gif" width="132" height="50" alt="" border="0" align="right"></td>
                        	</tr>
                        	<tr>
                        		<td><img src="/i/corp/tcesclient_microsoft.gif" width="132" height="50" alt="" border="0" align="right"></td>
                        		<td><img src="/i/corp/tcesclient_fbi.gif" width="132" height="50" alt="" border="0" align="right"></td>
                        		<td><img src="/i/corp/tcesclient_verizon.gif" width="132" height="50" alt="" border="0" align="right"></td>
                        		<td><img src="/i/corp/tcesclient_doubleclick.gif" width="132" height="50" alt="" border="0" align="right"></td>
                        	</tr>
                        	<tr>
                        		<td><img src="/i/corp/tcesclient_cryptic.gif" width="132" height="50" alt="" border="0" align="right"></td>
                        		<td><img src="/i/corp/tcesclient_amazon.gif" width="132" height="50" alt="" border="0" align="right"></td>
                        		<td><img src="/i/corp/tcesclient_apex.gif" width="132" height="50" alt="" border="0" align="right"></td>
                        		<td><img src="/i/corp/tcesclient_appian.gif" width="132" height="50" alt="" border="0" align="right"></td>
                        	</tr>
                        </table>
                        
                        <p><br></p>
                        
                        <p>For more information, contact Paul Moriarty at <a href="mailto:tces@topcoder.com?subject=TCES Request For Information">tces@topcoder.com</a> or 866.TOP.CODE</p>

                        <p><br></p>
                    </td>

<!-- Gutter -->
         <td width="15"><img src="/i/clear.gif" width="15" height="1" border="0"></td>
<!-- Gutter Ends -->

<!-- Right Column begins -->
                    <jsp:include page="../right.jsp">
                        <jsp:param name="level1" value="tces_home"/>
                    </jsp:include>
<!-- Right Column ends -->

                </tr>
            </table>
        </td>
<!-- Center Column ends -->

    </tr>
</table>

<!-- Footer begins -->
  <jsp:include page="../foot.jsp"/>
<!-- Footer ends -->

</body>
</html>
