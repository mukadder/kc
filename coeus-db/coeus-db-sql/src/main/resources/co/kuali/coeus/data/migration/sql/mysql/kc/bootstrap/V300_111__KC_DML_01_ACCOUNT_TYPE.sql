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

delimiter /
TRUNCATE TABLE ACCOUNT_TYPE
/
INSERT INTO ACCOUNT_TYPE (ACCOUNT_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (1,'Regular','admin',NOW(),UUID(),1)
/
INSERT INTO ACCOUNT_TYPE (ACCOUNT_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (2,'Fabricated Equipment','admin',NOW(),UUID(),1)
/
INSERT INTO ACCOUNT_TYPE (ACCOUNT_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (3,'Draper Fellowship','admin',NOW(),UUID(),1)
/
INSERT INTO ACCOUNT_TYPE (ACCOUNT_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (4,'Core Grant Administration','admin',NOW(),UUID(),1)
/
INSERT INTO ACCOUNT_TYPE (ACCOUNT_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (5,'Gift','admin',NOW(),UUID(),1)
/
INSERT INTO ACCOUNT_TYPE (ACCOUNT_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (6,'Conversion Account','admin',NOW(),UUID(),1)
/
INSERT INTO ACCOUNT_TYPE (ACCOUNT_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (7,'Off-campus account','admin',NOW(),UUID(),1)
/
INSERT INTO ACCOUNT_TYPE (ACCOUNT_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (8,'SBIR','admin',NOW(),UUID(),1)
/
INSERT INTO ACCOUNT_TYPE (ACCOUNT_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (9,'STTR','admin',NOW(),UUID(),1)
/
INSERT INTO ACCOUNT_TYPE (ACCOUNT_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (10,'No Account','admin',NOW(),UUID(),1)
/
INSERT INTO ACCOUNT_TYPE (ACCOUNT_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (11,'Service Facilities','admin',NOW(),UUID(),1)
/
delimiter ;
