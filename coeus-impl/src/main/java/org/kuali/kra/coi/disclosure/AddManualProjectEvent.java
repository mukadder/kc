/*
 * Kuali Coeus, a comprehensive research administration system for higher education.
 * 
 * Copyright 2005-2016 Kuali, Inc.
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
package org.kuali.kra.coi.disclosure;

import org.kuali.coeus.sys.framework.rule.KcBusinessRule;
import org.kuali.coeus.sys.framework.rule.KcDocumentEventBaseExtension;
import org.kuali.kra.coi.CoiDisclProject;

public class AddManualProjectEvent extends KcDocumentEventBaseExtension {
    
    private String propertyName;
    private CoiDisclProject coiDisclProject;
    /**
     * Constructs a ProtocolAddReviewAttachmentEvent.
     * 
     * @param document The document to validate
     * @param propertyName The error path property prefix
     * @param reviewAttachment The added Reviewer Attachment
     */
    public AddManualProjectEvent(String propertyName, CoiDisclProject coiDisclProject) {
        super("Add Proposal", "", null);
        this.propertyName = propertyName;
        this.coiDisclProject = coiDisclProject;
       
    }
        
    public String getPropertyName() {
        return propertyName;
    }

    @Override
    @SuppressWarnings("unchecked")
    public KcBusinessRule getRule() {
        return new AddManualProjectRule();
    }

    public CoiDisclProject getCoiDisclProject() {
        return coiDisclProject;
    }

    public void setCoiDisclProject(CoiDisclProject coiDisclProject) {
        this.coiDisclProject = coiDisclProject;
    }

}
