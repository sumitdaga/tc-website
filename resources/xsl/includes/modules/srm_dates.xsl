<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="dates.xsl"/>
  <xsl:template name="srm_dates">
    <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" VALIGN="top" WIDTH="100%" BGCOLOR="#333333">
            <TR> 
              <TD VALIGN="top"><IMG ALT="" WIDTH="6" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
              <TD VALIGN="middle" HEIGHT="18" CLASS="statTextBig">Next MATCH:</TD>
              <TD VALIGN="top"><IMG ALT="" WIDTH="8" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
            </TR>
            <TR><TD VALIGN="top" COLSPAN="3" BGCOLOR="#333333"><IMG ALT="" WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD></TR>             
    </TABLE>          
            <TABLE WIDTH="100%" CELLSPACING="0" CELLPADDING="0" BORDER="0" BGCOLOR="#000000"> 
              <!-- BACKGROUND="/i/next_srm_bg.gif"
                <TR> 
                  <TD CLASS="statText" VALIGN="top"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
                  <TD CLASS="statText" VALIGN="top"><IMG SRC="/i/clear.gif" WIDTH="130" HEIGHT="1" BORDER="0"/></TD>
                </TR> -->                      
                <xsl:call-template name="dates">
                  <xsl:with-param name="class">statText</xsl:with-param>
                </xsl:call-template>
                <TR> 
                  <TD COLSPAN="2"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="3" BORDER="0"/></TD>
                </TR>
      <TR> 
        <TD VALIGN="top" COLSPAN="2" BGCOLOR="#333333"><IMG ALT="" WIDTH="1" HEIGHT="1" SRC="/i/clear.gif" BORDER="0"/></TD>
      </TR>                 
            </TABLE>
  </xsl:template>
</xsl:stylesheet>
