<%@ page import="com.topcoder.web.reg.Constants" %>
<%@ page import="com.topcoder.web.common.StringUtils"%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="tc-webtags" prefix="tc-webtag" %>
<%@ taglib uri="common-functions" prefix="cf" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <link type="image/x-icon" rel="shortcut icon" href="/i/favicon.ico"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>TopCoder Registration</title>
    <jsp:include page="/script.jsp"/>
    <jsp:include page="/style.jsp">
        <jsp:param name="key" value="tc_reg"/>
    </jsp:include>
</head>

<body>
<div align="center" style="padding:6px 0px 6px; 0px;">
<A href="/"><img src="/i/registration/tc_logo.gif" alt="TopCoder" border="0" /></A>
</div>
<div align="center">
   <div style="padding: 0px 10px 10px 10px; width: 600px; text-align: left;">

     <jsp:include page="/page_title.jsp">
         <jsp:param name="image" value="registration_w"/>
         <jsp:param name="title" value="&#160;"/>
     </jsp:include>

   <div id="regBcContainer">
      <div class="regBc">
         <div class="title">Step <strong>2</strong> of <strong>6</strong></div>
         <div class="off">Select Your Registration</div>
         <div class="on">General</div>
         <div class="off">Demographics</div>
         <div class="off">Confirm</div>
         <div class="off">Success</div>
         <div class="off">Activation</div>
      </div>
   </div>

<form action="${sessionInfo.secureAbsoluteServletPath}" method="POST" name="mainForm">

<table cellpadding="0" cellspacing="0" border="0" class="regFields">
<tc-webtag:hiddenInput name="<%=Constants.MODULE_KEY%>" value="Secondary"/>


<c:set value="<%=Constants.GIVEN_NAME%>" var="givenName"/>
<c:if test="${cf:contains(fields, givenName)}">
   <tr>
      <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.GIVEN_NAME%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
        Given Name:
      </td>
      <td class="value">
         <tc-webtag:textInput name="<%=Constants.GIVEN_NAME%>" size="15" maxlength="<%=Constants.MAX_GIVEN_NAME_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.SURNAME%>" var="surname"/>
<c:if test="${cf:contains(fields, surname)}">
   <tr>
      <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.SURNAME%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
         Surname:
      </td>
      <td class="value">
         <tc-webtag:textInput name="<%=Constants.SURNAME%>" size="15" maxlength="<%=Constants.MAX_SURNAME_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.TITLE%>" var="title"/>
<c:if test="${cf:contains(fields, title)}">
   <tr>
      <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.TITLE%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
        Title:
      </td>
      <td class="value">
        <tc-webtag:textInput name="<%=Constants.TITLE%>" size="15" maxlength="<%=Constants.MAX_TITLE_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.COMPANY_NAME%>" var="companyName"/>
<c:if test="${cf:contains(fields, companyName)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.COMPANY_NAME%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
        Company:
      </td>
      <td class="value">
        <tc-webtag:textInput name="<%=Constants.COMPANY_NAME%>" size="15" maxlength="<%=Constants.MAX_COMPANY_NAME_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.ADDRESS1%>" var="address1"/>
<c:if test="${cf:contains(fields, address1)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.ADDRESS1%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
        Address1:
      </td>
      <td class="value">
        <tc-webtag:textInput name="<%=Constants.ADDRESS1%>" size="15" maxlength="<%=Constants.MAX_ADDRESS_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.ADDRESS2%>" var="address2"/>
<c:if test="${cf:contains(fields, address2)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.ADDRESS2%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
        Address2:
      </td>
      <td class="value">
        <tc-webtag:textInput name="<%=Constants.ADDRESS2%>" size="15" maxlength="<%=Constants.MAX_ADDRESS_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.ADDRESS3%>" var="address3"/>
<c:if test="${cf:contains(fields, address3)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.ADDRESS3%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
        Address3:
      </td>
      <td class="value">
        <tc-webtag:textInput name="<%=Constants.ADDRESS3%>" size="15" maxlength="<%=Constants.MAX_ADDRESS_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.CITY%>" var="city"/>
<c:if test="${cf:contains(fields, city)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.CITY%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>

      <td class="name">
        City:
      </td>
      <td class="value">
        <tc-webtag:textInput name="<%=Constants.CITY%>" size="15" maxlength="<%=Constants.MAX_CITY_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.STATE_CODE%>" var="stateCode"/>
<c:if test="${cf:contains(fields, stateCode)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.STATE_CODE%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
        State:
      </td>
      <td class="value">
        <tc-webtag:textInput name="<%=Constants.STATE_CODE%>" size="2" maxlength="2" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.POSTAL_CODE%>" var="postalCode"/>
<c:if test="${cf:contains(fields, postalCode)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.POSTAL_CODE%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
        Postal Code:
      </td>
      <td class="value">
        <tc-webtag:textInput name="<%=Constants.POSTAL_CODE%>" size="15" maxlength="<%=Constants.MAX_POSTAL_CODE_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.PROVINCE%>" var="province"/>
<c:if test="${cf:contains(fields, province)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.PROVINCE%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
        Province:
      </td>
      <td class="value">
        <tc-webtag:textInput name="<%=Constants.PROVINCE%>" size="15" maxlength="<%=Constants.MAX_PROVINCE_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.COUNTRY_CODE%>" var="countryCode"/>
<c:if test="${cf:contains(fields, countryCode)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.COUNTRY_CODE%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
         Country: 
      </td>
      <td class="value">
         <tc-webtag:objectSelect name="${countryCode}" list="${countries}" valueField="code" textField="name"/>
      </td>
   </tr>
</c:if>


<c:set value="<%=Constants.COMP_COUNTRY_CODE%>" var="compCountryCode"/>
<c:if test="${cf:contains(fields, compCountryCode)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.COMP_COUNTRY_CODE%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
         Country to represent:
      </td>
      <td class="value">
         <tc-webtag:objectSelect name="${compCountryCode}" list="${countries}" valueField="code" textField="name"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.TIMEZONE%>" var="timeZone"/>
<c:if test="${cf:contains(fields, timeZone)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.TIMEZONE%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
         Timezone:
      </td>
      <td class="value">
         <tc-webtag:objectSelect name="${timeZone}" list="${timeZones}" valueField="id" textField="description"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.PHONE_NUMBER%>" var="phoneNumber"/>
<c:if test="${cf:contains(fields, phoneNumber)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.PHONE_NUMBER%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
        Phone Number:
      </td>
      <td class="value">
        <tc-webtag:textInput name="<%=Constants.PHONE_NUMBER%>" size="15" maxlength="<%=Constants.MAX_PHONE_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.EMAIL%>" var="email"/>
<c:if test="${cf:contains(fields, email)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.EMAIL%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
        Email Address:
      </td>
      <td class="value">
        <tc-webtag:textInput name="<%=Constants.EMAIL%>" size="15" maxlength="<%=Constants.MAX_EMAIL_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.EMAIL_CONFIRM%>" var="emailConfirm"/>
<c:if test="${cf:contains(fields, emailConfirm)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.EMAIL_CONFIRM%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
        Confirm Email Address:
      </td>
      <td class="value">
        <tc-webtag:textInput name="<%=Constants.EMAIL_CONFIRM%>" size="15" maxlength="<%=Constants.MAX_EMAIL_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.NOTIFICATION%>" var="notification"/>
<c:if test="${cf:contains(fields, notification)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.NOTIFICATION%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
         Email Notifications:
      </td>
      <td class="value">
    <c:forEach items="${notifications}" var="notif">
        <tc-webtag:chkBox name="${notification}${notif.id}"/> <c:out value="${notif.name}" /><br>
    </c:forEach>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.HANDLE%>" var="handle"/>
<c:if test="${cf:contains(fields, handle)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.HANDLE%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
        User Name:
      </td>
      <td class="value">
        <tc-webtag:textInput name="<%=Constants.HANDLE%>" size="15" maxlength="<%=Constants.MAX_HANDLE_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.PASSWORD%>" var="password"/>
<c:if test="${cf:contains(fields, password)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.PASSWORD%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
        Password:
      </td>
      <td class="value">
        <tc-webtag:textInput name="<%=Constants.PASSWORD%>" size="15" maxlength="<%=Constants.MAX_PASSWORD_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.PASSWORD_CONFIRM%>" var="passwordConfirm"/>
<c:if test="${cf:contains(fields, passwordConfirm)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.PASSWORD_CONFIRM%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
        Confirm Password:
      </td>
      <td class="value">
        <tc-webtag:textInput name="<%=Constants.PASSWORD_CONFIRM%>" size="15" maxlength="<%=Constants.MAX_PASSWORD_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.QUOTE%>" var="quote"/>
<c:if test="${cf:contains(fields, quote)}">
   <tr>
    <td colspan="2"><span class="bigRed">
        <tc-webtag:errorIterator id="err" name="<%=Constants.QUOTE%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
        Quote:
      </td>
      <td class="value">
        <tc-webtag:textInput name="<%=Constants.QUOTE%>" size="50" maxlength="<%=Constants.MAX_QUOTE_LENGTH%>" editable="true"/>
      </td>
   </tr>
</c:if>

<c:set value="<%=Constants.PHOTO%>" var="photo"/>
<c:if test="${cf:contains(fields, photo)}">
   <tr>
      <td class="name">
         Member Photo:
      </td>
      <td class="value">
         <A HREF="mailto:memberphotos@topcoder.com?subject=${regUser.activationCode}%20|%20[%20${sessionInfo.handle}%20]%20|%20${sessionInfo.userId}%20<c:if test="${regUser.coder.memberPhoto!=null}">RE</c:if>SUBMIT%20IMAGE:%20PLEASE%20DO%20NOT%20CHANGE%20SUBJECT"> Click here to <c:if test="${regUser.coder.memberPhoto!=null}">re</c:if>send your photo</A>
         <br>
         <span class="small">Let other TopCoder Members know what you look like. Send us a head shot that is at least 200 pixels (3 inches) across.
         <a href="JavaScript:void window.open('/tc?module=Static&d1=member_photos&d2=index','Photo_Info','top=2,left=2,resizable=yes,width=600,height=700,status=0');" class="statTextBig">Click here</a>
         for more info about member photos.</span>
      </td>
    </tr>
</c:if>


<c:set value="<%=Constants.CODER_TYPE%>" var="coderType"/>
<c:if test="${cf:contains(fields, coderType)}">
   <tr>
      <td colspan="2"><span class="bigRed">
            <tc-webtag:errorIterator id="err" name="<%=Constants.CODER_TYPE%>"><%=err%><br></tc-webtag:errorIterator></span>
      </td>
   </tr>
   <tr>
      <td class="name">
         Coder Type:
      </td>
      <td class="value">
         <tc-webtag:objectSelect name="${coderType}" list="${coderTypes}" valueField="id" textField="description"/>
      </td>
   </tr>
</c:if>
</table>

<br><br>

<div align="center">
<a href="Javascript:document.mainForm.submit();">Submit</a>
</div>

</form>

   </div>
</div>
<br><br>

</body>
</html>
