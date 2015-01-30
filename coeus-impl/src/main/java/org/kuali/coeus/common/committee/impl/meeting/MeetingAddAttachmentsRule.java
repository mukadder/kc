/*
 * Kuali Coeus, a comprehensive research administration system for higher education.
 * 
 * Copyright 2005-2015 The Kuali Foundation
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 * 
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package org.kuali.coeus.common.committee.impl.meeting;

import org.kuali.coeus.sys.framework.rule.KcBusinessRule;
import org.kuali.coeus.sys.framework.rule.KcTransactionalDocumentRuleBase;
import org.kuali.kra.infrastructure.KeyConstants;

public class MeetingAddAttachmentsRule  extends KcTransactionalDocumentRuleBase implements KcBusinessRule<MeetingAddAttachmentsEvent> {

    String propertyPrefix ="meetingHelper.newCommitteeScheduleAttachments" ;
    private static final String ATTACHMENTS_ID = ".attachmentsTypeCode";
    private static final String ATTACHMENTS_FILE = ".document" ;
    private static final String noValue = "";
    
    @Override
    public boolean processRules(MeetingAddAttachmentsEvent event) {

        boolean isValid = true;
        CommitteeScheduleAttachmentsBase committeeScheduleAttachments = event.getMeetingHelper().getNewCommitteeScheduleAttachments();
        if (committeeScheduleAttachments.getAttachmentsTypeCode() == null){
            isValid = false;
            reportError(propertyPrefix+ATTACHMENTS_ID
                    , KeyConstants.ERROR_COMMITTEESCHEDULEATTACHMENTS_ATTACHMENTTYPE ); 
        }
        if (committeeScheduleAttachments.getNewFile().getFileName().equals(noValue)){
            isValid = false;
            reportError(propertyPrefix+ATTACHMENTS_FILE
                    , KeyConstants.ERROR_COMMITTEESCHEDULEATTACHMENTS_FILENAME ); 
        }
        return isValid;
    }
}
