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
package org.kuali.coeus.propdev.impl.editable;

import org.kuali.coeus.sys.framework.keyvalue.KeyValueFinderService;
import org.kuali.coeus.sys.framework.service.KcServiceLocator;
import org.kuali.coeus.propdev.impl.editable.ProposalColumnsToAlter;
import org.kuali.rice.core.api.util.KeyValue;
import org.kuali.rice.krad.uif.control.UifKeyValuesFinderBase;

import java.util.List;
/**
 * Finds the set of editable Proposal Fields.  See
 * the method <code>getKeyValues()</code> for a full description.
 * 
 * @author KRADEV team
 */

public class ProposalEditableColumnsValuesFinder extends UifKeyValuesFinderBase {
    KeyValueFinderService keyValueFinderService= (KeyValueFinderService) KcServiceLocator.getService("keyValueFinderService");

    @Override
    public List<KeyValue> getKeyValues() {
        return keyValueFinderService.getKeyValues(ProposalColumnsToAlter.class, "columnName", "columnLabel");
    }
}
