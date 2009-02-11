<%--
 * Copyright (C) 2004 - 2009 TopCoder Inc., All Rights Reserved.  
 *
 * This JSP shows specific rules for component track.
 *
 * Author TCSDEVELOPER
 * Version 1.0
 * Since 2009 TopCoder Open Site Integration
--%>
<%@ page contentType="text/html;charset=utf-8" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
        
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>TCO 09 : Tournament Overview</title>

<!-- Meta Tags -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- External CSS -->
<link rel="stylesheet" href="css/tournaments/tco09.css" media="all" type="text/css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" media="screen" href="css/screen-ie6.css" />
<![endif]-->

<!-- External JavaScripts -->
<script type="text/javascript" src="/js/tournaments/tco09/jquery-1.2.6.js"></script>
<script type="text/javascript" src="/js/tournaments/tco09/jquery.backgroundPosition.js"></script>
<script type="text/javascript" src="/js/tournaments/tco09/scripts.js"></script>
<script type="text/javascript" src="/js/arena.js"></script> 
<style type="text/css">
<!--
.style2 {color: #FF0000}
-->
</style>
</head>

<body id="page">

    <div id="wrapper">
        <div id="wrapperInner">
            <div id="wrapperContent">
                
                <div id="wrapperContentInner">
                
                    <jsp:include page="../../header.jsp"/>
                    
                    <jsp:include page="../../mainNav.jsp" >
                        <jsp:param name="mainTab" value="overview"/>
                    </jsp:include>
                    
                    <div id="content">
                            <div class="contentTopLeft"><div class="contentTopRight">
                                <div class="contentTopInner"></div>
                            </div></div>
                            
                            <div id="contentInner" class="contentInner">
                            
                                <div id="contentInnerInner">

                                    <jsp:include page="../topArea.jsp"/>
                                
                                    <div class="bottomArea">
                                        <div class="bottomLeft"><div class="bottomRight">
                                            
                                            <jsp:include page="../../secondaryNav.jsp" >
                                                <jsp:param name="mainTab" value="overview"/>
                                                <jsp:param name="secondaryTab" value="rules"/>
                                            </jsp:include>

                                            <jsp:include page="../../tertiaryNav.jsp" >
                                                <jsp:param name="mainTab" value="overview"/>
                                                <jsp:param name="secondaryTab" value="rules"/>
                                                <jsp:param name="tertiaryTab" value="component"/>
                                            </jsp:include>
                                            
                                            <div class="bottomAreaContent">
                                                
                                                <div class="mainContent">
                                                    <div id="mainContentInner">
                                                        <div>
                                                            <div class="pageContent">
                                                                <h2 class="title">Component Design and Development Competitions Official Rules and Regulations</h2>
                                                                    <p>The 2009 TopCoder Open Component Design Competition ("Design Competition") and Development Competition (&quot;Development Competition&quot;) will take place between February 11 and June 4, 2009. The Design Competition and Development Competition will each consist of six (6) weeks of online qualifying competitions, with up to ten (10) of the highest scoring Competitors from each of the Design and Development Competitions winning a trip to the Tournament.</p>
                                                                    <p>The Design Competition and the Development Competition are part of the Tournament, and by participating in either, or both, of these competitions, you agree to these Rules.</p>
                                                                        <div class="subtitle">
                                                                            <h3 class="subtitle">Schedule</h3>
                                                                                <p>Competitors can register for the Tournament and be eligible for the Design and/or Development Competitions between 9:00 a.m. EST on February 11, 2009 and 9:00 a.m. EST on March 19, 2009.&nbsp; The Design Competition and Development Competition will take place between February 12, 2009 and March 26, 2009 ("Design and Development Competition Period").&nbsp; </p>
                                                                                <p>During the Design and Development Competition Period, Competitors who have registered for the Design and/or Development Competition and who participate in Tournament-eligible design or development competitions (as applicable) on the TopCoder website, will receive points as outlined in these Rules.&nbsp; A Competitors submission will not be scored separately for either the Design or Development Competition.&nbsp; Only Tournament-eligible design and development competitions in which registration has closed during the Design and Development Competition Period shall be included in determining points for the Design Competition and/or Development Competition.</p>
                                                                        </div>
                                                                        <div class="subtitle">
                                                                            <h3 class="subtitle">Competition Scoring</h3>
                                                                                <p>Scoring in the Design Competition and the Development Competition is determined based on the final placement for a Competitors submission in a Tournament-eligible design or development competition (as applicable) in accordance with the rules of such competition.&nbsp; A design or development competition is Tournament-eligible if the competition is identified as being included as part of the Tournament.&nbsp; Only Competitors who are registered for the Tournament will be considered in determining place and placement points. Placement scoring is as follows:</p>
                                                                                    <ul>
                                                                                        <li>Highest Scoring Registered Competitor - 10 Points </li>
                                                                                        <li>Second Highest Scoring Registered Competitor - 7 Points </li>
                                                                                        <li>Third Highest Scoring Registered Competitor - 5 points </li>
                                                                                        <li>Fourth Highest Scoring Registered Competitor - 4 Points </li>
                                                                                    </ul>
                                                                        </div>
                                                                        <div class="subtitle">
                                                                            <h3 class="subtitle">Penalty points</h3>
                                                                                <p>All final fixes will be completed according to the applicable component schedule. If there is a delay in submitting final fixes to a submission in a Tournament-eligible design or development competition, the Competitor will be docked one (1) placement point per day (or part thereof) in which the final fixes are late. </p>
                                                                        </div>
                                                                        <div class="subtitle">
                                                                            <h3 class="subtitle">Advancement</h3>
                                                                                <p>Upon the completion of all Tournament-eligible design and development competitions during the Design and Development Competition Period, up to the five (5) highest individual placement scores that a Competitor receives during the Competition Period for the Design Competition and the Development Competition will be added for a cumulative placement score for each competition.&nbsp; Up to ten (10) Competitors with the highest cumulative placement score in the Design Competition and the Development Competition will be invited to attend the onsite awards ceremony at the Tournament.</p>
                                                                                <p>In the event of a tie, the tie will be resolved in the following manner:</p>
                                                                                    <ol>
                                                                                        <li>Highest cumulative review score of the lesser number of competitions used to calculate the cumulative placement score for the tied Competitors. </li>
                                                                                        <li>If a tie still remains, then the highest individual review score of the lesser number of competitions used to calculate the cumulative placement score for the tied Competitors. </li>
                                                                                        <li>If a tie still remains, then all remaining tied Competitors will advance to the onsite awards ceremony of the Tournament. </li>
                                                                                        <li>Design and Development Competitions in which a Competitor earned 0 points will not be counted in determining the tiebreaker.</li>
                                                                                    </ol>
                                                                                <p><strong>Example:</strong><br />
                                                                                    Competitor #1 competes in three Tournament-eligible architecture competitions, and receives the following review and placement scores:<br />
                                                                                    Project #1 - score 88.45; placement 2; placement score 7<br />
                                                                                    Project #2 - score 76.33; placement 3; placement score 5<br />
                                                                                    Project #3 - score 82.89; placement 3; placement score 5<br />
                                                                                    Cumulative placement score: 7 + 5 + 5 = 17</p>
                                                                                <p>Competitor #2 competes in two Tournament-eligible architecture competitions, and receives the following review and placement scores:<br />
                                                                                    Project #1 - score 92.56; placement 1; placement score 10<br />
                                                                                    Project #2 - score 75.83; placement 2; placement score 7<br />
                                                                                    Cumulative placement score: 10 + 7 = 17</p>
                                                                                <p>To break the tie, the Competitor with the highest cumulative review score of the lesser number of projects used to develop the cumulative placement score is the winner.<br />
                                                                                    Contestant #1: 88.45 + 82.89 = 171.34<br />
                                                                                    Contestant #2: 92.56 + 75.83 = 168.39<br />
                                                                                    Contestant #1 would win the tiebreaker.</p>
                                                                                <p></p>
                                                                        </div>
                                                                        <div class="subtitle">
                                                                            <h3 class="subtitle">About the Prizes</h3>
                                                                                <p>The Design Competition and the Development Competition will each award up to $21,500. Any and all applicable taxes on prizes are the sole responsibility of the prizewinner. </p>
                                                                                                                                                  <table class="data" width="100%" cellpadding="0" cellspacing="0">
                                                                                    <tr>
                                                                                        <th valign="top" class="first">&nbsp;</th>
                                                                                        <th>Competitor(s)</th>
                                                                                        <th>Design Competition Prize</th>
                                                                                        <th>Development  Competition Prize</th>
                                                                                        <th class="last">&nbsp;</th>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="first">&nbsp;</td>
                                                                                        <td class="first last alignText">1st place finisher*</td>
                                                                                        <td class="first last alignText">$10,000</td>
                                                                                        <td class="first last alignText">$10,000</td>
                                                                                        <td class="last">&nbsp;</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="first">&nbsp;</td>
                                                                                        <td class="first last alignText">2nd place finisher*</td>
                                                                                        <td class="first last alignText">$5,000</td>
                                                                                        <td class="first last alignText">$5,000</td>
                                                                                        <td class="last">&nbsp;</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="first">&nbsp;</td>
                                                                                        <td class="first last alignText">3rd place finisher*</td>
                                                                                        <td class="first last alignText">$2,500</td>
                                                                                        <td class="first last alignText">$2,500</td>
                                                                                        <td class="last">&nbsp;</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="first">&nbsp;</td>
                                                                                        <td class="first last alignText">4th place finisher*</td>
                                                                                        <td class="first last alignText">$1,000 each</td>
                                                                                        <td class="first last alignText">$1,000 each</td>
                                                                                        <td class="last">&nbsp;</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                      <td class="first">&nbsp;</td>
                                                                                      <td class="first last alignText">5th-10th place finishers*</td>
                                                                                      <td class="first last alignText">$500 each</td>
                                                                                      <td class="first last alignText">$500 each</td>
                                                                                      <td class="last">&nbsp;</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="first">&nbsp;</td>
                                                                                        <td class="first last alignText">Up to the first 50 Competitors<br /> 
                                                                                        with the highest amount of points<br /> 
                                                                                        (minimum of 15 placement points)</td>
                                                                                        <td class="first last alignText">Limited edition 2009 <br />
                                                                                        TopCoder Open t-shirt</td>
                                                                                        <td class="first last alignText">Limited edition 2009 <br />
                                                                                          TopCoder Open t-shirt</td>
                                                                                        <td class="last">&nbsp;</td>
                                                                                    </tr>
                                                                                </table>
                                                                                <p><em>* Prize will be awarded during the onsite Awards Presentation at the Tournament. The winner must be present at the onsite Awards Presentation to receive prize.</em></p>
                                                                                <p>Prior to Competitors receiving their cash prize, they must complete all work for all underlying design and/or development competitions and Tournament and Design and Development Competition-related work, such as final fixes.</p>
                                                                        </div>
                                                          </div>
                                                        </div>
                                                    </div><!-- End #mainContentInner -->
                                                </div><!-- End #mainContent -->                                                 
                                                
                                                <jsp:include page="../../sponsors.jsp"/>
                                                
                                            </div><!-- End .bottomAreaContent -->
                                        
                                        </div></div>
                                    </div><!-- End .bottomArea -->
                                    
                                </div><!-- End #contentInnerInner -->
                            
                            </div><!-- End #contentInner -->
                            
                            <div class="contentBottomLeft"><div class="contentBottomRight">
                                <div class="contentTopInner"></div>
                            </div></div>
                            
                    </div><!-- End #content -->
                
                </div><!-- End #wrapperContentInner -->
                
            </div>
        </div><!-- End #wrapperInner -->
    </div><!-- End #wrapper -->

<jsp:include page="../../footer.jsp"/>
</body>
</html>
