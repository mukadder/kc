CREATE TABLE AWARD_ATTACHMENT_TYPE (
    TYPE_CODE VARCHAR2 (3) NOT NULL ENABLE, 
    DESCRIPTION VARCHAR2 (300) NOT NULL ENABLE, 
    VER_NBR NUMBER (8, 0) DEFAULT 1 NOT NULL ENABLE, 
    OBJ_ID VARCHAR2 (36) DEFAULT SYS_GUID () NOT NULL ENABLE, 
    UPDATE_TIMESTAMP DATE NOT NULL ENABLE, 
    UPDATE_USER VARCHAR2 (60) NOT NULL ENABLE) ;

ALTER TABLE AWARD_ATTACHMENT_TYPE 
    ADD CONSTRAINT PK_AWARD_ATTACHMENT_TYPE 
            PRIMARY KEY (TYPE_CODE) ;