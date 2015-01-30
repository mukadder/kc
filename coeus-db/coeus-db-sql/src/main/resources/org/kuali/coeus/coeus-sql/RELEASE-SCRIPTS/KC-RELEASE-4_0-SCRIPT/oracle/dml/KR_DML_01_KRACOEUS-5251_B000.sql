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

-- ADD PERMISSION
INSERT INTO KRIM_PERM_T (PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND)
VALUES (KRIM_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, (SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NM = 'Initiate Document'), 'KC-SYS', 'Add Sponsor Hierarchy', 'Permission for adding a new sponsor hierarchy record', 'Y')
/
INSERT INTO KRIM_PERM_T (PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND)
VALUES (KRIM_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, (SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NM = 'Default'), 'KC-SYS', 'Modify Sponsor Hierarchy', 'Permission for modifying a sponsor hierarchy record', 'Y')
/
INSERT INTO KRIM_PERM_T (PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND)
VALUES (KRIM_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, (SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NM = 'Default'), 'KC-SYS', 'Delete Sponsor Hierarchy', 'Permission for deleting a sponsor hierarchy record', 'Y')
/
-- ADD PERM ATTRIBUTE DATA
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL)
VALUES (KRIM_ATTR_DATA_ID_BS_S.NEXTVAL, SYS_GUID(), 1, (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Add Sponsor Hierarchy'), (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Document Type (Permission)'), (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'documentTypeName'), 'SponsorHierarchyDocument')
/
-- ADD ROLE
INSERT INTO KRIM_ROLE_T (ROLE_ID, OBJ_ID, VER_NBR, ROLE_NM, NMSPC_CD, DESC_TXT, KIM_TYP_ID, ACTV_IND, LAST_UPDT_DT)
VALUES (KRIM_ROLE_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 'Maintain Sponsor Hierarchy', 'KC-SYS', 'Role for maintaing sponsor hierarchy data.', (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'), 'Y', SYSDATE)
/
-- ASSOCIATE PERMISSIONS WITH ROLE
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Maintain Sponsor Hierarchy'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Add Sponsor Hierarchy'), 'Y')
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Maintain Sponsor Hierarchy'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Modify Sponsor Hierarchy'), 'Y')
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Maintain Sponsor Hierarchy'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Delete Sponsor Hierarchy'), 'Y')
/
-- ASSOCIATE ROLE WITH QUICKSTART
INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID, VER_NBR, OBJ_ID, ROLE_ID, MBR_ID, MBR_TYP_CD, LAST_UPDT_DT)
VALUES (KRIM_ROLE_MBR_ID_BS_S.NEXTVAL, 1, SYS_GUID(), (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Maintain Sponsor Hierarchy'), '10000000001', 'P', SYSDATE)
/
-- ADD ATTRIBUTE DATA TO THE ROLE-MEMBER
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, ROLE_MBR_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL)
VALUES (KRIM_ATTR_DATA_ID_BS_S.NEXTVAL, SYS_GUID(), 1, (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Maintain Sponsor Hierarchy') AND MBR_ID = '10000000001'), (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'), (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'), '000001')
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, ROLE_MBR_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL)
VALUES (KRIM_ATTR_DATA_ID_BS_S.NEXTVAL, SYS_GUID(), 1, (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Maintain Sponsor Hierarchy') AND MBR_ID = '10000000001'), (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'), (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'subunits'), 'Y')
/
