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

delimiter /
TRUNCATE TABLE SUBMISSION_TYPE
/
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('100','Initial Protocol Application for Approval','admin',NOW(),UUID(),1)
/
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('101','Continuing Review/Continuation without Amendment','admin',NOW(),UUID(),1)
/
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('102','Amendment','admin',NOW(),UUID(),1)
/
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('103','Response to Previous IRB Notification','admin',NOW(),UUID(),1)
/
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('104','Self Report of Non-Compliance','admin',NOW(),UUID(),1)
/
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('105','Complaint','admin',NOW(),UUID(),1)
/
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('106','Adverse Event','admin',NOW(),UUID(),1)
/
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('107','Report of protocol-related COI','admin',NOW(),UUID(),1)
/
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('108','Request for Termination','admin',NOW(),UUID(),1)
/
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('109','Request to Close','admin',NOW(),UUID(),1)
/
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('110','Request for Suspension','admin',NOW(),UUID(),1)
/
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('111','Request to Close Enrollment','admin',NOW(),UUID(),1)
/
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('112','FYI','admin',NOW(),UUID(),1)
/
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('113','Request for Data Analysis Only','admin',NOW(),UUID(),1)
/
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('114','Request for Re-open Enrollment','admin',NOW(),UUID(),1)
/
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('115','Continuing Review/Continuation with Amendment','admin',NOW(),UUID(),1)
/
delimiter ;
