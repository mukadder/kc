ALTER TABLE S2S_USER_ATTACHED_FORM_ATT 
ADD CONSTRAINT FK1_S2S_USER_ATTACHED_FORM_ATT 
FOREIGN KEY (S2S_USER_ATTACHED_FORM_ID) 
REFERENCES S2S_USER_ATTACHED_FORM (S2S_USER_ATTACHED_FORM_ID)
ON DELETE CASCADE
/
ALTER TABLE S2S_USER_ATTD_FORM_ATT_FILE 
ADD CONSTRAINT FK1_S2S_USR_ATD_FRM_ATT_FIL 
FOREIGN KEY (S2S_USER_ATTACHED_FORM_ATT_ID) 
REFERENCES S2S_USER_ATTACHED_FORM_ATT (S2S_USER_ATTACHED_FORM_ATT_ID) ON DELETE CASCADE
/