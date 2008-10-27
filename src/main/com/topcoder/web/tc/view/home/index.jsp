<%@ page import="com.topcoder.shared.util.ApplicationServer" %>
<%@ page language="java" %>
<%@ taglib uri="tc-webtags.tld" prefix="tc-webtag" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" media="screen" href="/css/home/screen.css" />
<link rel="stylesheet" type="text/css" media="screen" href="/css/home/jquery.jcarousel.css" />
<link rel="stylesheet" type="text/css" media="screen" href="/css/home/main-navigation.css" />
<!--[if IE]><link rel="stylesheet" type="text/css" href="/css/home/screen-ie.css" /><![endif]-->
<!--[if IE 7]><link rel="stylesheet" type="text/css" href="/css/home/screen-ie7.css" /><![endif]-->
<!--[if IE 6]><link rel="stylesheet" type="text/css" href="/css/home/screen-ie6.css" /><![endif]-->
<title>Programming Contests, Software Development, and Employment Services at TopCoder</title>
<script src="/js/home/jquery-1.2.6.min.js" type="text/javascript"></script>
<script src="/js/home/jquery.hoverIntent.minified.js" type="text/javascript"></script>
<script src="/js/home/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="/js/home/direct.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript">
$(document).ready(function(){
	$("#nav ul li").hoverIntent(function(){
		$(this).children("ul").slideDown("fast");
	}, function() {
		$(this).children("ul").slideUp("fast");
	});
	
	$("#nav ul ul li").hover(function() {
		$(this).parents("#nav ul li").children('a').addClass("active-item");
	}, function() {
		$(this).parents("#nav ul li").children('a').removeClass("active-item");
	});
	
	
	jQuery(document).ready(function() {
    	jQuery('#news-carousel').jcarousel({
        	easing: 'swing',
			wrap: 'both'  
    	});
	});

});

	function openWin(url, name) {
        win = window.open(url, name, "menubar=no,status=no,scrollbars=yes,resizable=no,toolbar=no,width=650,height=650");
        win.location.href = url;
        win.focus();
    }
    window.name="main"; // required for whatistopcoder popup targeting
    //-->

</script>
</head>

<body>

	<div id="header">
		<div class="wrapper">
			
<!-- MASTHEAD AND LOGO -->
			<h1 class="tc-header"><a href="http://www.topcoder.com" title="TopCoder"><span>TopCoder Direct</span></a> <sup><small>BETA</small></sup></h1>
			<h2 id="ready_engage"><span>Ready.. ENGAGE</span></h2>
			
<!-- MAIN NAVIGATION -->
			<div id="nav">
                <h3 class="hide">Main Navigation</h3>
                <ul>
                    <li class="left on"><a href="https://www.topcoder.com/">TopCoder Home</a></li>
                    <li><a href="https://software.topcoder.com/">Engage</a>
                        <ul>
                            <li><a href="http://software.topcoder.com/TCD/about.jsp">TopCoder Direct</a></li>
                            <li><a href="http://software.topcoder.com/catalog/">Components</a></li>
                            <li><a href="http://software.topcoder.com/indexTCS.jsp">Software</a></li>
                            <li><a href="http://software.topcoder.com/TCD/platform-tools.jsp">Platform Tools</a></li>
                            <li><a href="http://software.topcoder.com/TCD/training.jsp">Training &amp; Mentoring</a></li>
                            <li><a href="http://software.topcoder.com/TCD/support.jsp">Support &amp; Maintenance</a></li>
                            <li class="last-li"><a href="http://software.topcoder.com/contact.jsp">Contact Us</a></li>
                        </ul>
                    </li>
                    <li><a href="http://www.topcoder.com/tc">Compete</a>
                        <ul>
                            <li><a href="http://www.topcoder.com/tc?module=ViewActiveContests&ph=112">Component Design</a></li>
                            <li><a href="http://www.topcoder.com/tc?module=ViewActiveContests&ph=113">Component Development</a></li> 
                            <li><a href="http://www.topcoder.com/tc?module=ViewAssemblyActiveContests">Assembly</a></li>
                            <li><a href="http://www.topcoder.com/longcontest/?module=ViewActiveContests">Marathon Matches</a></li>
                            <li><a href="http://www.topcoder.com/wiki/display/tc/Bug+Races">Bug Races</a></li>
                            <li class="last-li"><a href="http://studio.topcoder.com/?module=ViewActiveContests">Studio Competitions</a></li>
                        </ul>
                    </li>
<li><a href="http://studio.topcoder.com/">Studio</a>
                        <ul>
                            <li><a href="http://studio.topcoder.com/?module=ViewActiveContests">Active Contests</a></li>
                            <li><a href="http://www.topcoder.com/direct/">Launch a Contest</a></li>
                            <li><a href="http://studio.topcoder.com/forums">Studio Forums</a></li>
                            <li><a href="http://www.tcstudioblogs.com/">Studio Blog</a></li>
                            <li><a href="http://studio.topcoder.com/?module=MyStudioHome">My Studio</a></li>
                            <li class="last-li"><a href="http://studio.topcoder.com/?module=MyStudioHome">Contact Studio</a></li>    
                        </ul>
                    </li>
                    <li><a href="http://www.topcoder.com/tc">Community</a>
                        <ul>
                            <li><a href="http://www.topcoder.com/reg/">Join TopCoder</a></li>
                            <li><a href="http://www.topcoder.com/tc?module=MyHome">My TopCoder</a></li>
                            <li><a href="http://forums.topcoder.com/">TopCoder Forums</a></li>
                            <li class="last-li"><a href="http://studio.topcoder.com/forums">Studio Forums</a></li>
                           </ul>
                    </li>
                    
                </ul>
            </div><!-- #navigation ends -->
			
			<!-- SUB NAVIGATION -->
			<div id="nav_support">
				<h3 class="hide">SUB Navigation</h3>
				<ul>
                	<li class="left"><a href="http://www.topcoder.com/">TopCoder.com</a></li>
                	<li><a href="http://software.topcoder.com/about.jsp">About TopCoder</a></li>
					<li><a href="http://www.topcoder.com/tc?module=Static&amp;d1=pressroom&amp;d2=index">News</a></li>
					<li><a href="http://software.dev.topcoder.com/contact.jsp">Contact Us</a></li>				
                    <li class="right on"><a href="http://www.topcoder.com/tc?&module=Login">Login</a></li>
				</ul>

			</div><!-- #navigation ends -->
			
		</div><!-- .wrapper ends -->
	</div><!-- #header ends -->

<!-- CONTENT BLOCKS -->
	<div id="content">
		<div class="wrapper">
		
<!-- TOPCODER DIRECT BANNER -->
			<div id="welcome-banner">
				<h2><strong>Engage!</strong> Plug into the <em>world's largest community</em> of competitive <em>software developers</em></h2>
            </div>
<!-- MAIN CONTENT -->
			<div id="content_main">
            	<div id="client-content">
                	<div id="client-box">
                    	<div id="enterprise-solutions">
                        	<h3>Enterprise Solutions</h3>
                            <h4>TopCoder Global Platform</h4>
                            <ul class="link-list">
                            	<li class="first"><a href="http://software.topcoder.com/TCD/platform-tools.jsp">Tools</a></li>
                                <li><a href="http://software.topcoder.com/TCD/training.jsp">Training</a></li>
                                <li><a href="http://software.topcoder.com/catalog/index.jsp">Components</a></li>
                                <li class="last"><a href="http://software.topcoder.com/TCD/support.jsp">Support</a></li>
                            </ul>
                            <div class="button-container">
                            	<a class="button" href="http://software.topcoder.com/TCD/about.jsp">Learn More</a>
                            </div>
                        </div>
                        <div id="tc-direct">
                        	<h3><a href="http://www.topcoder.com/direct/cockpit/cockpit.jsp">TopCoder Direct</a></h3>
                            <h4>Launch your own design competition!</h4>
                            <ul class="link-list">
                            	<li class="first"><a href="http://www.topcoder.com/direct">Web Sites</a></li>
                                <li><a href="http://www.topcoder.com/direct">Logo Design</a></li>
                                <li><a href="http://www.topcoder.com/direct">Print Design</a></li>
                                <li class="last"><a href="http://www.topcoder.com/direct">Applications</a></li>
                            </ul>
                            <div class="button-container">
                            	<a class="button" href="http://www.topcoder.com/direct/cockpit/cockpit.jsp">Launch Direct</a>
                            </div>
                        </div>
                    </div>
                    <div id="client-box-bottom"></div>
                    <div class="wide-ad-banner">
                    	<a href="http://www.topcoder.com/tc?module=LinkTracking&link=http://winningformula.espn.com/&refer=homepage"><img src="/images/home/espn-banner.png" alt="Are you ready for some football" /></a>
                    </div>
                </div>
                <div id="member-content">
                	<div id="member-box">
                    	<div id="member-area">
                        	<div id="member-count">		
                            	<h4><span><tc-webtag:format object="${sessionInfo.memberCount}" format="#,##0"/></span> members and growing!</h4>
                         	</div>
                             <div id="member-buttons">
                                <a class="small-button" href="http://www.topcoder.com/reg/"><span>Register</span></a>
                                <a class="small-button" href="http://www.topcoder.com/tc?module=MyHome"><span>My TopCoder</span></a>
                                <a class="small-button" href="http://forums.topcoder.com/"><span>Forums</span></a>
                            </div>
                        </div>
                        <div id="compete">
                        	<h2>Compete against the <strong>best!</strong></h2>
                            <div id="compete-competitions">
                            	<a href="http://www.topcoder.com/tc"><img src="/images/home/competition-tc-thumbnail.png" alt="TC Competitions" /></a>
                                <h3><a href="http://www.topcoder.com/tc">Competitions</a></h3>
                                <p>Component Design, Component Development, Assembly, Bug Races, Marathon, Algorithm&hellip;</p>
                            </div>
                            <div id="compete-studio">
                            	<a href="http://studio.topcoder.com/"><img src="/images/home/competition-studio-thumbnail.png" alt="TopCoder Studio" /></a>
                                <h3><a href="http://studio.topcoder.com/">TopCoder Studio</a></h3>
                                <p>The creative side of TopCoder. Logos, posters, storyboards, prototypes&hellip;</p>
                            </div>
                            <div id="compete-digitalrun">
                            	<a href="http://www.topcoder.com/dr"><img src="/images/home/competition-digitalrun-thumbnail.png" alt="Digital Run" /></a>
                                <h3><a href="http://www.topcoder.com/dr">Digital Run</a></h3>
                                <p>More Tracks, More Money, More Often!</p>
                            </div>
                        </div>
                    </div>
                    <div id="member-box-bottom"></div>
                </div>
			</div><!-- #content_main -->
			
		</div><!-- .wrapper ends -->
	</div><!-- #content ends -->
	
<!-- NEWS -->
	<div id="news">
		<div class="wrapper">
			<h2>News and Announcements</h2>
			<ul id="news-carousel" class="tc-news">
    	<li>
        	<div class="news-image">
            	<a href="http://www.topcoder.com/tc?module=Static&d1=pressroom&d2=pr_102308"><img src="/images/home/news-carousel/sd-bestpractices.png" alt="Software Development Best Practices TopCoder Challenge" /></a>     
            </div>
        	 <div class="news-text">
            	<p><a href="http://www.topcoder.com/tc?module=Static&d1=pressroom&d2=pr_102308">TopCoder Joins Lineups for SD Best Practices and Software Business 2008 Conferences October 28-31</a></p>
            </div>
        </li>
        <li>
        	<div class="news-image">
            	<a href="http://www.topcoder.com/tc?module=LinkTracking&link=http://industry.bnet.com/technology/1000470/aol-finds-topcoder-tops/&refer=pr_index"><img src="/images/home/news-carousel/bnet.png" alt="BNET" /></a>
            </div>
        	<div class="news-text">
            	<p><a href="http://www.topcoder.com/tc?module=LinkTracking&link=http://industry.bnet.com/technology/1000470/aol-finds-topcoder-tops/&refer=pr_index">AOL Finds TopCoder Tops</a></p>
           		<p class="news-description">AOL technical director Nic Perez talks about his experience as a TopCoder client for a number of major projects over the last three years.</p>
            </div>
        </li>
    	<li>
        	<div class="news-image">
            	<a href="http://www.topcoder.com/tc?module=LinkTracking&link=http://www.pcworld.com/businesscenter/article/152324/topcoder_eyeing_smb_market.html&refer=pr_index"><img src="/images/home/news-carousel/pcworld.png" alt="PCWorld" /></a>
            </div>
        	<div class="news-text">
            	<p><a href="http://www.topcoder.com/tc?module=LinkTracking&link=http://www.pcworld.com/businesscenter/article/152324/topcoder_eyeing_smb_market.html&refer=pr_index">TopCoder Eyeing SMB Market</a></p>
            	<p class="news-description">TopCoder is turning its sights on the SMB market with a new portal called TopCoder Direct that will come out of beta at the end of October.</p>
            </div>
        </li>
        <li>
        	<div class="news-image">
            	<a href="http://www.topcoder.com/tc?module=LinkTracking&link=http://www.cio.com/article/449523/Cool_Programmer_Challenge_Football_Algorithm_&refer=pr_index"><img src="/images/home/news-carousel/cio.png" alt="CIO" /></a>
            </div>
        	<div class="news-text">
            	<p><a href="http://www.topcoder.com/tc?module=LinkTracking&link=http://www.cio.com/article/449523/Cool_Programmer_Challenge_Football_Algorithm_&refer=pr_index">Cool Programmer Challenge: Football Algorithm = $50,000</a></p>
            	<p class="news-description">ESPN plans to use the algorithm for prognostication, on-air prediction and pregame previews.</p>
            </div>
        </li>
        <li>
        	<div class="news-image">
            	<a href="http://www.topcoder.com/tc?module=Static&d1=pressroom&d2=pr_082108"><img src="/images/home/news-carousel/inc500.png" alt="Inc 500" /></a>
            </div>
        	<div class="news-text">
            	<p><a href="http://www.topcoder.com/tc?module=Static&d1=pressroom&d2=pr_082108">TopCoder One of Inc. Magazine's 500 Fastest-Growing Private Companies in America for Second Consecutive Year</a></p>
            </div>
        </li>
    </ul>
		</div><!-- .wrapper ends -->
	</div><!-- #news ends -->
	
    
    	
<!-- LINKS BLOCK -->
	<div id="links">
		<div class="wrapper">
			<div class="col">
				<h4>Customer Service</h4>
				<ul>
					<li><a href="http://software.dev.topcoder.com/contact.jsp">Contact Support</a></li>
					<li><a href="http://www.topcoder.com/tc?module=Static&d1=about&d2=privacy">Privacy Policy</a></li>
					<li><a href="http://topcoderblogs.com/direct/?page_id=24">Terms &amp; Conditions</a></li>
				</ul>
			</div>
			
			<div class="col">
				<h4>About TopCoder</h4>
				<ul>
					<li><a href="http://software.topcoder.com/contact.jsp">Contact Us</a></li>
					<li><a href="http://www.topcoder.com/tc?module=Static&d1=pressroom&d2=mediaRequestForm">Public Relations</a></li>
                    <li><a href="http://software.topcoder.com/TCD/rss.jsp">RSS Feeds</a></li>
					<li><a href="http://www.topcoder.com/tc?module=Static&d1=pressroom&d2=index">Press Room</a></li>
					<li><a href="http://www.topcoder.com/tc?module=Static&d1=about&d2=jobs">Working at TopCoder</a></li>
					<li><a href="http://www.topcoder.com/tc?module=Static&d1=about&d2=terms">Legal Information</a></li>
				</ul>

			</div>
			
			<div class="col">
				<h4>Platform Tools</h4>
				<ul><li><a href="http://www.topcoder.com/wiki/display/tc/Upcoming+Contests">Pipeline</a></li>
					<li><a href="http://www.topcoder.com/wiki/display/tc/TopCoder+UML+Tool">UML Tool</a></li>
					<li><a href="http://forums.topcoder.com/?module=Category&categoryID=22">TopCoder Forums</a></li>
					<li><a href="http://software.topcoder.com/catalog/index.jsp">Component Catalog</a></li>
					<li><a href="http://www.topcoder.com/wiki/">TopCoder Wiki</a></li>
				</ul>
		  </div>
			
			<div class="col">
				<h4>TopCoder Community</h4>
				<ul>
               		<li><a href="http://www.topcoder.com/tc">TopCoder Community Home</a></li>
					<li><a href="http://forums.topcoder.com/">TopCoder Forums</a></li>
					<li><a href="http://studio.topcoder.com/forums">Studio Forums</a></li>
				</ul>
			
				<h4>TopCoder Blogs</h4>
				<ul>
					<li><a href="http://topcoderblogs.com/direct/">TopCoder Direct</a></li>
					<li><a href="http://tcstudioblogs.com/">Studio TopCoder</a></li>
				</ul>
			</div>
			
			<div class="col">
				<h4>My Account</h4>
				<ul>
                	<li><a href="http://www.topcoder.com/reg/">TopCoder Registration</a></li>
					<li><a href="http://www.topcoder.com/tc?module=MyHome">Manage Profile</a></li>
                    <li><a href="http://www.topcoder.com/dr">TopCoder Digital Run</a></li>
                    <li><a href="http://studio.topcoder.com/?module=Static&d1=digitalrun&d2=2008v2&d3=home">Studio Cup</a></li>
				</ul>
			</div>
			
			<div class="col">
				<h4>Powered by TopCoder</h4>
				<ul>
					<li><a href="http://software.topcoder.com/">TopCoder Direct</a></li>
					<li><a href="http://www.topcoder.com/">TopCoder.com</a></li>
					<li><a href="http://studio.topcoder.com">Studio TopCoder</a></li>
				</ul>
			</div>

		</div><!-- .wrapper ends -->
	</div><!-- #links block ends -->

<!-- FOOTER BLOCK -->
	<div id="footer">
		<div class="wrapper">
			<p id="footer_1800"><strong>1-866-TOPCODER or Service@TopCoder.com</strong></p>
			<p>TopCoder is the world's largest competitive software development community with more than 167,000 developers representing over 200 countries.</p>
			<p>Copyright &copy;2001-2008, TopCoder, Inc. All rights reserved.</p>
		</div><!-- .wrapper ends -->
	</div><!-- #footer ends -->
	
<%-- Google Analytics --%>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-3257193-1");
_udn="topcoder.com";
pageTracker._initData();
pageTracker._trackPageview();
</script>

</body>
</html>
