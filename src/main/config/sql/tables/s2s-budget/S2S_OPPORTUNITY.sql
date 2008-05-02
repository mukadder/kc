 CREATE TABLE S2S_OPPORTUNITY 
   (	"PROPOSAL_NUMBER" VARCHAR2(8) constraint S2S_OPPORTUNITYN1 NOT NULL ENABLE, 
	"OPPORTUNITY_TITLE" VARCHAR2(255), 
	"COMPETETION_ID" VARCHAR2(50), 
	"OPENING_DATE" DATE, 
	"CLOSING_DATE" DATE, 
	"SCHEMA_URL" VARCHAR2(200), 
	"INSTRUCTION_URL" VARCHAR2(200), 
	"OPPORTUNITY_ID" VARCHAR2(50), 
	"OPPORTUNITY" CLOB DEFAULT empty_clob(), 
	"CFDA_NUMBER" VARCHAR2(6), 
	"S2S_SUBMISSION_TYPE_CODE" NUMBER(3,0) DEFAULT 2 constraint S2S_OPPORTUNITYN2 NOT NULL ENABLE, 
	"REVISION_CODE" VARCHAR2(2), 
	"REVISION_OTHER_DESCRIPTION" VARCHAR2(45), 
	"UPDATE_TIMESTAMP" DATE, 
	"UPDATE_USER" VARCHAR2(60), 
	 "VER_NBR" NUMBER(8,0) DEFAULT 1  constraint  S2S_OPPORTUNITYN3  NOT NULL ENABLE,
	"OBJ_ID" VARCHAR2(36) DEFAULT SYS_GUID()  constraint  S2S_OPPORTUNITYN4  NOT NULL ENABLE,
	CONSTRAINT "PK_S2S_OPPORTUNITY_KRA" PRIMARY KEY ("PROPOSAL_NUMBER") ENABLE
);
ALTER TABLE S2S_OPPORTUNITY ADD (CONSTRAINT "FK1_S2S_OPPORTUNITY_KRA" FOREIGN KEY ("S2S_SUBMISSION_TYPE_CODE")
	  REFERENCES "S2S_SUBMISSION_TYPE" ("S2S_SUBMISSION_TYPE_CODE") );
