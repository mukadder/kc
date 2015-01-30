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
TRUNCATE TABLE ARG_VALUE_LOOKUP
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (1,'human_subjects','No','This award has no human protocols attached','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (2,'human_subjects','Unknown','Unkown if this award has human subjects','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (3,'interest_revenue','2','MIT has committed interest to the project','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (4,'interest_revenue','1','Sponsor requires interest be applied to the project','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (5,'yes_no_flag','Yes','Yes','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (6,'yes_no_flag','No','No','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (7,'PI_Question','Z1',null,'admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (8,'PI_Question','Z2',null,'admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (9,'PI_Question','Z3',null,'admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (10,'PI_Question','Z4',null,'admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (11,'human_subjects','Yes','This award has human protocols attached','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (12,'PI_Question','Z5',null,'admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (13,'Sponsor_routing','DOD','DOD sponsors','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (14,'Sponsor_routing','DOE','DOE sponsors','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (15,'Sponsor_routing','NASA','NASA sponsors','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (16,'Sponsor_routing','NIH','NIH sponsors','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (17,'Sponsor_routing','NSF','NSF sponsors','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (18,'interest_revenue','4','Account originally created as a non-sponsored account','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (19,'interest_revenue','5','Account is an endowment and is being replaced','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (20,'interest_revenue','3','MIT has committed interest to an internal order','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (21,'revenue','Non-Transferable','Revenue is non-transferable','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (22,'revenue','Transferable','Revenue may be transfered ','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (23,'interest_revenue','0','Undetermined or Non Interest Bearing','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (24,'AppointmentTypes','1','9M DURA TION','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (25,'AppointmentTypes','2','10M DURATION','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (26,'AppointmentTypes','3','11M DURATION','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (27,'AppointmentTypes','4','12M DURATION','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (28,'AppointmentTypes','5','REG EMPLOYEE','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (29,'AppointmentTypes','6','SUM EMPLOYEE','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (30,'AppointmentTypes','7','TMP EMPLOYEE','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (31,'PeriodTypes','CY','Calendar','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (32,'PeriodTypes','SP','Summer','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (33,'PeriodTypes','CC','Cycle','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (34,'PeriodTypes','AP','Academic','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (35,'ProjectRoles','1','Undefined','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (36,'ProjectRoles','2','Investigator','admin',NOW(),UUID(),1)
/
INSERT INTO ARG_VALUE_LOOKUP (ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (37,'ProjectRoles','3','Co-Investigator','admin',NOW(),UUID(),1)
/
delimiter ;
