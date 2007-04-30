package com.topcoder.web.common.cache;

import com.topcoder.shared.util.TCResourceBundle;

/**
 * @author dok
 * @version $Revision$ Date: 2005/01/01 00:00:00
 *          Create Date: Apr 30, 2007
 */
public class CacheClientFactory {

    public static CacheClient create() {
        TCResourceBundle b = new TCResourceBundle("cache");
        try {
            return (CacheClient)Class.forName(b.getProperty("cache_client_class",
                    JbossCacheClient.class.getName())).newInstance();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e) {
            throw new RuntimeException(e);
        }
    }
    
}
