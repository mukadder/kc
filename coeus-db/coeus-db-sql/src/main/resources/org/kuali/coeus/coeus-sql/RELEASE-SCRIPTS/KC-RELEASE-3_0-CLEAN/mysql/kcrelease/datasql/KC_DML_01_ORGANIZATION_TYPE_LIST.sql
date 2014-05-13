delimiter /
TRUNCATE TABLE ORGANIZATION_TYPE_LIST
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (1,'C: City or Township Government','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (2,'A: State Government','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (3,'Federal Government','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (4,'J: Nonprofit with 501C3 IRS status (other than Institution of Higher Education)','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (5,'K: Nonprofit without 501C3 IRS status (other than Institution of Higher Education)','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (6,'N: For-profit Organization (other than small business)','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (7,'P: Other ','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (8,'G: Native American Tribal Government (Federally Recognized)','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (9,'M: Individual','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (10,'L: Private Institution of Higher Education','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (11,'O: Small Business','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (14,'P: Other (specify) - socially and economically disadvantaged','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (15,'P: Other (specify) - women owned','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (21,'F: State-Controlled Institution of Higher Education','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (22,'B: County Government','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (23,'D: Special District Governments','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (24,'E: Independent School District','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (25,'H: Public/Indian Housing Authority','admin',NOW(),UUID(),1)
/
INSERT INTO ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (26,'I: Native American Tribal Organization (other than Federally recognized)','admin',NOW(),UUID(),1)
/
delimiter ;