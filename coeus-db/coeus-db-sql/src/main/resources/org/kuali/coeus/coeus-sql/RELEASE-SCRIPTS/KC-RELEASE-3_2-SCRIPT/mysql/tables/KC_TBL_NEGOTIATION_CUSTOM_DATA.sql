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
CREATE TABLE NEGOTIATION_CUSTOM_DATA
(
      NEGOTIATION_CUSTOM_DATA_ID DECIMAL(8)
        , NEGOTIATION_ID DECIMAL(22)
        , NEGOTIATION_NUMBER VARCHAR(12)
        , CUSTOM_ATTRIBUTE_ID DECIMAL(12)
        , VALUE VARCHAR(2000)
        , UPDATE_TIMESTAMP DATE
        , UPDATE_USER VARCHAR(60)
        , VER_NBR DECIMAL(8) default 1
        , OBJ_ID VARCHAR(36) NOT NULL    
        , CONSTRAINT NEGOTIATION_CUSTOM_DATAP1 PRIMARY KEY(NEGOTIATION_CUSTOM_DATA_ID)
) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/
DELIMITER ;
