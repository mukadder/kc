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

DELIMITER /
INSERT INTO FP_DOC_TYPE_T (FDOC_TYP_CD,VER_NBR,FDOC_NM,FDOC_TYP_ACTIVE_CD,OBJ_ID)
VALUES('ICPR', 1, 'IACUC Protocol', 'Y', UUID())
/
INSERT INTO SPECIAL_REVIEW_USAGE (SPECIAL_REVIEW_USAGE_ID,SPECIAL_REVIEW_CODE,MODULE_CODE,ACTIVE_FLAG,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,GLOBAL_FLAG)
VALUES (49, 1, (SELECT MODULE_CODE FROM COEUS_MODULE WHERE DESCRIPTION='IACUC Protocol'), 'Y', NOW(), 'admin', 1, UUID(), 'Y')
/
INSERT INTO SPECIAL_REVIEW_USAGE (SPECIAL_REVIEW_USAGE_ID,SPECIAL_REVIEW_CODE,MODULE_CODE,ACTIVE_FLAG,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,GLOBAL_FLAG)
VALUES (50, 2, (SELECT MODULE_CODE FROM COEUS_MODULE WHERE DESCRIPTION='IACUC Protocol'), 'Y', NOW(), 'admin', 1, UUID(), 'Y')
/
INSERT INTO SPECIAL_REVIEW_USAGE (SPECIAL_REVIEW_USAGE_ID,SPECIAL_REVIEW_CODE,MODULE_CODE,ACTIVE_FLAG,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,GLOBAL_FLAG)
VALUES (51, 3, (SELECT MODULE_CODE FROM COEUS_MODULE WHERE DESCRIPTION='IACUC Protocol'), 'Y', NOW(), 'admin', 1, UUID(), 'Y')
/
INSERT INTO SPECIAL_REVIEW_USAGE (SPECIAL_REVIEW_USAGE_ID,SPECIAL_REVIEW_CODE,MODULE_CODE,ACTIVE_FLAG,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,GLOBAL_FLAG)
VALUES (52, 4, (SELECT MODULE_CODE FROM COEUS_MODULE WHERE DESCRIPTION='IACUC Protocol'), 'Y', NOW(), 'admin', 1, UUID(), 'Y')
/
INSERT INTO SPECIAL_REVIEW_USAGE (SPECIAL_REVIEW_USAGE_ID,SPECIAL_REVIEW_CODE,MODULE_CODE,ACTIVE_FLAG,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,GLOBAL_FLAG)
VALUES (53, 5, (SELECT MODULE_CODE FROM COEUS_MODULE WHERE DESCRIPTION='IACUC Protocol'), 'Y', NOW(), 'admin', 1, UUID(), 'Y')
/
INSERT INTO SPECIAL_REVIEW_USAGE (SPECIAL_REVIEW_USAGE_ID,SPECIAL_REVIEW_CODE,MODULE_CODE,ACTIVE_FLAG,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,GLOBAL_FLAG)
VALUES (54, 6, (SELECT MODULE_CODE FROM COEUS_MODULE WHERE DESCRIPTION='IACUC Protocol'), 'Y', NOW(), 'admin', 1, UUID(), 'Y')
/
INSERT INTO SPECIAL_REVIEW_USAGE (SPECIAL_REVIEW_USAGE_ID,SPECIAL_REVIEW_CODE,MODULE_CODE,ACTIVE_FLAG,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,GLOBAL_FLAG)
VALUES (55, 7, (SELECT MODULE_CODE FROM COEUS_MODULE WHERE DESCRIPTION='IACUC Protocol'), 'Y', NOW(), 'admin', 1, UUID(), 'Y')
/
INSERT INTO SPECIAL_REVIEW_USAGE (SPECIAL_REVIEW_USAGE_ID,SPECIAL_REVIEW_CODE,MODULE_CODE,ACTIVE_FLAG,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,GLOBAL_FLAG)
VALUES (56, 8, (SELECT MODULE_CODE FROM COEUS_MODULE WHERE DESCRIPTION='IACUC Protocol'), 'Y', NOW(), 'admin', 1, UUID(), 'Y')
/
INSERT INTO SPECIAL_REVIEW_USAGE (SPECIAL_REVIEW_USAGE_ID,SPECIAL_REVIEW_CODE,MODULE_CODE,ACTIVE_FLAG,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,GLOBAL_FLAG)
VALUES (57, 9, (SELECT MODULE_CODE FROM COEUS_MODULE WHERE DESCRIPTION='IACUC Protocol'), 'Y', NOW(), 'admin', 1, UUID(), 'Y')
/
INSERT INTO SPECIAL_REVIEW_USAGE (SPECIAL_REVIEW_USAGE_ID,SPECIAL_REVIEW_CODE,MODULE_CODE,ACTIVE_FLAG,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,GLOBAL_FLAG)
VALUES (58,10, (SELECT MODULE_CODE FROM COEUS_MODULE WHERE DESCRIPTION='IACUC Protocol'), 'Y', NOW(), 'admin', 1, UUID(), 'Y')
/
INSERT INTO SPECIAL_REVIEW_USAGE (SPECIAL_REVIEW_USAGE_ID,SPECIAL_REVIEW_CODE,MODULE_CODE,ACTIVE_FLAG,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,GLOBAL_FLAG)
VALUES (59,11, (SELECT MODULE_CODE FROM COEUS_MODULE WHERE DESCRIPTION='IACUC Protocol'), 'Y', NOW(), 'admin', 1, UUID(), 'Y')
/
INSERT INTO SPECIAL_REVIEW_USAGE (SPECIAL_REVIEW_USAGE_ID,SPECIAL_REVIEW_CODE,MODULE_CODE,ACTIVE_FLAG,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,GLOBAL_FLAG)
VALUES (60,12, (SELECT MODULE_CODE FROM COEUS_MODULE WHERE DESCRIPTION='IACUC Protocol'), 'Y', NOW(), 'admin', 1, UUID(), 'Y')
/
DELIMITER ;
