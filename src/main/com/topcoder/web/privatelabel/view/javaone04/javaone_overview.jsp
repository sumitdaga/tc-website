<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ page import="com.topcoder.web.privatelabel.Constants,
                 com.topcoder.shared.dataAccess.resultSet.ResultSetContainer" %>
<%@ taglib uri="/tc-webtags.tld" prefix="tc-webtag" %>
<jsp:usebean id="sessionInfo" class="com.topcoder.web.common.SessionInfo" scope="request" />
<jsp:usebean id="regInfo" class="com.topcoder.web.privatelabel.model.SimpleRegInfo" scope="session" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<link rel=stylesheet href="http://java.sun.com/javaone/javaone2004.css">

<title>2004 JavaOne Coding Challenge</title>



<jsp:include page="../script.jsp" />

</head>
	<body>
		<div align="center">
			<table border=0 cellspacing=5 width="800">
				<tr>
					<td colspan="2" align="left"> <img src="/i/events/javaone04/javaone04_logo.gif" width="166" height="80" border="0"/>
					<img src="/i/clear.gif" width="460" height="80" border="0"/>
					<a href="http://www.topcoder.com/"><img src="/i/events/javaone04/pbtc_logo.gif" width="166" height="80" border="0"/></a></td>
				</tr>
				<tr><td colspan="2"><img src="/i/events/javaone04/purple_dot.gif" width="800" height="25" border="0"></td></tr>
				<tr>
					<td width="164">
									<p> Overview<br/>
										Prizes<br/>
										Schedule<br/>
										Practice Arena</td></p>
					<td>
					<p><span class ="title">Code - Compete - Win!</span></p>
					
					<p><span class ="middle">This year, Sun Microsystems has teamed up with TopCoder, Inc. to bring Attendees the JavaOneSM Coding Challenge, 
					an event that gathers together developers who use JavaTM technology for coding, competition, and fun. By participating 
					in the JavaOne Coding Challenge, Attendees have a chance to apply what they've learned during the Conference sessions 
					to real-world programming problems that have a Mobility, Enterprise Applications, or Web Services theme. If you are a 
					Java technology developer, you do not want to miss this event. The first 1000 participants receive a JavaOne Coding 
					Challenge t-shirt and messenger bag.</span></p>
					
					<p><span class ="title">Let the Coding Begin! <br/>
					<span class ="middle">A 30-minute challenge pits you against all other participants at the JavaOne conference</span></p>
					
					<p><span class ="middle">In the on-site Competition Arena, participants will be presented with real-world programming problems and will be 
					given 30 minutes to use the Java programming language to code, compile, test, and submit solutions to the problem sets. 
					The problems will focus on the 3 major themes for the 2004 JavaOne conference - Mobility, Enterprise Applications, and 
					Web Services. </span></p>

					<p><span class ="middle">Each day, TopCoder will objectively score the competitors' submissions for accuracy and for how long they took to 
					complete the problem. At the conclusion of each day's Qualification Round, the four individuals with the highest scores 
					will be invited back in the evening to compete head-to-head in the Competition Arena, where they will battle it out for 
					that day's grand prize.</span></p>
					
					<p><span class ="title">Be Recognized</span></p>
					
					<p><span class ="middle">Have you ever wanted to show your colleagues how much better you are in your Java programming skills? This is the 
					way to show off your stuff. Take your grand prize back to the office and show your peers that you came out on top! 
					The winners of each day's competition will be recognized by posting their name on the Coding Challenge Scoreboard.</span></p>
					
					</td>
				</tr>
			</table>
		
		
		</div>
	</body>
</html>