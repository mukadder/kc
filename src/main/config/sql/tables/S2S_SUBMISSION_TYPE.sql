 CREATE TABLE S2S_SUBMISSION_TYPE 
   (	"S2S_SUBMISSION_TYPE_CODE" VARCHAR2(3) constraint S2S_SUBMISSION_TYPEN1 NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(200) constraint S2S_SUBMISSION_TYPEN2 NOT NULL ENABLE, 
	"UPDATE_TIMESTAMP" DATE constraint S2S_SUBMISSION_TYPEN3 NOT NULL ENABLE, 
	"UPDATE_USER" VARCHAR2(60) constraint S2S_SUBMISSION_TYPEN4 NOT NULL ENABLE, 
	 "VER_NBR" NUMBER(8,0) DEFAULT 1  constraint  S2S_SUBMISSION_TYPEN5  NOT NULL ENABLE,
	"OBJ_ID" VARCHAR2(36) DEFAULT SYS_GUID()  constraint  S2S_SUBMISSION_TYPEN6  NOT NULL ENABLE,
	CONSTRAINT "PK_S2S_SUBMISSION_TYPE_KRA" PRIMARY KEY ("S2S_SUBMISSION_TYPE_CODE") ENABLE
); 
 