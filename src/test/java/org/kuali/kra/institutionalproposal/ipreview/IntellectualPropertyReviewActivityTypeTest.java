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
package org.kuali.kra.institutionalproposal.ipreview;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class IntellectualPropertyReviewActivityTypeTest {
    
    private static final int INTELLECTUAL_PROPERTY_REVIEW_ACTIVITY_TYPE_ATTRIBUTES_COUNT = 2;
    
    private IntellectualPropertyReviewActivityType intellectualPropertyReviewActivityType;
    
    /**
     *
     * @throws Exception
     */
    @Before
    public void setUp() throws Exception {
        intellectualPropertyReviewActivityType = new IntellectualPropertyReviewActivityType();
    }

    /**
     *
     * @throws Exception
     */
    @After
    public void tearDown() throws Exception {
        intellectualPropertyReviewActivityType = null;
    }
    
    /**
     * 
     * This method tests that total attributes of Award Business Object 
     * @throws Exception
     */
    @Test
    public void testAwardCostShareBoAttributesCount() throws Exception {              
        Assert.assertEquals(INTELLECTUAL_PROPERTY_REVIEW_ACTIVITY_TYPE_ATTRIBUTES_COUNT, 
                intellectualPropertyReviewActivityType.toStringMapper().size());
    }

}
