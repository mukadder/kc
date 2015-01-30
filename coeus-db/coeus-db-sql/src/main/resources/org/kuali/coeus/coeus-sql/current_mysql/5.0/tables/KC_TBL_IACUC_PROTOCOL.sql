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
ALTER TABLE 
    IACUC_PROTOCOL 
MODIFY
    APPLICATION_DATE DATE null
/

ALTER TABLE 
    IACUC_PROTOCOL 
MODIFY 
    PROJECT_TYPE_CODE VARCHAR(3),
MODIFY 
    PROTOCOL_STATUS_CODE VARCHAR(3) NOT NULL,
MODIFY 
    PROTOCOL_TYPE_CODE VARCHAR(3) NOT NULL
/

DELIMITER ;
