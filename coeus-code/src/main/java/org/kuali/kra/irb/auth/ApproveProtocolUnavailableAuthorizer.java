/*
 * Copyright 2005-2014 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.osedu.org/licenses/ECL-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.irb.auth;

import org.kuali.coeus.common.committee.impl.bo.CommitteeDecisionMotionType;
import org.kuali.kra.infrastructure.PermissionConstants;
import org.kuali.kra.irb.actions.ProtocolAction;
import org.kuali.kra.irb.actions.ProtocolActionType;
import org.kuali.kra.irb.actions.submit.ProtocolSubmission;

/**
 * Is the user allowed to approve protocols and the action is currently unavailable?
 */
public class ApproveProtocolUnavailableAuthorizer extends ProtocolAuthorizer {

    /**
     * {@inheritDoc}
     * @see org.kuali.kra.irb.auth.ProtocolAuthorizer#isAuthorized(java.lang.String, org.kuali.kra.irb.auth.ProtocolTask)
     */
    public boolean isAuthorized(String userId, ProtocolTask task) {
        ProtocolAction lastAction = (ProtocolAction) task.getProtocol().getLastProtocolAction();
        ProtocolSubmission lastSubmission = (ProtocolSubmission) task.getProtocol().getProtocolSubmission();
        
        return !canPerform(lastAction, lastSubmission) && 
               hasPermission(userId, task.getProtocol(), PermissionConstants.MAINTAIN_PROTOCOL_SUBMISSIONS);
    }
    
    private boolean canPerform(ProtocolAction lastAction, ProtocolSubmission lastSubmission) {
        boolean canPerform = false;
        
        if (lastAction != null && lastSubmission != null) {
            canPerform = ProtocolActionType.RECORD_COMMITTEE_DECISION.equals(lastAction.getProtocolActionTypeCode()) 
                      && CommitteeDecisionMotionType.APPROVE.equals(lastSubmission.getCommitteeDecisionMotionTypeCode());
        }
        
        return canPerform;
    }
    
}