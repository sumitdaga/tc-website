<%@ page import="com.topcoder.shared.util.ApplicationServer" %>
<%@ page language="java" %>
<%@ taglib uri="tc-webtags.tld" prefix="tc-webtag" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Programming Contests, Software Development, and Employment Services at TopCoder</title>
    <link type="text/css" rel="stylesheet" href="/css/home.css"/>
    <link type="image/x-icon" rel="shortcut icon" href="/i/favicon.ico"/>
    <STYLE TYPE="text/css">
        body {
            text-align: center;
        }

        .centerer {
            width: 600px;
            margin: 0px auto;
        }
    </STYLE>
    <%--
        <script src="http://www.google-analytics.com/urchin.js" type="text/javascript"></script>
        <script type="text/javascript">
            <!--
            _uacct = "UA-321688-1"; urchinTracker();
            -->
        </script>
    --%>

</head>

<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td class="homeTopBar" align=left>
            <span class="time">Current Member Count</span>&#160;:&#160;
            <tc-webtag:format object="${sessionInfo.memberCount}" format="#,##0"/>
            -
            <tc-webtag:format object="${sessionInfo.date}" format="MMMM d, yyyy"/>
        </td>
        <td class="homeTopBar" align=right>
            <A href="/reg/" class="loginLinks">Register Now</A>
            | <A href="/tc?module=Static&d1=about&d2=index" class="loginLinks">About TopCoder</A></td>
    </tr>
</table>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td width="50%" class="homeLogo" align="left"><img src="/i/home/TC_homeLogo.gif" alt="TopCoder"/></td>
        <td class="BIGPromoBox" align="center">
<%-- TCO  --%>
<map name="tco07">
<area shape="rect" alt="" coords="1,1,499,129" href="/tc?module=Static&d1=tournaments&d2=tco07&d3=about" />
<area shape="rect" alt="" coords="1,131,499,149" href="/tc?module=Static&d1=tournaments&d2=tchs07&d3=overview" />
</map>
<img src="/i/home/tco07announcement.png" alt="2007 TopCoder Open" border="0" style="display:block;" usemap="#tco07"/>

        </td>
        <td width="50%" align="right" valign="top" style="border-bottom: 1px solid #666666; padding:0px; margin:0px;">
            <%-- standard studio dogear 
            &nbsp;
            --%>
            <A href="http://<%=ApplicationServer.STUDIO_SERVER_NAME%>"><img src="/i/home/studioDogEarStandard.png" alt="TopCoder Studio" /></A>
        </td>
    </tr>
</table>


<table border="0" cellpadding="0" cellspacing="0" class="centerer">
<%-- Banners --%>
<tr>
    <td class="homeLeftBan">
        <A href="/tc"><img src="/i/home/tab_developercenter.gif" alt="Developer Center" border="0" style="display:block;"/></A>
    </td>
    <td class="homeGutter" rowspan=2>&#160;</td>
    <td class="homeCentBan">
        <A href="/corp/?module=Static&d1=corp&d2=index"><img src="/i/home/tab_corporateservices.gif" alt="Corporate Services" border="0" style="display:block;"/></A>
    </td>
    <td class="homeGutter" rowspan=2>&#160;</td>
    <td class="homeRightBan">
        <A href="/tc?module=Static&d1=pressroom&d2=index"><img src="/i/home/tab_newsevents.gif" alt="News & Events" border="0" style="display:block;"/></A>
    </td>
</tr>
<%-- Body --%>
<tr>
<%-- Left Column --%>
<td class="homeLeftCol">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td class="homeBigPromo">
                <%-- DIGITAL RUN --%>
                <A href="/tc?module=Static&d1=digital_run&d2=description"><img src="/i/home/digitalrun20061104.png" alt="The Digital Run" border="0" style="display:block;"/></A>
                
                <%-- AOL mashups
                <A href="http://studio.topcoder.com/forums?module=Thread&threadID=123"><img src="/i/home/aol_mashups.gif" alt="AOL mashups" border="0" style="display:block;"/></A>
                --%>
                <%-- Marathon Match Sponsor 
                <map name="mm">
                <area shape="rect" alt="" coords="1,1,264,95" href="/longcontest/?module=ViewActiveContests" />
                <area shape="rect" alt="" coords="1,106,264,135" href="/tc?module=Static&d1=tournaments&d2=tco07&d3=sponsorspatrons&d4=verisign" />
                </map>
                <img src="/i/home/mmtco1_verisign.png" alt="TCO07 Marathon Match 1 brough to you by VeriSign" border="0" style="display:block;" usemap="#mm"/>
                --%>
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td class="homeArrow"><img src="/i/home/triangle.gif" alt="" border="0"/></td>
            <td class="homeTitle"><A href="/tc" class="homeTitleLink">Algorithm & High School Competitions</A></td>
        </tr>
        <tr>
            <td class="homeArrow">&#160;</td>
            <td class="homeText">How do you stand up among your peers? <A href="/tc">Compete</A> in our algorithm
                competitions.
            </td>
        </tr>

        <tr>
            <td class="homeArrow"><img src="/i/home/triangle.gif" alt="" border="0"/></td>
            <td class="homeTitle"><A href="/tc" class="homeTitleLink">Software Competitions</A></td>
        </tr>
        <tr>
            <td class="homeArrow">&#160;</td>
            <td class="homeText">Compete in Software <A href="/tc?module=ViewActiveContests&ph=112">Design</A>,
                <A href="/tc?module=ViewActiveContests&ph=113">Development</A>,
                <A href="/tc?module=Static&d1=dev&d2=assembly&d3=overview">Assembly</A>, and
                <A href="/tc?module=Static&d1=dev&d2=testing&d3=overview">Testing</A> Competitions and get paid for
                what you build!
            </td>
        </tr>
        <tr>
            <td class="homeArrow"><img src="/i/home/triangle.gif" alt="" border="0"/></td>
            <td class="homeTitle"><A href="/longcontest/?module=ViewActiveContests" class="homeTitleLink">Marathon
                Matches</A></td>
        </tr>
        <tr>
            <td class="homeArrow">&#160;</td>
            <td class="homeText">A more flexible <A href="/longcontest/?module=ViewActiveContests">competition</A>
                format with an extended timeline and different types of problems than those in a traditional algorithm
                round.
            </td>
        </tr>
        <tr>
            <td class="homeArrow"><img src="/i/home/triangle.gif" alt="" border="0"/></td>
            <td class="homeTitle"><A href="/tc?module=Static&d1=contracting&d2=index" class="homeTitleLink">Employment
                Opportunities</A></td>
        </tr>
        <tr>
            <td class="homeArrow">&#160;</td>
            <td class="homeText">Just <A href="/tc?module=Static&d1=contracting&d2=index">register here</A> and TopCoder
                will contact you about temporary and permanent positions that fit your skills.
            </td>
        </tr>
        <tr>
            <td class="homeArrow"><img src="/i/home/triangle.gif" alt="" border="0"/></td>
            <td class="homeTitle"><A href="/tc?module=Static&d1=about&d2=jobs" class="homeTitleLink">Work for
                TopCoder</A></td>
        </tr>
        <tr>
            <td class="homeArrow">&#160;</td>
            <td class="homeText">Take a look at the <A href="/tc?module=Static&d1=about&d2=jobs">job openings</A> at
                TopCoder and see if there's a position that is right for you.
            </td>
        </tr>
    </table>
</td>
<%-- Center Column --%>
<td class="homeCentCol">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td class="homeBigPromo">
                <A href="http://<%=ApplicationServer.SOFTWARE_SERVER_NAME%>/customers/index.jsp"><img src="/i/home/tcs_client_caliper.png" alt="TopCoder & IMS" border="0" style="display:block;"/></A>
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td class="homeArrow"><img src="/i/home/triangle.gif" alt="" border="0"/></td>
            <td class="homeTitle"><A href="http://<%=ApplicationServer.SOFTWARE_SERVER_NAME%>" class="homeTitleLink">Software</A>
            </td>
        </tr>
        <tr>
            <td class="homeArrow">&#160;</td>
            <td class="homeText">Developers from all over the world are competing to build your next application. Learn
                how TopCoder delivers high-quality
                <A href="http://<%=ApplicationServer.SOFTWARE_SERVER_NAME%>">software</A> at a lower cost than the
                competition.
            </td>
        </tr>

        <tr>
            <td class="homeArrow"><img src="/i/home/triangle.gif" alt="" border="0"/></td>
            <td class="homeTitle"><A href="/corp/?module=Static&d1=corp&d2=spon_prog&d3=index" class="homeTitleLink">Marketing
                Services</A></td>
        </tr>
        <tr>
            <td class="homeArrow">&#160;</td>
            <td class="homeText">Is your company looking to interact with developers from around the world? TopCoder
                offers many <A href="/corp/?module=Static&d1=corp&d2=spon_prog&d3=index">opportunities</A> to do just
                that.
            </td>
        </tr>
        <tr>
            <td class="homeArrow"><img src="/i/home/triangle.gif" alt="" border="0"/></td>
            <td class="homeTitle"><A href="/corp/?module=Static&d1=corp&d2=tces_home" class="homeTitleLink">Employment
                Services</A></td>
        </tr>
        <tr>
            <td class="homeArrow">&#160;</td>
            <td class="homeText">Are you a company interested in <A href="/corp/?module=Static&d1=corp&d2=tces_home">hiring</A>
                talent? Let TopCoder bring you together with software engineers looking for jobs.
            </td>
        </tr>
    </table>
</td>
<%-- Right Column --%>
<td class="homeRightCol">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td class="homeBigPromo">
                <%-- WSJ
                <A href="/?t=sponsor&c=link&link=http://webreprints.djreprints.com/1466111183234.html" target="_blank"><img src="/i/home/wsj_051006_sm.gif" alt="The Wall Street Journal" border="0" style="display:block;" /></A>
                --%>
                <%-- AOL webcast team 
                <A href="/tc?module=Static&d1=tournaments&d2=tccc06&d3=movies"><img src="/i/home/tccc06webcast20060108.jpg" alt="TCCC Webcast" border="0" style="display:block;"/></A>
                --%>

                <%-- CSF --%>
                <a href="<tc-webtag:linkTracking link='http://csf.topcoder.com' refer='HOMEPAGE' />"><img src="/i/home/csf.jpg" alt="Microsoft CSF, Powered by TopCoder" border="0" style="display:block;"/></A>
                
                <%-- SRM SPONSOR 
                <map name="srm">
                <area shape="rect" alt="" coords="1,1,264,85" href="/tc?module=MatchDetails&rd=10664" />
                <area shape="rect" alt="" coords="1,96,264,135" href="/tc?module=Static&d1=tournaments&d2=tco07&d3=sponsorspatrons&d4=aol" />
                </map>
                <img src="/i/home/srm340_aol.png" alt="SRM 340 sponsored by AOL" border="0" style="display:block;" usemap="#srm"/>
                --%>
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0">
        <%-- Press Room --%>
        <tr>
            <td class="homeArrow"><img src="/i/home/triangle.gif" alt="" border="0"/></td>
            <td class="homeTitle"><A href="/tc?module=Static&d1=pressroom&d2=index" class="homeTitleLink">Highlights</A>
            </td>
        </tr>
        <tr>
            <td class="homeArrow">&#160;</td>
            <td class="homeText"><br>

                <div style="float: right; padding-left: 5px;">
                    <img src="/i/pressroom/tco07_logo.png" alt="TCO07" width="88" height="41" border="0"/>
                </div>
                UBS, DRW, and NSA Join TCO 07
                <A href="/tc?module=Static&d1=pressroom&d2=pr_030507">...more</A><br>[March 5]<br><br>
                
                <div style="float: right; padding-left: 5px;">
                    <img src="/i/pressroom/tco07_logo.png" alt="TCO07" width="88" height="41" border="0"/>
                </div>
                TopCoder Announces TopCoder Open 2007 Sponsored by AOL
                <A href="/tc?module=Static&d1=pressroom&d2=pr_022207">...more</A><br>[February 22]<br><br>

                <div style="float: right; padding-left: 5px;">
                    <img src="/i/pressroom/businessweek_logo.gif" alt="BusinessWeek" width="67" height="15" border="0"/>
                </div>
                Ideagora, a Marketplace for Minds
                <A target="_blank" href="http://www.businessweek.com/print/innovate/content/feb2007/id20070215_251519.htm">...more</A><br>[February 15]<br><br>

                <div style="float: right; padding-left: 5px;">
                    <img src="/i/pressroom/computerworld.gif" alt="ComputerWorld" width="67" height="18" border="0"/>
                </div>
                Microsoft launches 'mashup' competition for developers
                <A href="http://www.computerworld.com/action/article.do?command=viewArticleBasic&taxonomyId=11&articleId=9011098&intsrc=hm_topic">...more</A><br>[February 14]<br><br>

                <div style="float: right; padding-left: 5px;">
                    <img src="/i/pressroom/tchs07.png" width="67" height="36" alt="TCHS07" border="0" />
                </div>
                Registration Opens for First TCHS Tournament
                <A href="/tc?module=Static&d1=pressroom&d2=pr_021307">...more</A><br>[February 13]<br><br>

                <div style="float: right; padding-left: 5px;">
                    <img src="/i/pressroom/csflogo.png" alt="Connected Services Sandbox Logo" width="67" height="45" border="0"/>
                </div>
                Connected Services Sandbox Launches
                <A href="/tc?module=Static&d1=pressroom&d2=pr_021207">...more</A><br>[February 12]<br><br>

            </td>
        </tr>
        <tr>
            <td class="homeArrow"><img src="/i/home/triangle.gif" alt="" border="0"/></td>
            <td class="homeTitle"><A href="/tc?module=Static&d1=calendar&d2=thisMonth" class="homeTitleLink">March
                Events:</A></td>
        </tr>
        <tr>
            <td class="homeArrow">&#160; </td>
            <td class="homeText"><br>
                <b>03.06</b> - TCHS Delta Round 1 - 6 AM<br><br>
                <b>03.06</b> - TCHS Beta Round 1 - 2 PM<br><br>
                <b>03.06</b> - TCO07 Marathon Registration Closes - 6 PM<br><br>
                <b>03.07</b> - TCO07 Marathon Match #1 - 12 NOON<br><br>
                <b>03.08</b> - TCHS07 Gamma Round 2 - 10 AM<br><br>
                <b>03.08</b> - TCHS07 Alpha Round 2 - 9 PM<br><br>
                <b>03.10</b> - SRM 341 - NSA - 12 NOON<br><br>
                <b>03.12</b> - TCHS Delta Round 2 - 6 AM<br><br>
                <b>03.12</b> - TCHS Beta Round 2 - 2 PM<br><br>
                <b>03.14</b> - SRM 342 - AOL - 9 PM<br><br>
                <b>03.15</b> - CDDC Week 1 Projects Posted - 9 AM<br><br>
                <b>03.19</b> - TCHS07 Gamma Round 3 - 10 AM<br><br>
                <b>03.19</b> - TCHS07 Alpha Round 3 - 9 PM<br><br>
                <b>03.21</b> - TCO07 Marathon Match #2 - 12 NOON<br><br>
                <b>03.22</b> - SRM 343 - 7 AM<br><br>
                <b>03.22</b> - CDDC Week 2 Projects Posted - 9 AM<br><br>
                <b>03.26</b> - TCHS Delta Round 3 - 6 AM<br><br>
                <b>03.26</b> - TCHS Beta Round 3 - 2 PM<br><br>
                <b>03.27</b> - TCO07 Algo Registration Closes - 5 PM<br><br>
                <b>03.28</b> - SRM 344 - DRW - 11AM<br><br>
                <b>03.29</b> - TCO07 Algo Qual Round 1 - AOL - 7:00 AM<br><br>
                <b>03.29</b> - CDDC Week 3 Projects Posted - 9 AM<br><br>
                <b>03.31</b> - TCO07 Algo Qual Round 2 - AOL - 1:00 PM<br><br>
                <%--<b>01.13</b> - <div style="float:left; padding-right:5px;"><A href="/longcontest/?module=ViewActiveContests&rt=15"><img src="/i/longcontest/spon_intel.gif" alt="Intel&#174;" border="0" /></A></div>Intel&#174; Multi-Threading Competition 12 - 12 NOON<br><br>--%>
         </td>
        </tr>

    </table>
</td>
</tr>
</table>
<%-- Footer --%>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td class="homeFooter" colspan="5">
            <A href="/" class="footerLinks">Home</A>&#160;&#160;|&#160;&#160;
            <A href="/tc?module=Static&d1=about&d2=index" class="footerLinks">About TopCoder</A>&#160;&#160;|&#160;&#160;
            <A href="/tc?module=Static&d1=pressroom&d2=index" class="footerLinks">Press Room</A>&#160;&#160;|&#160;&#160;
            <A href="/tc?module=Static&d1=about&d2=contactus">Contact Us</A>&#160;&#160;|&#160;&#160;
            <A href="/tc?module=Static&d1=about&d2=privacy" class="footerLinks">Privacy</A>&#160;&#160;|&#160;&#160;
            <A href="/tc?module=Static&d1=about&d2=terms" class="footerLinks">Terms</A>
            <br>
            <A href="/tc" class="footerLinks">Developer Center</A>&#160;&#160;|&#160;&#160;
            <A href="/corp/?module=Static&d1=corp&d2=index" class="footerLinks">Corporate Services</A></td>
        <tr>
            <td class="copyright" colspan="5">Copyright &#169; 2001-2007, TopCoder, Inc. All rights reserved.</td>
        </tr>
</table>
</body>
</html>
