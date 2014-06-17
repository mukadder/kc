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
package org.kuali.coeus.common.budget.framework.version;

import org.kuali.coeus.budget.api.core.BudgetVersionOverviewContract;
import org.kuali.coeus.common.budget.framework.core.AbstractBudget;
import org.kuali.coeus.sys.api.model.ScaleTwoDecimal;
import org.kuali.coeus.sys.framework.model.KcPersistableBusinessObjectBase;
import org.kuali.coeus.sys.framework.service.KcServiceLocator;
import org.kuali.coeus.sys.framework.persistence.ScaleTwoDecimalConverter;
import org.kuali.coeus.common.budget.framework.copy.DeepCopyIgnore;
import org.kuali.coeus.common.budget.framework.rate.RateClass;
import org.kuali.rice.krad.bo.DocumentHeader;
import org.kuali.rice.krad.data.jpa.PortableSequenceGenerator;
import org.kuali.rice.krad.data.jpa.converters.BooleanYNConverter;
import org.kuali.rice.krad.service.LegacyDataAdapter;

import javax.persistence.*;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Class representation of a Budget Overview Business Object.  This BO maps to
 * the BudgetDocument table but excludes most references.
 * 
 * @author kra-developers-l@indiana.edu
 */
@Entity
@Table(name = "BUDGET")
public class BudgetVersionOverview extends AbstractBudget implements BudgetVersionOverviewContract {

    @OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.REFRESH)
    @JoinColumn(name = "DOCUMENT_NUMBER", referencedColumnName = "DOCUMENT_NUMBER", insertable = false, updatable = false)
    private BudgetDocumentVersion budgetDocumentVersion;

    public BudgetDocumentVersion getBudgetDocumentVersion() {
        return budgetDocumentVersion;
    }

    public void setBudgetDocumentVersion(BudgetDocumentVersion budgetDocumentVersion) {
        this.budgetDocumentVersion = budgetDocumentVersion;
    }
}