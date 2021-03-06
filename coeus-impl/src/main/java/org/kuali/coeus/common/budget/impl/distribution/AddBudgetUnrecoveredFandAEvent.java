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
package org.kuali.coeus.common.budget.impl.distribution;

import org.kuali.coeus.common.budget.framework.core.Budget;
import org.kuali.coeus.common.budget.framework.core.BudgetEventBase;
import org.kuali.coeus.common.budget.framework.distribution.BudgetUnrecoveredFandA;

public class AddBudgetUnrecoveredFandAEvent extends BudgetEventBase {
	
    private BudgetUnrecoveredFandA budgetUnrecoveredFandA;
    
    public AddBudgetUnrecoveredFandAEvent(Budget budget, BudgetUnrecoveredFandA budgetUnrecoveredFandA) {
        super(budget);
        this.budgetUnrecoveredFandA = budgetUnrecoveredFandA;
    }

    public BudgetUnrecoveredFandA getBudgetUnrecoveredFandA() {
        return budgetUnrecoveredFandA;
    }

	public void setBudgetUnrecoveredFandA(
			BudgetUnrecoveredFandA budgetUnrecoveredFandA) {
		this.budgetUnrecoveredFandA = budgetUnrecoveredFandA;
	}

}
