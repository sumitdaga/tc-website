/*
* InvalidStatusReasonException
*
* Created Apr 24, 2007
*/
package com.topcoder.web.ejb.pacts.payments;

/**
 * VERY IMPORTANT: remember to update serialVersionUID if needed
 * 
 * @author Pablo Wolfus (pulky)
 * @version $Id$
 */
public class InvalidStatusReasonException extends Exception {

    /**
     * Please change that number if you affect the fields in a way that will affect the
     * serialization for this object. 
     */
    private static final long serialVersionUID = 1L;

    /**
     * 
     */
    public InvalidStatusReasonException() {
    }

    /**
     * @param message
     */
    public InvalidStatusReasonException(String message) {
        super(message);
    }

    /**
     * @param cause
     */
    public InvalidStatusReasonException(Throwable cause) {
        super(cause);
    }

    /**
     * @param message
     * @param cause
     */
    public InvalidStatusReasonException(String message, Throwable cause) {
        super(message, cause);
    }

}
