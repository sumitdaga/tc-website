<%@ page import="com.topcoder.web.corp.common.Constants,
                 com.topcoder.web.corp.model.TestSessionInfo,
                 java.util.Date,
                 com.topcoder.shared.dataAccess.DataAccessConstants,
                 com.topcoder.shared.dataAccess.resultSet.ResultSetContainer" %>
<%@ taglib uri="screening.tld" prefix="screen" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Topcoder | Testing Application Management Tool</title>

<jsp:include page="../includes/script.jsp" />

</head>

<body>

<!-- Header begins -->
<jsp:include page="../includes/top.jsp" />
<!-- Header ends -->

<% ResultSetContainer results = (ResultSetContainer) request.getAttribute("candidateList");%>


<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr valign="top">

<!-- gutter begins -->
        <td width="25"><img src="/i/corp/clear.gif" width="25" height="1" alt="" border="0"></td>
<!-- gutter ends -->

<!-- Middle column begins -->
        <td width="50%"></td>
        <td align="center"><img src="/i/corp/clear.gif" width="700" height="11" alt="" border="0"><br>
            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tr valign="top">
                    <td class="bodyText">
                        <h1 class="testHead">Candidate Status</h1>
                        <p>Below is a list of candidates.  Clicking on a candidate will bring you to the Candidate Info page.<br/>
                        <br/></p>
                    </td>
                </tr>
            </table>
            <% if( request.getAttribute(Constants.USAGE_TYPE) == null || ((Long)request.getAttribute(Constants.USAGE_TYPE)).longValue() == Constants.USAGE_TYPE_TESTING) { %>
            <table border="0" cellspacing="10" cellpadding="0" width="100%">
                <tr>
                    <td><div align="center"><p class="button"><screen:servletLink processor="PopulateCandidate" param="referrer=BuildCandidateList" styleClass="button">Add Candidate</screen:servletLink></p></div></td>
                </tr>
            </table>
            <% }%>

            <table cellspacing="0" cellpadding="0" width="100%" >
                <tr>
                    <td colspan=6 align=right class="bodyText">
                        Viewing Candidate <%=request.getAttribute(DataAccessConstants.START_RANK)%> to <%=request.getAttribute(DataAccessConstants.END_RANK)%> of <%= request.getAttribute(DataAccessConstants.NUMBER_RECORDS)%><br/>
                        <%if(results.croppedDataBefore()) { %>
                            <a href="?<%=Constants.MODULE_KEY%>=BuildCandidateList&<%=DataAccessConstants.SORT_COLUMN%>=<%=request.getAttribute(DataAccessConstants.SORT_COLUMN)%>&<%=DataAccessConstants.START_RANK%>=<%=Integer.parseInt(request.getAttribute(DataAccessConstants.START_RANK))-Constants.SEARCH_SCROLL_SIZE%>&<%=DataAccessConstants.END_RANK%>=<%=Integer.parseInt(request.getAttribute(DataAccessConstants.END_RANK))-Constants.SEARCH_SCROLL_SIZE%>" >&lt;&lt; prev</a>
                        <% } else { %>
                            &lt;&lt; prev
                        <% } %>
                      | <%if(results.croppedDataAfter()) { %>
                           <a href="?<%=Constants.MODULE_KEY%>=BuildCandidateList&<%=DataAccessConstants.SORT_COLUMN%>=<%=request.getAttribute(DataAccessConstants.SORT_COLUMN)%>&<%=DataAccessConstants.START_RANK%>=<%=Integer.parseInt(request.getAttribute(DataAccessConstants.START_RANK))+Constants.SEARCH_SCROLL_SIZE%>&<%=DataAccessConstants.END_RANK%>=<%=Integer.parseInt(request.getAttribute(DataAccessConstants.END_RANK))+Constants.SEARCH_SCROLL_SIZE%>" >next &gt;&gt;</a>
                        <% } else { %>
                            next &gt;&gt;
                        <% } %>
                    </td>
                 </tr>
            </table>
            <table cellspacing="0" cellpadding="0" width="100%" class="screeningFrame">
                 <tr>
                   <td align="left" class="screeningHeader">
                        <A class=screeningHeader href="?<%=Constants.MODULE_KEY%>=BuildCandidateList&<%=DataAccessConstants.SORT_COLUMN%>=1">
                            Candidate
                        </A>
                   </td>
                   <td align="center" class="screeningHeader">
                        <A class=screeningHeader href="?<%=Constants.MODULE_KEY%>=BuildCandidateList&<%=DataAccessConstants.SORT_COLUMN%>=14">
                            Profile
                        </A>
                   </td>               
                   <td align="center" class="screeningHeader">
                        <A class=screeningHeader href="?<%=Constants.MODULE_KEY%>=BuildCandidateList&<%=DataAccessConstants.SORT_COLUMN%>=3">
                            Begin
                        </a>
                   </td>               
                   <td align="center" class="screeningHeader">
                        <A class=screeningHeader href="?<%=Constants.MODULE_KEY%>=BuildCandidateList&<%=DataAccessConstants.SORT_COLUMN%>=4">
                            End
                        </A>
                   </td>
                   <td align="center" class="screeningHeader">
                        <A class=screeningHeader href="?<%=Constants.MODULE_KEY%>=BuildCandidateList&<%=DataAccessConstants.SORT_COLUMN%>=15">
                            Status
                        </A>
                   </td>
                   <%--<% if( request.getAttribute(Constants.USAGE_TYPE) != null && ((Long)request.getAttribute(Constants.USAGE_TYPE)).longValue() == Constants.USAGE_TYPE_SCREENING) { %>
                   <td align="center" class="screeningHeader">Preference Level</td>
                   <% } %>--%>
                   <td align="center" class="screeningHeader">
                        <A class=screeningHeader href="?<%=Constants.MODULE_KEY%>=BuildCandidateList&<%=DataAccessConstants.SORT_COLUMN%>=16">
                            Notes
                        </A>
                   </td>                                          
                </tr>

                <jsp:useBean id="candidateList" type="java.util.List" scope="request" />
            
                <%
                    int counter = 0;
                    String[] cssClasses = {"screeningCellOdd", "screeningCellEven"};
                    String[] swfFiles = {"/i/corp/screeningRatingOdd.swf", "/i/corp/screeningRatingEven.swf"};
                %>
                
                <screen:resultSetRowIterator id="row" list="<%=candidateList%>">

                <%
                    String params = Constants.CANDIDATE_ID + "=" + row.getItem("user_id") + "&referrer=BuildCandidateList";
                    String trparams = Constants.SESSION_ID + "=" + row.getItem("session_id") + "&referrer=BuildCandidateList";
                    boolean hasSession = !row.getItem("has_session").toString().equals("0");
                    boolean hasNotes = ((Long)row.getItem("note_count").getResultData()).longValue()>0;

                %>

                <tr>
                   <td width="30%" class="<%=cssClasses[counter % 2]%>"><screen:servletLink processor="PopulateCandidate" param="<%=params%>"><screen:resultSetItem row="<%=row%>" name="handle" /></screen:servletLink></td>               
                   <td width="10%" align="center" class="<%=cssClasses[counter % 2]%>"><% if(hasSession){ %><screen:servletLink processor="TestResults" param="<%=trparams%>"><screen:sessionStatusLink row="<%=row%>" /></screen:servletLink><% } %></td>
                   <td width="20%" align="center" class="<%=cssClasses[counter % 2]%>" nowrap=nowrap><screen:resultSetItem row="<%=row%>" name="begin_time" format="MM/dd/yyyy hh:mm a" ifNull="N/A"/></td> 
                   <td width="20%" align="center" class="<%=cssClasses[counter % 2]%>" nowrap=nowrap><screen:resultSetItem row="<%=row%>" name="end_time" format="MM/dd/yyyy hh:mm a" ifNull="N/A"/></td> 
                   <td width="10%" align="center" class="<%=cssClasses[counter % 2]%>" nowrap=nowrap><screen:sessionStatus row="<%=row%>" /></td>
                   <%--<% if( request.getAttribute(Constants.USAGE_TYPE) != null && ((Long)request.getAttribute(Constants.USAGE_TYPE)).longValue() == Constants.USAGE_TYPE_SCREENING) { %>
                   <td width="10%" align="center" class="<%=cssClasses[counter % 2]%>" nowrap=nowrap>
                    <object
                        classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
                        codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"                      
                        width="80"
                        height="12" 
                        id="tc_card"
                        align="middle">
                        <param name="allowScriptAccess" value="sameDomain" />
                        <param name="movie"
                        value="<%=swfFiles[counter % 2]%>?preference=<%=row.getStringItem("preference")%>&sendurl=/corp/testing/?module=UpdatePreference&userId=<%=request.getAttribute(Constants.USER_ID)%>&cid=<%=row.getStringItem("user_id")%>"/>
                        <param name="menu" value="false" />
                        <param name="quality" value="high" />
                        <param name="bgcolor" value="#ffffff" />
                        <embed
                        src="<%=swfFiles[counter % 2]%>?preference=<%=row.getStringItem("preference")%>&sendurl=/corp/testing/?module=UpdatePreference&userId=<%=request.getAttribute(Constants.USER_ID)%>&cid=<%=row.getStringItem("user_id")%>"
                        menu="false"
                        quality="high"
                        bgcolor="#ffffff"
                        width="80"
                        height="12"
                        name="tc_card"
                        align="middle"
                        allowScriptAccess="sameDomain"
                        type="application/x-shockwave-flash"
                        pluginspage="http://www.macromedia.com/go/getflashplayer" />
                        </object>
                   </td>
                   <% } %>--%>
                   <td width="10%" align="center" class="<%=cssClasses[counter++ % 2]%>"><screen:servletLink processor="PopulateCandidate" param="<%=params%>"><%=hasNotes?"View":"None"%></screen:servletLink></td>
                </tr>

            </screen:resultSetRowIterator>
            </table>

            <% if (candidateList.size() > 10) { %>
                <% if( request.getAttribute(Constants.USAGE_TYPE) == null || ((Long)request.getAttribute(Constants.USAGE_TYPE)).longValue() == Constants.USAGE_TYPE_TESTING) { %>
                <table border="0" cellspacing="10" cellpadding="0" width="70%">
                     <tr>
                        <td><div align="center"><p class="button"><screen:servletLink processor="PopulateCandidate" param="referrer=BuildCandidateList" styleClass="button">Add Candidate</screen:servletLink></p></div></td>
                    </tr>
                </table>
                <% } %>
            <% } %>
            <p><br></p>
        </td>
        <td width="50%"></td>
<!-- Middle Column ends -->

<!-- Gutter -->
        <td width="25"><img src="/i/corp/clear.gif" width="25" height="1" alt="" border="0"></td>
<!-- Gutter Ends -->

    </tr>
</table>

  <jsp:include page="../../foot.jsp" />

</body>
</html>
