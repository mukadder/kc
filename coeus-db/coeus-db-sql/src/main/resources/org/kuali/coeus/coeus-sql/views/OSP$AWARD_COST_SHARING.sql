--
-- Kuali Coeus, a comprehensive research administration system for higher education.
-- 
-- Copyright 2005-2015 The Kuali Foundation
-- 
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as
-- published by the Free Software Foundation, either version 3 of the
-- License, or (at your option) any later version.
-- 
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
-- 
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
--

CREATE OR REPLACE VIEW OSP$AWARD_COST_SHARING AS SELECT 
	AWARD_NUMBER MIT_AWARD_NUMBER, 
	SEQUENCE_NUMBER SEQUENCE_NUMBER,
	FISCAL_YEAR FISCAL_YEAR,
	COST_SHARE_PERCENTAGE COST_SHARING_PERCENTAGE, 
	COST_SHARE_TYPE_CODE COST_SHARING_TYPE_CODE,
	SOURCE SOURCE_ACCOUNT, 
	DESTINATION DESTINATION_ACCOUNT, 
	COMMITMENT_AMOUNT AMOUNT,
	UPDATE_TIMESTAMP UPDATE_TIMESTAMP, 
	UPDATE_USER UPDATE_USER
FROM AWARD_COST_SHARE
