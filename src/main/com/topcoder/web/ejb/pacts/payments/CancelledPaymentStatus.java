/*
* CancelledPaymentStatus
*
* Created Apr 19, 2007
*/
package com.topcoder.web.ejb.pacts.payments;

import com.topcoder.web.ejb.pacts.BasePayment;
import com.topcoder.web.ejb.pacts.payments.PaymentStatusReason.AvailableStatusReason;

/**
 * This class represents a Cancelled status for payments. 
 *
 * @author Pablo Wolfus (pulky)
 * @version $Id$
 */
public class CancelledPaymentStatus extends BasePaymentStatus {

    /**
     * The payment status id
     */
    public static final Long ID = 65l;

    /**
     * Default constructor   
     */
    public CancelledPaymentStatus() {
        super();
    }

    /**
     * @see com.topcoder.web.ejb.pacts.payments.BasePaymentStatus#getId()
     */
    @Override
    public Long getId() {
        return ID;
    }

    /**
     * @see com.topcoder.web.ejb.pacts.payments.BasePaymentStatus#expiredAffidavit(com.topcoder.web.ejb.pacts.BasePayment)
     */
    @Override
    public void expiredAffidavit(BasePayment payment) {
        if (!reasons.contains(AvailableStatusReason.EXPIRED_AFFIDAVIT_REASON.getStatusReason())) {
            reasons.add(AvailableStatusReason.EXPIRED_AFFIDAVIT_REASON.getStatusReason());
        }
    }
    
    /**
     * @see com.topcoder.web.ejb.pacts.payments.BasePaymentStatus#parentCancelled(com.topcoder.web.ejb.pacts.BasePayment)
     */
    @Override
    public void parentCancelled(BasePayment payment) {
        if (!reasons.contains(AvailableStatusReason.ATTACHED_TO_PARENT_REASON.getStatusReason())) {
            reasons.add(AvailableStatusReason.ATTACHED_TO_PARENT_REASON.getStatusReason());
        }
    }

    /**
     * @see com.topcoder.web.ejb.pacts.payments.BasePaymentStatus#expiredIPTransfer(com.topcoder.web.ejb.pacts.BasePayment)
     */
    @Override
    public void expiredIPTransfer(BasePayment payment) {
        if (!reasons.contains(AvailableStatusReason.EXPIRED_IP_TRANSFER_REASON.getStatusReason())) {
            reasons.add(AvailableStatusReason.EXPIRED_IP_TRANSFER_REASON.getStatusReason());
        }
    }

    /**
     * @see com.topcoder.web.ejb.pacts.payments.BasePaymentStatus#inactiveCoder(com.topcoder.web.ejb.pacts.BasePayment)
     */
    @Override
    public int inactiveCoder(BasePayment payment) throws InvalidPaymentEventException {
        if (!reasons.contains(AvailableStatusReason.ACCOUNT_STATUS_REASON.getStatusReason())) {
            reasons.add(AvailableStatusReason.ACCOUNT_STATUS_REASON.getStatusReason());
        }
        return 0;
    }
    
    /**
     * @see com.topcoder.web.ejb.pacts.payments.BasePaymentStatus#newInstance()
     */
    @Override
    public BasePaymentStatus newInstance() {
        BasePaymentStatus newPaymentStatus = new CancelledPaymentStatus();
        newPaymentStatus.setDesc(this.desc);
        newPaymentStatus.setActive(this.active);
        return newPaymentStatus;  
    }

}
