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

TRUNCATE TABLE PROTOCOL_ONLN_RVW_DETERM_RECOM DROP STORAGE
/
INSERT INTO PROTOCOL_ONLN_RVW_DETERM_RECOM (REVIEW_DETERM_RECOM_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (1,'Substantive Revisions Required','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ONLN_RVW_DETERM_RECOM (REVIEW_DETERM_RECOM_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (2,'Specific Minor Revisions','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ONLN_RVW_DETERM_RECOM (REVIEW_DETERM_RECOM_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (3,'Approve','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ONLN_RVW_DETERM_RECOM (REVIEW_DETERM_RECOM_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (4,'Expedited Approval','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ONLN_RVW_DETERM_RECOM (REVIEW_DETERM_RECOM_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (5,'Grant Exemption','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ONLN_RVW_DETERM_RECOM (REVIEW_DETERM_RECOM_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (7,'Close Administratively','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ONLN_RVW_DETERM_RECOM (REVIEW_DETERM_RECOM_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (8,'Terminate','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ONLN_RVW_DETERM_RECOM (REVIEW_DETERM_RECOM_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (9,'Disapprove','admin',SYSDATE,SYS_GUID(),1)
/
