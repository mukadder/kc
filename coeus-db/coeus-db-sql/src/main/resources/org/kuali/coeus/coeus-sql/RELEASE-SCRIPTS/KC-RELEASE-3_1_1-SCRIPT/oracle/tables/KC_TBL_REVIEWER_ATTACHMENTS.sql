CREATE TABLE REVIEWER_ATTACHMENTS
   (REVIEWER_ATTACHMENT_ID NUMBER(12,0) NOT NULL,
    PROTOCOL_ONLN_RVW_FK NUMBER(12,0) NULL, 
    PROTOCOL_ID_FK NUMBER(12,0) NOT NULL, 
    SUBMISSION_ID_FK NUMBER(12,0) NOT NULL, 
    PERSON_ID        	VARCHAR2(40) NOT NULL,
    ATTACHMENT_ID    	NUMBER(3,0) NOT NULL,
    FILE_ID NUMBER(12,0) NOT NULL,
    DESCRIPTION VARCHAR2(200), 
    MIME_TYPE        	VARCHAR2(100) NULL,
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
    PRIVATE_FLAG VARCHAR2(1) NOT NULL, 
    PROTOCOL_PERSON_CAN_VIEW_FLAG VARCHAR2(1) NOT NULL, 
    OBJ_ID VARCHAR2(36) NOT NULL,
    UPDATE_TIMESTAMP DATE NOT NULL,
    UPDATE_USER VARCHAR2(10) NOT NULL,
    CREATE_TIMESTAMP DATE NOT NULL,
    CREATE_USER VARCHAR2(10) NOT NULL)
/
ALTER TABLE REVIEWER_ATTACHMENTS
    ADD CONSTRAINT PK_REVIEWER_ATTACHMENTS
    PRIMARY KEY (REVIEWER_ATTACHMENT_ID)
/
