DELIMITER /
CREATE TABLE IACUC_PROTO_CORRESP_TEMPL  ( 
	PROTO_CORRESP_TEMPL_ID 	DECIMAL(12,0) NOT NULL,
	PROTO_CORRESP_TYPE_CODE	VARCHAR(3) NOT NULL,
	COMMITTEE_ID           	VARCHAR(15) NOT NULL,
	FILE_NAME              	VARCHAR(150) NOT NULL,
	UPDATE_TIMESTAMP       	DATE NOT NULL,
	UPDATE_USER            	VARCHAR(60) NOT NULL,
	VER_NBR                	DECIMAL(8,0) DEFAULT 1 NOT NULL,
	OBJ_ID                 	VARCHAR(36) NOT NULL,
	CORRESPONDENCE_TEMPLATE	LONGTEXT NULL
) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/
ALTER TABLE IACUC_PROTO_CORRESP_TEMPL
ADD CONSTRAINT PK_IACUC_PROTO_CORRESP_TEMPL
PRIMARY KEY (PROTO_CORRESP_TEMPL_ID)
/
DELIMITER ;
