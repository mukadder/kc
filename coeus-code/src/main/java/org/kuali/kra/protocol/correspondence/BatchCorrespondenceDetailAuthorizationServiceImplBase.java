/*
 * Copyright 2005-2014 The Kuali Foundation
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
package org.kuali.kra.protocol.correspondence;

import org.kuali.coeus.common.framework.person.KcPerson;
import org.kuali.coeus.sys.framework.auth.UnitAuthorizationService;
import org.kuali.kra.service.KcPersonService;
import org.kuali.rice.krad.util.GlobalVariables;

/**
 * 
 * This class provides a call to validate whether user has certain permission.
 */
public abstract class BatchCorrespondenceDetailAuthorizationServiceImplBase implements BatchCorrespondenceDetailAuthorizationService {

    private UnitAuthorizationService unitAuthorizationService;
    private KcPersonService kcPersonService;

    /**
     * 
     * @see org.kuali.kra.protocol.correspondence.BatchCorrespondenceDetailAuthorizationService#hasPermission(java.lang.String)
     */
    public boolean hasPermission(String permissionName){
        KcPerson person = kcPersonService.getKcPersonByUserName(getUserName());       
        return unitAuthorizationService.hasPermission(person.getPersonId(), getNameSpaceHook(), permissionName);

    }
    
    protected abstract String getNameSpaceHook();
    
    
    protected String getUserName() {
        return GlobalVariables.getUserSession().getPerson().getPrincipalName();
    }
    
    /**
     * 
     * This method inject UnitAuthorizationService
     * @param unitAuthorizationService
     */
    public void setUnitAuthorizationService(UnitAuthorizationService unitAuthorizationService) {
        this.unitAuthorizationService = unitAuthorizationService;
    }

    /**
     * 
     * This method inject KcPersonService
     * @param kcPersonService
     */
    public void setKcPersonService(KcPersonService kcPersonService) {
        this.kcPersonService = kcPersonService;
    }
    
}
