ALTER TABLE S2S_USER_ATTACHED_FORM 
ADD CONSTRAINT FK1_S2S_USER_ATTACHED_FORM 
FOREIGN KEY (PROPOSAL_NUMBER) 
REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER)
/