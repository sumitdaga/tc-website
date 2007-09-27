package com.topcoder.web.tc.controller.request.collegetour;

import com.topcoder.shared.dataAccess.Request;
import com.topcoder.shared.util.DBMS;
import com.topcoder.web.common.BaseProcessor;
import com.topcoder.web.common.CachedDataAccess;
import com.topcoder.web.common.cache.MaxAge;

import java.util.Map;

/**
 * @author dok
 * @version $Revision$ Date: 2005/01/01 00:00:00
 *          Create Date: Feb 7, 2006
 */
public class Description extends BaseProcessor {

    protected void businessProcessing() throws Exception {
        Request r = new Request();
        r.setContentHandle("college_tour_school_list");
        Map m = new CachedDataAccess(MaxAge.HOUR, DBMS.OLTP_DATASOURCE_NAME).getData(r);
        getRequest().setAttribute("list", m.get("college_tour_school_list"));
        setNextPage("/introevent/collegetour/description.jsp");
        setIsNextPageInContext(true);
    }

}
