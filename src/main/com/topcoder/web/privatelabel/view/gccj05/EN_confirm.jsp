﻿<%@ page import="com.topcoder.web.privatelabel.Constants,
                 java.util.List,
                 java.util.Map"%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib uri="tc-webtags.tld" prefix="tc-webtag" %>
<%@ taglib uri="privatelabel.tld" prefix="pl" %>
<jsp:useBean id="sessionInfo" class="com.topcoder.web.common.SessionInfo" scope="request" />
<jsp:useBean id="regInfo" class="com.topcoder.web.privatelabel.model.ResumeRegInfo" scope="session" />
<% List responseList = (List)request.getAttribute("responseList");%>
<% Map questionMap = (Map)request.getAttribute("questionMap");%>
<html>
<head>
<link type="text/css" rel="stylesheet" class="bodyText_link" href="/css/style.css"/>
<link type="text/css" rel="stylesheet" class="bodyText_link" href="/css/gccj05.css"/>
    <link type="image/x-icon" rel="shortcut icon" href="/i/favicon.ico"/>
<title>Google China Code Jam 2005, Powered by TopCoder</title>
</head>
<body>


<table border="0" width=100% cellpadding=0 cellspacing=0>
   <tr>
      <td width="49%">&#160;</td>
      <td align="center">
         <table border="0" width=100% cellpadding=0 cellspacing=0>
            <tr>
               <td width="49%"></td>
               <td valign="bottom" align="center"><img border="0" src="/i/events/gccj05/gccj05_logo.gif" alt="Google China Code Jam logo"></td>
               <td width="49%"></td>
            </tr>
         </table>
      </td>
      <td width="49%"></td>
   </tr>
   <tr>
      <td width="49%">&#160;</td>
      <td>
         <div class=greenBigBox>

         <!-- Tab bar links-->
         <div align="center">
         <jsp:include page="EN_links.jsp" >
         <jsp:param name="selectedTab" value="registration"/>
         </jsp:include>
         </div>

         <br><br>

         <span class="bigTitle">Registration</span>
         <span valign=top>
         <jsp:include page="EN_right_reg.jsp" />
         </span>

         <br><br>
            <table width="100%" cellpadding="0" cellspacing="5" class="bodyText" align="center" >
           <form action="<jsp:getProperty name="sessionInfo" property="servletPath"/>" method="POST" name="regForm">
            <input type="hidden" name="<%=Constants.MODULE_KEY%>" value="<%=Constants.GOOGLE_CHINA_05_REG_SUBMIT%>"/>
            <input type="hidden" name="<%=Constants.COMPANY_ID%>" value="<jsp:getProperty name="regInfo" property="companyId"/>"/>
            <input type="hidden" name="<%=Constants.EVENT_ID%>" value="<jsp:getProperty name="regInfo" property="eventId"/>"/>

            <tr>
                 <td align="right" width="50%"><b>Personal</b>
                 </td>
                <td align="left" width="50%">
                    <a href="<jsp:getProperty name="sessionInfo" property="servletPath"/>?<%=Constants.MODULE_KEY%>=<%=Constants.GOOGLE_CHINA_05_REG_MAIN%>&<%=Constants.COMPANY_ID%>=<jsp:getProperty name="regInfo" property="companyId"/>">edit<a/>
                </td>
            </tr>
            <tr>
                <td align="right" nowrap>
                    Handle
                </td>
                <td align="left">
                    <jsp:getProperty name="regInfo" property="handle"/>
                </td>
            </tr>

            <tr>
                <td align="right" nowrap>
                    First Name
                </td>
                <td align="left">
                    <jsp:getProperty name="regInfo" property="firstName"/>
                </td>
            </tr>

            <tr>
                <td align="right" nowrap>
                    Last Name
                </td>
                <td align="left">
                    <jsp:getProperty name="regInfo" property="lastName"/>
                </td>
            </tr>

            <tr>
                <td align="right" nowrap>
                    Email Address
                </td>
                <td align="left">
                    <jsp:getProperty name="regInfo" property="email"/>
                </td>
            </tr>

            <tr>
                <td align="right" nowrap>
                    Confirm Email Address
                </td>
                <td align="left">
                    <jsp:getProperty name="regInfo" property="emailConfirm"/>
                </td>
            </tr>

            <tr>
                <td align="right" nowrap>
                    Address 1
                </td>
                <td align="left">
                    <jsp:getProperty name="regInfo" property="address1"/>
                </td>
            </tr>

            <tr>
                <td align="right" nowrap>
                    Address 2
                </td>
                <td align="left">
                    <jsp:getProperty name="regInfo" property="address2"/>
                </td>
            </tr>

            <tr>
                <td align="right" nowrap>
                    Address 3
                </td>
                <td align="left">
                    <jsp:getProperty name="regInfo" property="address3"/>
                </td>
            </tr>

            <tr>
                <td align="right" nowrap>
                    City
                </td>
                <td align="left">
                    <jsp:getProperty name="regInfo" property="city"/>
                </td>
            </tr>

            <tr>
                <td align="right" nowrap>
                    Province
                </td>
                <td align="left">
                    <jsp:getProperty name="regInfo" property="province"/>
                </td>
            </tr>

            <tr>
                <td align="right" nowrap>
                    PIN/Zip Code
                </td>
                <td align="left">
                    <jsp:getProperty name="regInfo" property="zip"/>
                </td>
            </tr>

            <tr>
                <td align="right" nowrap>
                    Country
                </td>
                <td align="left">
                    <jsp:getProperty name="regInfo" property="countryName"/>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <b>Demographics</b>
                </td>
                <td align="left">
                    <a href="<jsp:getProperty name="sessionInfo" property="servletPath"/>?<%=Constants.MODULE_KEY%>=<%=Constants.GOOGLE_CHINA_05_REG_DEMOG%>&<%=Constants.COMPANY_ID%>=<jsp:getProperty name="regInfo" property="companyId"/>">edit</a>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">

                </td>
            </tr>

            <tr>
                <td align="right" nowrap>
                    Student/Professional
                </td>
                <td align="left">
                    <%=regInfo.isStudent()?"Student":"Professional"%>
                </td>
            </tr>

            <pl:responseIterator id="resp" list="<%=responseList%>">
                <tr>
                    <td align="right" nowrap>
                        <pl:demographicQuestionText questions="<%=questionMap%>" response="<%=resp%>"/>
                    </td>
                    <td align="left">
                        <pl:demographicAnswerText questions="<%=questionMap%>" response="<%=resp%>"/>
                    </td>
                </tr>
            </pl:responseIterator>

            <tr>
                            <td align="right" nowrap>Resume</td>
                            <td align="left"><jsp:getProperty name="regInfo" property="uploadStatus"/></td>
                        </tr>
            <tr>
               <td colspan="2" align="center">
                  <p align="center"><a href="javascript: document.regForm.submit();">Submit</a></p>
               </td>
            </tr>

         </form>
         </table>

         <br><br>
         <br><br>
         To find out more detailed information about the Google China Code Jam 2005, including a list of the prizes, please read the <a href="/pl/?module=Static&d1=gccj05&d2=EN_rules">Terms and Conditions</a>.
         </div>
      </td>
      <td width="49%">&#160;</td>
   <tr>
</table>
<jsp:include page="EN_foot.jsp" />
</body>
</html>

