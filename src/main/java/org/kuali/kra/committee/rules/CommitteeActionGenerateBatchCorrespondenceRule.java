/*
 * Copyright 2005-2010 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.committee.rules;

import org.apache.commons.lang.StringUtils;
import org.kuali.kra.committee.rule.event.CommitteeActionGenerateBatchCorrespondenceEvent;
import org.kuali.kra.infrastructure.KeyConstants;
import org.kuali.kra.rule.BusinessRuleInterface;
import org.kuali.kra.rules.ResearchDocumentRuleBase;

public class CommitteeActionGenerateBatchCorrespondenceRule extends ResearchDocumentRuleBase implements  BusinessRuleInterface<CommitteeActionGenerateBatchCorrespondenceEvent> {

    private static final String BATCH_CORRESPONDENCE_TYPE_FIELD = "committeeHelper.committeeActionsHelper.generateBatchCorrespondenceTypeCode";
    private static final String START_DATE_FIELD = "committeeHelper.committeeActionsHelper.generateStartDate";
    private static final String END_DATE_FIELD = "committeeHelper.committeeActionsHelper.generateEndDate";

    public boolean processRules(CommitteeActionGenerateBatchCorrespondenceEvent event) {
        boolean rulePassed = true;
        boolean dateNull = false;
        
        if (StringUtils.isEmpty(event.getBatchCorrespondenceTypeCode())) {
            reportError(BATCH_CORRESPONDENCE_TYPE_FIELD, KeyConstants.ERROR_COMMITTEE_ACTION_GENERATE_BATCH_CORRESPONDENCE_TYPE_CODE_NOT_SPECIFIED);
            rulePassed = false;
        }
        
        if (event.getStartDate() == null) {
            reportError(START_DATE_FIELD, KeyConstants.ERROR_COMMITTEE_ACTION_GENERATE_START_DATE_NOT_SPECIFIED);
            dateNull = true;
            rulePassed = false;
        }

        if (event.getEndDate() == null) {
            reportError(END_DATE_FIELD, KeyConstants.ERROR_COMMITTEE_ACTION_GENERATE_END_DATE_NOT_SPECIFIED);
            dateNull = true;
            rulePassed = false;
        }

        if (!dateNull && event.getEndDate().before(event.getStartDate())) {
            reportError(END_DATE_FIELD, KeyConstants.ERROR_COMMITTEE_ACTION_GENERATE_END_DATE_BEFORE_START_DATE);
            rulePassed = false;
        }
        
        return rulePassed;
    }

}
