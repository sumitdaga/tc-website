<%@ page import="com.topcoder.web.tc.Constants"%> 
            <table width="180" cellspacing="0" cellpadding="0" border="0">
                <tr>
                    <td id="leftNavTitle">
                        <table border="0" cellspacing="0" cellpadding="0">
                            <tr><td class="moduleTitle" height="23"><img src="/i/header_member_search.gif" alt="Member Search" width="170" height="23" border="0" /></td></tr>            
                        </table>

                        <table border="0" cellspacing="3" cellpadding="0">
                            <tr valign="middle"><form name="simpleSearchForm" method="get" action="/tc">
                                <td valign="middle">
                                    <input type="hidden" name="module" value="SimpleSearch" />
                                    <input type="text" name="<%=Constants.HANDLE%>" value="Handle:" size="12" maxlength="15" onFocus="javascript: if (document.simpleSearchForm.<%=Constants.HANDLE%>.value=='Handle:') document.simpleSearchForm.<%=Constants.HANDLE%>.value = '';" onBlur="javascript: if (document.simpleSearchForm.<%=Constants.HANDLE%>.value == '') document.simpleSearchForm.<%=Constants.HANDLE%>.value = 'Handle:';" />
                                </td>
                                <td class="statTextBig"><A href="javascript:void document.simpleSearchForm.submit();"><img src="/i/button_go_member_search.gif" alt="Go" width="24" height="18" vspace="3" border="0" /></A></td>
                                <td width="99%"><img src="/i/clear.gif" alt="" width="2" height="1" border="0" /></td>
                            </tr>
                
                            <tr>
                                <td class="statTextBig" colspan="2" nowrap>&#160;<A href="/tc?module=ViewAdvanced"><strong>Advanced Search</strong></A></td></form>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
