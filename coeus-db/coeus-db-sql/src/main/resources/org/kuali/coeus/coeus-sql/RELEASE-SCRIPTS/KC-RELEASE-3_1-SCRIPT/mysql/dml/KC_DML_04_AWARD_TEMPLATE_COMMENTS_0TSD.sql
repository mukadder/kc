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
INSERT INTO SEQ_AWARD_TEMPLATE VALUES(NULL)
/
INSERT INTO AWARD_TEMPLATE_COMMENTS (AWARD_TEMPLATE_COMMENTS_ID,AWARD_TEMPLATE_CODE,COMMENT_TYPE_CODE,CHECKLIST_PRINT_FLAG,COMMENTS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_TEMPLATE),(SELECT AWARD_TEMPLATE_CODE FROM AWARD_TEMPLATE WHERE DESCRIPTION = 'Test Sponsor Template' AND STATUS_CODE = (SELECT STATUS_CODE FROM AWARD_STATUS WHERE DESCRIPTION = 'Active')),(SELECT COMMENT_TYPE_CODE FROM COMMENT_TYPE WHERE DESCRIPTION = 'Invoice Instructions'),'N','Invoicing remarks from sync to Test Sponsor Template.','admin',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_TEMPLATE VALUES(NULL)
/
INSERT INTO AWARD_TEMPLATE_COMMENTS (AWARD_TEMPLATE_COMMENTS_ID,AWARD_TEMPLATE_CODE,COMMENT_TYPE_CODE,CHECKLIST_PRINT_FLAG,COMMENTS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_TEMPLATE),(SELECT AWARD_TEMPLATE_CODE FROM AWARD_TEMPLATE WHERE DESCRIPTION = 'Test Sponsor Template' AND STATUS_CODE = (SELECT STATUS_CODE FROM AWARD_STATUS WHERE DESCRIPTION = 'Active')),(SELECT COMMENT_TYPE_CODE FROM COMMENT_TYPE WHERE DESCRIPTION = 'General Comments'),'N','General remarks from sync to Test Sponsor Template.','admin',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_TEMPLATE VALUES(NULL)
/
INSERT INTO AWARD_TEMPLATE_COMMENTS (AWARD_TEMPLATE_COMMENTS_ID,AWARD_TEMPLATE_CODE,COMMENT_TYPE_CODE,CHECKLIST_PRINT_FLAG,COMMENTS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_TEMPLATE),(SELECT AWARD_TEMPLATE_CODE FROM AWARD_TEMPLATE WHERE DESCRIPTION = 'Test Sponsor Template' AND STATUS_CODE = (SELECT STATUS_CODE FROM AWARD_STATUS WHERE DESCRIPTION = 'Active')),(SELECT COMMENT_TYPE_CODE FROM COMMENT_TYPE WHERE DESCRIPTION = 'Fiscal Report Comments'),'N','Financial Rpt remarks from sync to Test Sponsor Template.','admin',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_TEMPLATE VALUES(NULL)
/
INSERT INTO AWARD_TEMPLATE_COMMENTS (AWARD_TEMPLATE_COMMENTS_ID,AWARD_TEMPLATE_CODE,COMMENT_TYPE_CODE,CHECKLIST_PRINT_FLAG,COMMENTS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_TEMPLATE),(SELECT AWARD_TEMPLATE_CODE FROM AWARD_TEMPLATE WHERE DESCRIPTION = 'Test Sponsor Template' AND STATUS_CODE = (SELECT STATUS_CODE FROM AWARD_STATUS WHERE DESCRIPTION = 'Active')),(SELECT COMMENT_TYPE_CODE FROM COMMENT_TYPE WHERE DESCRIPTION = 'Intellectual Property Comments'),'N','IP remarks from sync to Test Sponsor Template.','admin',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_TEMPLATE VALUES(NULL)
/
INSERT INTO AWARD_TEMPLATE_COMMENTS (AWARD_TEMPLATE_COMMENTS_ID,AWARD_TEMPLATE_CODE,COMMENT_TYPE_CODE,CHECKLIST_PRINT_FLAG,COMMENTS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_TEMPLATE),(SELECT AWARD_TEMPLATE_CODE FROM AWARD_TEMPLATE WHERE DESCRIPTION = 'Test Sponsor Template' AND STATUS_CODE = (SELECT STATUS_CODE FROM AWARD_STATUS WHERE DESCRIPTION = 'Active')),(SELECT COMMENT_TYPE_CODE FROM COMMENT_TYPE WHERE DESCRIPTION = 'Procurement Comments'),'N','Procurement remarks from sync to Test Sponsor Template.','admin',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_TEMPLATE VALUES(NULL)
/
INSERT INTO AWARD_TEMPLATE_COMMENTS (AWARD_TEMPLATE_COMMENTS_ID,AWARD_TEMPLATE_CODE,COMMENT_TYPE_CODE,CHECKLIST_PRINT_FLAG,COMMENTS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_TEMPLATE),(SELECT AWARD_TEMPLATE_CODE FROM AWARD_TEMPLATE WHERE DESCRIPTION = 'Test Sponsor Template' AND STATUS_CODE = (SELECT STATUS_CODE FROM AWARD_STATUS WHERE DESCRIPTION = 'Active')),(SELECT COMMENT_TYPE_CODE FROM COMMENT_TYPE WHERE DESCRIPTION = 'Property Comments'),'N','Property/Equipment remarks from sync to Test Sponsor Template.','admin',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_TEMPLATE VALUES(NULL)
/
INSERT INTO AWARD_TEMPLATE_COMMENTS (AWARD_TEMPLATE_COMMENTS_ID,AWARD_TEMPLATE_CODE,COMMENT_TYPE_CODE,CHECKLIST_PRINT_FLAG,COMMENTS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_TEMPLATE),(SELECT AWARD_TEMPLATE_CODE FROM AWARD_TEMPLATE WHERE DESCRIPTION = 'Test Sponsor Template' AND STATUS_CODE = (SELECT STATUS_CODE FROM AWARD_STATUS WHERE DESCRIPTION = 'Active')),(SELECT COMMENT_TYPE_CODE FROM COMMENT_TYPE WHERE DESCRIPTION = 'Cost Sharing Comments'),'N','Cost sharing remarks from sync to Test Sponsor Template.','admin',NOW(),UUID(),0)
/
DELIMITER ;
