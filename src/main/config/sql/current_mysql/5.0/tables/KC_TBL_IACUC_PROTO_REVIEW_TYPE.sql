DELIMITER /
CREATE TABLE IACUC_PROTO_REVIEW_TYPE (
    PROTOCOL_REVIEW_TYPE_CODE DECIMAL(3,0) NOT NULL,
    DESCRIPTION VARCHAR(200) NOT NULL,
    UPDATE_TIMESTAMP DATE NOT NULL,
    UPDATE_USER VARCHAR(60) NOT NULL,
    VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL,
    OBJ_ID VARCHAR(36) NOT NULL,
    GLOBAL_FLAG CHAR(1) DEFAULT 'Y') ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/
ALTER TABLE IACUC_PROTO_REVIEW_TYPE
ADD CONSTRAINT PK_IACUC_PROTOCOL_REVIEW_TYPE
PRIMARY KEY (PROTOCOL_REVIEW_TYPE_CODE)
/
DELIMITER ;
