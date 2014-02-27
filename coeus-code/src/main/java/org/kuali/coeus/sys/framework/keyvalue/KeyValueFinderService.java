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
package org.kuali.coeus.sys.framework.keyvalue;

import org.kuali.rice.core.api.util.KeyValue;
import org.kuali.rice.krad.bo.BusinessObject;

import java.util.List;
import java.util.Map;

public interface KeyValueFinderService{
    List<KeyValue> getKeyValues(Class<? extends BusinessObject> keyValClass, String codePropName, String valPropName);

    /**
     *
     * This method is to get key values pair by providing additional query map as retrieving criteria.
     */
    List<KeyValue> getKeyValues(Class<? extends BusinessObject> keyValClass, String codePropName, String valPropName, Map<String, ?> queryMap);
}
