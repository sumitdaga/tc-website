<%@ page import="com.topcoder.shared.dataAccess.resultSet.ResultSetContainer,
                 java.util.Map,
                 com.topcoder.shared.dataAccess.DataAccessConstants,
                 com.topcoder.shared.util.ApplicationServer"%>
<%@  page language="java"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<title>Design Tutorial</title>

<jsp:include page="/script.jsp" />
<jsp:include page="/style.jsp">
  <jsp:param name="key" value="tc_stats"/>
</jsp:include>

</head>

<body>

<jsp:include page="../../top.jsp" >
    <jsp:param name="level1" value="development"/>
</jsp:include>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
   <tr valign="top">
<!-- Left Column Begins-->
        <td width="180">
         <jsp:include page="/includes/global_left.jsp">
            <jsp:param name="node" value="des_getting_started"/>
         </jsp:include>
        </td>
<!-- Left Column Ends -->

<!-- Gutter Begins -->
        <td width="15"><img src="/i/clear.gif" width="15" height="1" border="0"/></td>
<!-- Gutter Ends -->

<!-- Center Column Begins -->
<td class="bodyText" WIDTH="100%"><img src="/i/clear.gif" width="400" height="1" vspace="5" border="0"><br />

<div align="center">
   <div style="width:500px; text-align:left;">
<h2>Getting Started in Design Competitions</h2>

<p><br/><span class="bodySubtitle">Step 1 - Read the TopCoder Component Design Tutorial</span><br/>
Read the <a href="/tc?module=Static&amp;d1=dev&amp;d2=support&amp;d3=desTutorial">Component Design Tutorial</a>.
This page is a tutorial for developers new to the TopCoder component development methodology and environment.</p>

<p><span class="bodySubtitle">Step 2 - Install the necessary Software</span><br/>
In order to view designs you will need to have a UML tool installed.  TopCoder members currently use the free version of <a href="http://www.gentleware.com/">Poseidon</a>.</p>

<p><span class="bodySubtitle">Step 3 - View Sample Component and Documentation</span><br/>
Download and get familiar with some <a href="http://software.topcoder.com/catalog/index.jsp">existing components</a>.</p>

<p><span class="bodySubtitle">Step 4 - Choose a component to design</span><br/>
On the <a href="/tc?module=ViewActiveContests&ph=112">Active Contests</a> page you will see a list of design projects available.  Click on a particular component, and then read the Project definition.  In addition to reading the project definition read the component requirements specification.  The link to the requirement specifications should exist on the component project definition page.</p>

<p><span class="bodySubtitle">Step 5 - Register for the component</span><br/>
Now that you have found a component you would like to design you must register for the component.  On the component definition page there is a "Register for this Component" link.  Regsiter and agree to the terms.</p>

<p><span class="bodySubtitle">Step 6 - Check out the Developer Forum</span><br/>
Upon registering for the project you will be granted access to the developer forum for that specific project.  The forum link will be in a confirmation email you receive from service@topcodersoftware.com.</p>

<p><span class="bodySubtitle">Step 7 - Download the Development Distribution</span><br/>
When you go to the developer forum for the project download the Design Distribution for that component.  Read through the docs and get familiar with the requirements.</p>

<p><span class="bodySubtitle">Step 8 - Read the TopCoder Software Member Guide</span><br/>
Download the <a href="http://www.topcoder.com/i/development/downloads/TopCoder_Software_Member_Guide.pdf" target="_blank">Software Member Guide</a>.  This document is a guide for developers new to the TopCoder component development methodology and environment. It will guide you through the required elements for submission.</p>

<p><span class="bodySubtitle">Step 9 - Complete the Requirements</span><br/>
Complete all of the necessary elements to the project as specified in the Member guide tutorial for design.</p>

<p><span class="bodySubtitle">Step 10 - Submit</span><br/>
<a href="http://software.topcoder.com/review/login.jsp">Login</a> to Project Submit and Review and submit your submission.</p>
            <p><br/></p>
   </div>
</div>

        </td>
<!-- Center Column Ends -->

<!-- Gutter -->
         <td width="15"><img src="/i/clear.gif" width="15" height="1" border="0"></td>
<!-- Gutter Ends -->

<!-- Right Column Begins -->
         <td width="180">
            <jsp:include page="../right.jsp"/>
         </td>
<!-- Right Column Ends -->

<!-- Gutter -->
         <td width="2"><img src="/i/clear.gif" width="2" height="1" border="0"></td>
<!-- Gutter Ends -->

    </tr>
</table>

<jsp:include page="../../foot.jsp" />

</body>

</html>
