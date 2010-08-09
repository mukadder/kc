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
package org.kuali.kra.irb.protocol.participant;

import java.util.List;

import org.kuali.kra.irb.ProtocolDocument;
import org.kuali.rice.kns.document.Document;
import org.kuali.rice.kns.rule.BusinessRule;

/**
 * 
 * This class represents the event when a <code>{@link ProtocolParticipant}</code> is added to a 
 * <code>{@link Protocol}</code>.
 * 
 * @author Kuali Research Administration Team (kc.dev@kuali.org)
 */
public class AddProtocolParticipantEvent extends ProtocolParticipantEventBase {
    /**
     * 
     * Constructs a <code>{@link AddProtocolParticipantEvent}</code>.
     * 
     * @param errorPathPrefix
     * @param document
     * @param protocolParticipant
     */
    public AddProtocolParticipantEvent(String errorPathPrefix, ProtocolDocument document, 
            ProtocolParticipantBean newProtocolParticipant,
            List<ProtocolParticipantBean> existingProtocolParticipants) {
        super("adding ProtocolParticipant to document " + getDocumentId(document), 
                errorPathPrefix, document, newProtocolParticipant, existingProtocolParticipants);
    }
    
    /**
     * 
     * Constructs a <code>{@link AddProtocolParticipantEvent}</code>.
     * 
     * @param errorPathPrefix
     * @param document
     * @param protocolParticipant
     */
    public AddProtocolParticipantEvent(String errorPathPrefix, Document document, 
            ProtocolParticipantBean newProtocolParticipant,
            List<ProtocolParticipantBean> existingProtocolParticipants) {
        this(errorPathPrefix, (ProtocolDocument) document, newProtocolParticipant, existingProtocolParticipants);
    }
    
    /**
     * 
     * Returns the <code>{@link AddProtocolParticipantRule}</code> class which is needed to validate a
     * <code>{@link ProtocolParticipant}</code>
     * 
     * @return <code>{@link AddProtocolParticipantRule} class</code>
     */
    public Class getRuleInterfaceClass() {
        return AddProtocolParticipantRule.class;
    }

    /**
     * 
     * Invokes the processing of the rules when adding a <code>{@link ProtocolParticipant}</code>.
     * 
     * @param The <code>{@link AddProtocolParticipantRule}</code> that is to be used for processing
     * @return <code>true</code> if all rules are satisfied, otherwise <code>false</code>
     */
    public boolean invokeRuleMethod(BusinessRule rule) {
        return ((AddProtocolParticipantRule) rule).processAddProtocolParticipantBusinessRules(this);
    }
}
