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
INSERT INTO IACUC_PROTOCOL_REFERENCE_TYPE ( PROTOCOL_REFERENCE_TYPE_CODE, DESCRIPTION, ACTIVE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, VER_NBR ) 
VALUES ( 1, 'Sponsor number', 'Y', NOW(), 'admin', UUID(), 1 ) 
/
INSERT INTO IACUC_PROTOCOL_REFERENCE_TYPE ( PROTOCOL_REFERENCE_TYPE_CODE, DESCRIPTION, ACTIVE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, VER_NBR ) 
VALUES ( 2, 'NCI ', 'Y', NOW(), 'admin', UUID(), 1 ) 
/



INSERT INTO IACUC_PROTOCOL_PROJECT_TYPE ( PROJECT_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, VER_NBR ) 
VALUES ( '1', 'Agricultural', NOW(), 'admin', UUID(), 1 ) 
/
INSERT INTO IACUC_PROTOCOL_PROJECT_TYPE ( PROJECT_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, VER_NBR ) 
VALUES ( '2', 'Behavioral', NOW(), 'admin', UUID(), 1 ) 
/
INSERT INTO IACUC_PROTOCOL_PROJECT_TYPE ( PROJECT_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, VER_NBR ) 
VALUES ( '3', 'Biomedical', NOW(), 'admin', UUID(), 1 ) 
/
INSERT INTO IACUC_PROTOCOL_PROJECT_TYPE ( PROJECT_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, VER_NBR ) 
VALUES ( '4', 'Field Studies', NOW(), 'admin', UUID(), 1 ) 
/
INSERT INTO IACUC_PROTOCOL_PROJECT_TYPE ( PROJECT_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, VER_NBR ) 
VALUES ( '5', 'Other', NOW(), 'admin', UUID(), 1 ) 
/

DELIMITER ;
