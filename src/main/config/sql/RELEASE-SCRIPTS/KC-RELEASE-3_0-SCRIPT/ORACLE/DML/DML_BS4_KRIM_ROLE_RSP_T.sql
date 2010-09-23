INSERT INTO KRIM_ROLE_RSP_T ( ROLE_RSP_ID, OBJ_ID, VER_NBR, ROLE_ID, RSP_ID, ACTV_IND )
VALUES (  KRIM_ROLE_RSP_ID_S.NEXTVAL, SYS_GUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-PROTOCOL' AND ROLE_NM = 'IRB Online Reviewer'), (SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Reviewer Approve Online Review'), 'Y' );

INSERT INTO KRIM_ROLE_RSP_T ( ROLE_RSP_ID, OBJ_ID, VER_NBR, ROLE_ID, RSP_ID, ACTV_IND )
VALUES (  KRIM_ROLE_RSP_ID_S.NEXTVAL, SYS_GUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IRB Administrator'), (SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Admin Approve Online Review'), 'Y' );

INSERT INTO KRIM_ROLE_RSP_T ( ROLE_RSP_ID, OBJ_ID, VER_NBR, ROLE_ID, RSP_ID, ACTV_IND )
VALUES ( KRIM_ROLE_RSP_ID_S.NEXTVAL, SYS_GUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IRB Administrator'), (SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Admin Approve Review Request'), 'Y' );

COMMIT;