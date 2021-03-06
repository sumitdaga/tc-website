<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../top.xsl"/>
  <xsl:import href="../script.xsl"/>
  <xsl:import href="../includes/body_top.xsl"/>
  <xsl:import href="../foot.xsl"/>
  <xsl:import href="../includes/modules/practice_room.xsl"/>
  <xsl:import href="../includes/modules/calendar.xsl"/>
  <xsl:import href="../includes/modules/tournament_links.xsl"/>
  <xsl:import href="../includes/modules/rule_links.xsl"/>  
  <xsl:import href="../includes/global_left.xsl"/> 
  <xsl:import href="../includes/public_right_col.xsl"/>     
  <xsl:output indent="no" method="html" doctype-public="-//W3C//DTD HTML 4.0 Transitional//EN"/>
  <xsl:template match="/">
    <HTML>
      <HEAD>
        <xsl:call-template name="Preload"/>      
        <TITLE>TopCoder :: Tournaments</TITLE>
        <xsl:call-template name="CSS"/>      
        <!--<LINK REL="stylesheet" TYPE="text/css" HREF="/css/style.css"/>
        <LINK REL="stylesheet" TYPE="text/css" HREF="/css/coders.css"/>-->
        <META NAME="description" CONTENT="TopCoder is a programming tournament site. All members who compete attain a rating that provides a metric for coding competence and potential. These ratings, coupled with tournament performance, can lead to monetary rewards and employment opportunities."/>
        <META NAME="keywords" CONTENT="Computer Jobs, Programming, Programming Jobs, Programming Contest, Programming Competition, Online Games, Coding, Information Technology Jobs, Java, C++"/>
      </HEAD>
      <BODY BGCOLOR="#CCCCCC" TOPMARGIN="0" MARGINHEIGHT="0" LEFTMARGIN="0" MARGINWIDTH="0">
        <a name="top_page"></a>
        <xsl:variable name="contestId">
          <xsl:value-of select="/TC/SCHEDULE/ContestId"/>
        </xsl:variable>
        <xsl:call-template name="Top"/>
        <!-- Body Begins -->
        <TABLE WIDTH="100%" HEIGHT="69%" BORDER="0" CELLPADDING="0" CELLSPACING="0" BGCOLOR="#CCCCCC">
          <TR>
            <!-- Left Column Begins -->
            <TD WIDTH="180" VALIGN="top">
              <!-- Left Column Include Begins -->  
              <!-- Global Seconday Nav Begins -->  
              <xsl:call-template name="global_left"/>
              <!-- Global Seconday Nav Ends -->      
              <!-- Left Column Include Ends -->          
            </TD>
            <!-- Left Column Ends -->
            <!-- Gutter Begins -->
            <TD WIDTH="4" BGCOLOR="#CCCCCC" VALIGN="top"><IMG SRC="/i/clear.gif" WIDTH="4" HEIGHT="26" BORDER="0"/></TD>
            <!-- Gutter Ends -->
            <!-- Body Area -->
            <!-- Center Column Begins -->  
		<TD CLASS="bodyText" WIDTH="100%" BGCOLOR="#CCCCCC" VALIGN="top">
<xsl:call-template name="BodyTop">
  <xsl:with-param name="image1">steelblue</xsl:with-param>
  <xsl:with-param name="image">tournaments_blue</xsl:with-param>
  <xsl:with-param name="title">&#160;</xsl:with-param>
</xsl:call-template>
<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" BGCOLOR="#000033" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%">
	<TR>
		<TD BGCOLOR="#000033" BACKGROUND="/i/steel_darkblue_bg.gif" VALIGN="top" WIDTH="11"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="1" BORDER="0"/></TD>
		<TD COLSPAN="2" VALIGN="top" BGCOLOR="#000033" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="240" HEIGHT="1" BORDER="0"/><BR/>


<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
                    <TR>
                      <TD COLSPAN="5" ALIGN="center"><A HREF="/index?t=tournaments&amp;c=tourny_sched"><IMG SRC="/i/tournament/sun_banner.gif" ALT="" WIDTH="428" HEIGHT="84" VSPACE="5" BORDER="0"/></A></TD>
                    </TR>
				<TR>
					<TD CLASS="statText" COLSPAN="5">Here is a view of the Top-10 highest point totals in the West Region for the first round of the 2002 Sun &amp; TopCoder Collegiate Challenge.</TD>
				</TR>
				<TR>
					<TD COLSPAN="5"><IMG HEIGHT="5" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>									
				<TR BGCOLOR="#000033" BACKGROUND="/i/steel_bluebv_bg.gif">
					<TD WIDTH="48" BACKGROUND="/i/steel_bluebv_bg.gif" VALIGN="middle" HEIGHT="18"><IMG HEIGHT="1" WIDTH="48" SRC="/i/clear.gif"/></TD>
					<TD WIDTH="40%" BACKGROUND="/i/steel_bluebv_bg.gif" VALIGN="middle" CLASS="statText">Handle</TD>
					<TD WIDTH="20%" BACKGROUND="/i/steel_bluebv_bg.gif" VALIGN="middle" CLASS="statText">&#160;</TD>
					<TD ALIGN="right" WIDTH="40%" BACKGROUND="/i/steel_bluebv_bg.gif" VALIGN="middle" CLASS="statText">&#160;Final Points</TD>
					<TD WIDTH="10" BACKGROUND="/i/steel_bluebv_bg.gif" VALIGN="middle"><IMG HEIGHT="1" WIDTH="10" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="1" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD BGCOLOR="#000033" BACKGROUND="/i/steel_blue_bg.gif" align="left" COLSPAN="5" HEIGHT="11" VALIGN="middle" CLASS="statText"><b>&#160;Room 19</b></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
					<TD align="left" CLASS="statText"><A HREF="/?t=statistics&amp;c=member_profile&amp;Coder_Id=129672" CLASS="coderTextRed">doeth</A></TD>
					<TD VALIGN="middle" CLASS="statText"><A HREF="/stat?c=coder_room_stats&amp;rd=61&amp;cr=129672" CLASS="statText">View Code</A></TD>
					<TD ALIGN="right" CLASS="statText">1569.02</TD>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD BGCOLOR="#000033" BACKGROUND="/i/steel_blue_bg.gif" align="left" COLSPAN="5" HEIGHT="11" VALIGN="middle" CLASS="statText"><b>&#160;Room 21</b></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
					<TD align="left" CLASS="statText"><A HREF="/?t=statistics&amp;c=member_profile&amp;Coder_Id=153902" CLASS="coderTextRed">evd</A></TD>
					<TD VALIGN="middle" CLASS="statText"><A HREF="/stat?c=coder_room_stats&amp;rd=61&amp;cr=153902" CLASS="statText">View Code</A></TD>
					<TD ALIGN="right" CLASS="statText">1509.99</TD>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD BGCOLOR="#000033" BACKGROUND="/i/steel_blue_bg.gif" align="left" COLSPAN="5" HEIGHT="11" VALIGN="middle" CLASS="statText"><b>&#160;Room 17</b></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
					<TD align="left" CLASS="statText"><A HREF="/?t=statistics&amp;c=member_profile&amp;Coder_Id=114443" CLASS="coderTextRed">jonmac</A></TD>
					<TD VALIGN="middle" CLASS="statText"><A HREF="/stat?c=coder_room_stats&amp;rd=61&amp;cr=114443" CLASS="statText">View Code</A></TD>
					<TD ALIGN="right" CLASS="statText">1320.58</TD>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD BGCOLOR="#000033" BACKGROUND="/i/steel_blue_bg.gif" align="left" COLSPAN="5" HEIGHT="11" VALIGN="middle" CLASS="statText"><b>&#160;Room 19</b></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
					<TD align="left" CLASS="statText"><A HREF="/?t=statistics&amp;c=member_profile&amp;Coder_Id=260142" CLASS="coderTextYellow">dharding</A></TD>
					<TD VALIGN="middle" CLASS="statText"><A HREF="/stat?c=coder_room_stats&amp;rd=61&amp;cr=260142" CLASS="statText">View Code</A></TD>
					<TD ALIGN="right" CLASS="statText">1294.03</TD>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD BGCOLOR="#000033" BACKGROUND="/i/steel_blue_bg.gif" align="left" COLSPAN="5" HEIGHT="11" VALIGN="middle" CLASS="statText"><b>&#160;Room 23</b></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
					<TD align="left" CLASS="statText"><A HREF="/?t=statistics&amp;c=member_profile&amp;Coder_Id=108262" CLASS="coderTextYellow">mathgodleo</A></TD>
					<TD VALIGN="middle" CLASS="statText"><A HREF="/stat?c=coder_room_stats&amp;rd=61&amp;cr=108262" CLASS="statText">View Code</A></TD>
					<TD ALIGN="right" CLASS="statText">1189.84</TD>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD BGCOLOR="#000033" BACKGROUND="/i/steel_blue_bg.gif" align="left" COLSPAN="5" HEIGHT="11" VALIGN="middle" CLASS="statText"><b>&#160;Room 20</b></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
					<TD align="left" CLASS="statText"><A HREF="/?t=statistics&amp;c=member_profile&amp;Coder_Id=120816" CLASS="coderTextRed">malpt</A></TD>
					<TD VALIGN="middle" CLASS="statText"><A HREF="/stat?c=coder_room_stats&amp;rd=61&amp;cr=120816" CLASS="statText">View Code</A></TD>
					<TD ALIGN="right" CLASS="statText">1153.05</TD>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD BGCOLOR="#000033" BACKGROUND="/i/steel_blue_bg.gif" align="left" COLSPAN="5" HEIGHT="11" VALIGN="middle" CLASS="statText"><b>&#160;Room 22</b></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
					<TD align="left" CLASS="statText"><A HREF="/?t=statistics&amp;c=member_profile&amp;Coder_Id=157974" CLASS="coderTextRed">bigg_nate</A></TD>
					<TD VALIGN="middle" CLASS="statText"><A HREF="/stat?c=coder_room_stats&amp;rd=61&amp;cr=157974" CLASS="statText">View Code</A></TD>
					<TD ALIGN="right" CLASS="statText">1119.55</TD>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD BGCOLOR="#000033" BACKGROUND="/i/steel_blue_bg.gif" align="left" COLSPAN="5" HEIGHT="11" VALIGN="middle" CLASS="statText"><b>&#160;Room 22</b></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
					<TD align="left" CLASS="statText"><A HREF="/?t=statistics&amp;c=member_profile&amp;Coder_Id=262902" CLASS="coderTextYellow">ZandMaster</A></TD>
					<TD VALIGN="middle" CLASS="statText"><A HREF="/stat?c=coder_room_stats&amp;rd=61&amp;cr=262902" CLASS="statText">View Code</A></TD>
					<TD ALIGN="right" CLASS="statText">1071.97</TD>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD BGCOLOR="#000033" BACKGROUND="/i/steel_blue_bg.gif" align="left" COLSPAN="5" HEIGHT="11" VALIGN="middle" CLASS="statText"><b>&#160;Room 24</b></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>							
				<TR>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
					<TD align="left" CLASS="statText"><A HREF="/?t=statistics&amp;c=member_profile&amp;Coder_Id=113178" CLASS="coderTextYellow">po</A></TD>
					<TD VALIGN="middle" CLASS="statText"><A HREF="/stat?c=coder_room_stats&amp;rd=61&amp;cr=113178" CLASS="statText">View Code</A></TD>
					<TD ALIGN="right" CLASS="statText">1055.60</TD>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD BGCOLOR="#000033" BACKGROUND="/i/steel_blue_bg.gif" align="left" COLSPAN="5" HEIGHT="11" VALIGN="middle" CLASS="statText"><b>&#160;Room 19</b></TD>
				</TR>
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="2" WIDTH="1" SRC="/i/clear.gif"/></TD>
				</TR>
				<TR>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
					<TD align="left" CLASS="statText"><A HREF="/?t=statistics&amp;c=member_profile&amp;Coder_Id=264781" CLASS="coderTextYellow">Mackin</A></TD>
					<TD VALIGN="middle" CLASS="statText"><A HREF="/stat?c=coder_room_stats&amp;rd=61&amp;cr=264781" CLASS="statText">View Code</A></TD>
					<TD ALIGN="right" CLASS="statText">1052.87</TD>
					<TD><IMG WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
				</TR>				
				<TR>
					<TD COLSPAN="5" WIDTH="1"><IMG HEIGHT="10" WIDTH="1" SRC="/i/clear.gif" BORDER="0"/></TD>
				</TR>	
</TABLE>  
		</TD>
		<TD VALIGN="top" WIDTH="10"><IMG SRC="/i/clear.gif" ALT="" WIDTH="10" HEIGHT="1" BORDER="0"/></TD>
	</TR>
	<TR>
		<TD COLSPAN="4" VALIGN="top" BGCOLOR="#000033" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="10" BORDER="0"/></TD>
	</TR>   	
	<TR>
		<TD VALIGN="top" BACKGROUND="" BGCOLOR="#CCCCCC" WIDTH="11" ALIGN="right"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="8" BORDER="0"/></TD>
		<TD BACKGROUND="/i/steel_darkblue_bg.gif" VALIGN="top" BGCOLOR="#000033" WIDTH="14"><IMG SRC="/i/table_mid_left2x.gif" ALT="" WIDTH="14" HEIGHT="8" BORDER="0"/></TD>
		<TD BACKGROUND="/i/steel_darkblue_bg.gif" VALIGN="top" BGCOLOR="#000033" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
		<TD VALIGN="top" BACKGROUND="" BGCOLOR="#CCCCCC" WIDTH="10"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
	</TR>	
	<TR>
		<TD VALIGN="top" BACKGROUND="" WIDTH="11" ALIGN="right" BGCOLOR="#CCCCCC"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="8" BORDER="0"/></TD>
		<TD VALIGN="top" BACKGROUND="" BGCOLOR="#CCCCCC" WIDTH="14"><IMG SRC="/i/table_btm_left2.gif" ALT="" WIDTH="14" HEIGHT="8" BORDER="0"/></TD>
		<TD VALIGN="top" BACKGROUND="" BGCOLOR="#CCCCCC" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
		<TD VALIGN="top" BACKGROUND="" BGCOLOR="#CCCCCC" WIDTH="10"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
	</TR>
</TABLE>
		</TD>
	<!-- Center Column Ends -->
<!-- Body Area Ends -->

	<!-- Gutter -->
		<TD WIDTH="4" BGCOLOR="#CCCCCC"><IMG SRC="/i/clear.gif" WIDTH="4" HEIGHT="1" BORDER="0"/></TD>
    <!-- Gutter Ends -->
	<!-- Right Column Begins -->
		<TD WIDTH="180" VALIGN="top"><IMG SRC="/i/clear.gif" WIDTH="170" HEIGHT="1" BORDER="0"/><BR/>
<!-- Right Column Include Begins -->        
        <xsl:call-template name="public_right_col"/>        
<!-- Right Column Include Ends -->        
        </TD>
	<!-- Right Column Ends -->
	<!-- Gutter -->
		<TD WIDTH="25" BGCOLOR="#CCCCCC"><IMG SRC="/i/clear.gif" WIDTH="25" HEIGHT="1" BORDER="0"/></TD>
    <!-- Gutter Ends -->
	</TR>
</TABLE>
<!-- Body Ends -->
        <xsl:call-template name="Foot"/>
      </BODY>
    </HTML>
  </xsl:template>
</xsl:stylesheet>

