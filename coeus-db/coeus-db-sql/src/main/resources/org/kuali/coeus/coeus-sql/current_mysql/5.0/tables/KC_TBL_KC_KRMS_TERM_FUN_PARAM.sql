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

DELIMITER /
CREATE TABLE KC_KRMS_TERM_FUN_PARAM(
	KC_KRMS_TERM_FUN_PARAM_ID DECIMAL(12,0),
	KC_KRMS_TERM_FUNCTION_ID DECIMAL(12,0),
	PARAM_NAME VARCHAR(40) NOT NULL,
	PARAM_TYPE VARCHAR(100) default 'java.lang.Object' NOT NULL,
	PARAM_ORDER DECIMAL(2,0) NOT NULL,
	UPDATE_TIMESTAMP DATE NOT NULL,
	UPDATE_USER VARCHAR(60) NOT NULL,
    VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR(36) NOT NULL
) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/

ALTER TABLE KC_KRMS_TERM_FUN_PARAM 
ADD CONSTRAINT PK_KC_KRMS_TERM_FUN_PARAM 
PRIMARY KEY (KC_KRMS_TERM_FUN_PARAM_ID)
/
DELIMITER ;
