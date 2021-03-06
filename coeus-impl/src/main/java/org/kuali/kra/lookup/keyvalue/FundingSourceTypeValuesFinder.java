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
package org.kuali.kra.lookup.keyvalue;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.kuali.coeus.sys.framework.service.KcServiceLocator;
import org.kuali.kra.bo.FundingSourceType;
import org.kuali.rice.core.api.util.ConcreteKeyValue;
import org.kuali.rice.core.api.util.KeyValue;
import org.kuali.rice.krad.service.BusinessObjectService;
import org.kuali.rice.krad.uif.control.UifKeyValuesFinderBase;

public class FundingSourceTypeValuesFinder extends UifKeyValuesFinderBase {

    @Override
    public List<KeyValue> getKeyValues() {
        List<KeyValue> keyValues = new ArrayList<KeyValue>();
        Collection<FundingSourceType> fundingSourceTypes = (Collection<FundingSourceType>) KcServiceLocator
                .getService(BusinessObjectService.class).findAll(FundingSourceType.class);
        for (FundingSourceType fundingSourceType : fundingSourceTypes) {
            if (fundingSourceType.getFundingSourceTypeFlag()) {
                keyValues.add(new ConcreteKeyValue(fundingSourceType.getFundingSourceTypeCode(), fundingSourceType.getDescription()));
            }
        }
        keyValues.add(0, new ConcreteKeyValue("", "select"));
        return keyValues;
    }

}
