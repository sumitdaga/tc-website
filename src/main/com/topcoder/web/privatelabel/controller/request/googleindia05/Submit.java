package com.topcoder.web.privatelabel.controller.request.googleindia05;

import com.topcoder.web.privatelabel.controller.request.FullRegSubmit;
import com.topcoder.web.privatelabel.controller.request.BaseActivate;
import com.topcoder.web.privatelabel.model.SimpleRegInfo;
import com.topcoder.web.privatelabel.model.ResumeRegInfo;
import com.topcoder.web.privatelabel.Constants;
import com.topcoder.web.common.TCWebException;
import com.topcoder.web.common.SessionInfo;
import com.topcoder.web.common.BaseServlet;
import com.topcoder.web.ejb.resume.ResumeServices;
import com.topcoder.web.ejb.user.User;
import com.topcoder.security.UserPrincipal;
import com.topcoder.shared.util.*;
import com.topcoder.shared.dataAccess.Request;
import com.topcoder.shared.dataAccess.resultSet.ResultSetContainer;

import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;

/**
 * @author  dok
 * @version  $Revision$ $Date$
 * Create Date: Jan 26, 2005
 */
public class Submit extends FullRegSubmit {

    //protected UserPrincipal commit(SimpleRegInfo regInfo) throws TCWebException {
    protected long store(SimpleRegInfo regInfo) throws Exception {
        long userId = super.store(regInfo);

        try {
            ResumeRegInfo info = (ResumeRegInfo) regInfo;
            if (info.getUploadedFile() != null) {
                byte[] fileBytes = null;
                String fileName = "";
                int fileType = -1;

                fileBytes = new byte[(int) info.getUploadedFile().getSize()];
                info.getUploadedFile().getInputStream().read(fileBytes);
                if (fileBytes == null || fileBytes.length == 0)
                    addError(Constants.FILE, "Sorry, the file you attempted to upload was empty.");
                else {
                    //fileType = Integer.parseInt(file.getParameter("fileType"));
                    Map types = getFileTypes(transDb);
                    if (types.containsKey(info.getUploadedFile().getContentType())) {
                        log.debug("FOUND TYPE");
                        fileType = ((Long) types.get(info.getUploadedFile().getContentType())).intValue();
                    } else {
                        log.debug("DID NOT FIND TYPE " + info.getUploadedFile().getContentType());
                    }
                    fileName = info.getUploadedFile().getRemoteFileName();
                    ResumeServices resumeServices = (ResumeServices) createEJB(getInitialContext(), ResumeServices.class);
                    resumeServices.putResume(userId, fileType, fileName, fileBytes, transDb);
                }
            }

        } catch (TCWebException e) {
            throw e;
        } catch (Exception e) {
            throw new TCWebException(e);
        }

        return userId;
    }

    protected Map getFileTypes(String db) throws Exception {
        Request r = new Request();
        r.setContentHandle("file_types");
        Map qMap = getDataAccess(db, true).getData(r);
        ResultSetContainer questions = (ResultSetContainer) qMap.get("file_types");
        ResultSetContainer.ResultSetRow row = null;

        Map ret = new HashMap();
        for (Iterator it = questions.iterator(); it.hasNext();) {
            row = (ResultSetContainer.ResultSetRow) it.next();
            ret.put(row.getStringItem("mime_type"), new Long(row.getLongItem("file_type_id")));
        }
        return ret;
    }

    protected void setNextPage() {
        //reg closed
        setNextPage(Constants.GOOGLE04_REG_CLOSED_PAGE);
        setIsNextPageInContext(true);

/*
        if (isEligible((FullRegInfo)regInfo)) {
            if (hasErrors()) {
                setNextPage(Constants.GOOGLE04_REG_PAGE);
                setIsNextPageInContext(true);
            } else {
                SessionInfo info = (SessionInfo)getRequest().getAttribute(BaseServlet.SESSION_INFO_KEY);
                StringBuffer buf = new StringBuffer(150);
                buf.append("http://");
                buf.append(ApplicationServer.SERVER_NAME);
                buf.append(info.getServletPath());
                buf.append("?");
                buf.append(Constants.MODULE_KEY);
                buf.append("=");
                buf.append(Constants.STATIC);
                buf.append(Constants.GOOGLE04_REG_SUCCESS_PAGE);
                setNextPage(buf.toString());
                setIsNextPageInContext(false);
            }
        } else {
            throw new RuntimeException("impossible, isEligible returned false, fix the code");
        }
*/

    }

    protected void handleActivation(SimpleRegInfo info, UserPrincipal newUser) throws TCWebException {
        try {
            //todo if we ever allow them to update their account
            //todo we'll need to figure out a way to not send
            //todo them this email. but send it to people
            //todo that are converting tc accounts
            StringBuffer buf = new StringBuffer(1000);
            User user = (User) createEJB(getInitialContext(), User.class);
            String code = user.getActivationCode(newUser.getId(), db);

            TCSEmailMessage mail = new TCSEmailMessage();
            if (info.isNew()) {
                mail.setSubject("IMPORTANT - Google Code Jam 2004 Activation Email");
            } else {
                mail.setSubject("Google Code Jam 2004 Information");

            }

            buf.append("You're invited to take part in the Google Code Jam 2004, Powered by Topcoder, a programming competition that will be worthy of your time, your skills and your interest.\n\n");
            if (info.isNew()) {
                buf.append("GOOGLE CODE JAM 2004 ACTIVATION INFORMATION\n\n");
                buf.append("Your Google activation code is ");
                buf.append(code);
                buf.append("\n\n");
                buf.append("To activate your account, navigate to the following WWW URL:\n\n");
                buf.append(getUrl(code));
                buf.append("\n\n");
                buf.append("If you cannot click on the web address above, please copy the address into your web browser to continue.  If the address spans two lines, please make sure you copy and paste both sections without any spaces between them.\n\n");
            }
            buf.append("Your handle and password will provide you with access to the Competition Arena, where you can practice and chat, and where you'll compete in the Google Code Jam 2004.\n\n");
            buf.append("PRACTICING FOR THE EVENT\n");
            buf.append("There is a practice room available to you that will allow you to become acclimated with the competition environment before you participate in the Google Code Jam 2004.  The practice room contains a problem set that will be very similar in nature to the problems you will encounter during competition.  The practice room will be available from 9:00AM ET on September 1, 2004 through 5:00PM ET on October 15, 2004.\n\n");
            buf.append("You can access the practice rooms by navigating to http://www.topcoder.com/googlecodejam and clicking on the Competition Arena tab.\n\n");
            buf.append("COMPETING IN THE QUALIFICATION ROUND\n");
            buf.append("You may participate in the Qualification Round at any time between Wednesday, September 15 at 12:00 PM ET and Thursday, September 16 at 12:00 PM ET (GMT -4).  You will have up to one hour to solve two problems.  It is recommended that you utilize the practice area prior to participating in the qualification.\n\n");
            buf.append("LAUNCHING THE ARENA\n");
            buf.append("You can launch and login to the competition arena at the appropriate time by navigating to http://www.topcoder.com/googlecodejam and clicking on the Competition Arena tab.\n\n");
            buf.append("You will need to have the Java 1.4.x runtime installed in order to launch the arena.\n\n");
            //buf.append("Mac OS X  users need to have the Java 1.4.x runtime installed, which requires OS X version 10.2.x.\n\n");
            buf.append("We also suggest that you read up on the competition process by navigating to http://www.topcoder.com/googlecodejam and downloading the competition manual.\n\n");
            buf.append("If you have any questions about how to participate, please email them to googlecodejam@topcoder.com\n\n");
            buf.append("Thank you for registering for the Google Code Jam 2004, Powered by TopCoder.  We look forward to seeing you in the Arena!\n\n");

            mail.setBody(buf.toString());
            mail.addToAddress(info.getEmail(), TCSEmailMessage.TO);
            mail.setFromAddress("googlecodejam@topcoder.com", "Google Code Jam Team");
            log.info("sent registration email to " + info.getEmail());
            EmailEngine.send(mail);
        } catch (Exception e) {
            throw new TCWebException(e);
        }
    }

    private String getUrl(String code) {
        StringBuffer buf = new StringBuffer(200);
        buf.append("http://");
        buf.append(ApplicationServer.SERVER_NAME);
        SessionInfo sInfo = (SessionInfo) getRequest().getAttribute(BaseServlet.SESSION_INFO_KEY);
        buf.append(sInfo.getServletPath());
        buf.append("?");
        buf.append(Constants.MODULE_KEY);
        buf.append("=");
        buf.append(Constants.GOOGLE04_ACTIVATION);
        buf.append("&");
        buf.append(BaseActivate.ACTIVATION_CODE);
        buf.append("=");
        buf.append(code);
        buf.append("&");
        buf.append(Constants.COMPANY_ID);
        buf.append("=");
        buf.append(regInfo.getCompanyId());
        return buf.toString();
    }
}
