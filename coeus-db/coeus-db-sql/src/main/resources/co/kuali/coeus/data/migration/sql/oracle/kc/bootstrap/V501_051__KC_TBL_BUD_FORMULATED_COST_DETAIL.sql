--
-- Kuali Coeus, a comprehensive research administration system for higher education.
-- 
-- Copyright 2005-2015 Kuali, Inc.
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

CREATE TABLE BUD_FORMULATED_COST_DETAIL ( 
    BUD_FORMULATED_COST_DETAIL_ID NUMBER(12,0) NOT NULL, 
    BUDGET_DETAILS_ID NUMBER(12,0) NOT NULL, 
    FORMULATED_NUMBER NUMBER(3,0) NOT NULL, 
    FORMULATED_TYPE_CODE VARCHAR2(3) NOT NULL, 
    UNIT_COST NUMBER(12,2), 
    COUNT NUMBER(5,0), 
    FREQUENCY NUMBER(5,0), 
    CALCULATED_EXPENSES NUMBER(12,2), 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) NOT NULL
);
ALTER TABLE BUD_FORMULATED_COST_DETAIL 
ADD CONSTRAINT PK_BUD_FORMULATED_COST_DETAIL 
PRIMARY KEY (BUD_FORMULATED_COST_DETAIL_ID);
