/*
 * Copyright 2005-2010 The Kuali Foundation
 *
 * Licensed under the Educational Community License, Version 2.0 (the License);
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
package org.kuali.kra.bo;

import java.util.LinkedHashMap;

public class ScienceKeyword extends KraPersistableBusinessObjectBase {

	/**
     * Comment for <code>serialVersionUID</code>
     */
    private static final long serialVersionUID = 7064465474079964486L;
    private String scienceKeywordCode;
	private String description;

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getScienceKeywordCode() {
		return scienceKeywordCode;
	}
	public void setScienceKeywordCode(String scienceCode) {
		this.scienceKeywordCode = scienceCode;
	}

	@SuppressWarnings("unchecked")
    @Override
	protected LinkedHashMap toStringMapper() {
		LinkedHashMap propMap = new LinkedHashMap();
		propMap.put("scienceKeywordCode", this.getScienceKeywordCode());
		propMap.put("description", this.getDescription());
		propMap.put("updateTimestamp", this.getUpdateTimestamp());
		propMap.put("updateUser", this.getUpdateUser());
		return propMap;
	}
}
