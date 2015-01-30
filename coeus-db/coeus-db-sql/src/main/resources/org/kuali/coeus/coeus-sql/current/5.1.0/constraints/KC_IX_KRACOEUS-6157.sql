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

create index IX_AWARD_AWARD_NUMBER on AWARD (AWARD_NUMBER)
/
create index IX_AWARD_DOC_NUMBER on AWARD (DOCUMENT_NUMBER)
/
create index IX_AWD_HIER_ACTV_PARENT on AWARD_HIERARCHY (PARENT_AWARD_NUMBER, ACTIVE, AWARD_NUMBER)
/
create index IX_AWD_AMT_INFO_AWARD_ID on AWARD_AMOUNT_INFO (AWARD_ID, AWARD_AMOUNT_INFO_ID)
/
create index IX_AWD_CLSOUT_AWARD_ID on AWARD_CLOSEOUT (AWARD_ID)
/
create index IX_AWD_PERSONS_AWARD_ID on AWARD_PERSONS (AWARD_ID)
/
create index IX_AWD_CUST_DATA_AWARD_ID on AWARD_CUSTOM_DATA (AWARD_ID)
/
create index IX_TNM_DOCUMENT_AWARD_NUMBER ON TIME_AND_MONEY_DOCUMENT( AWARD_NUMBER )
/
create index IX_VERSION_HISTORY_CMPST on VERSION_HISTORY (SEQ_OWNER_CLASS_NAME, SEQ_OWNER_VERSION_NAME_VALUE, VERSION_STATUS)
/
create index IX_PROP_PER_CRED_SPLIT on PROPOSAL_PER_CREDIT_SPLIT (PROPOSAL_PERSON_ID)
/
CREATE INDEX IX_AWARD_EQUIPMENT_AWARD_ID ON AWARD_APPROVED_EQUIPMENT( AWARD_ID )
/
CREATE INDEX IX_AWARD_ATTACHMENT_AWARD_ID ON AWARD_ATTACHMENT( AWARD_ID )
/
CREATE INDEX IX_AWARD_BUDGET_LIMIT_AWARD_ID ON AWARD_BUDGET_LIMIT( AWARD_ID )
/
CREATE INDEX IX_AWARD_COMMENT_AWARD_ID ON AWARD_COMMENT( AWARD_ID )
/
CREATE INDEX IX_AWARD_COST_SHARE_AWARD_ID ON AWARD_COST_SHARE( AWARD_ID )
/
CREATE INDEX IX_AWARD_IDC_RATE_AWARD_ID ON AWARD_IDC_RATE( AWARD_ID )
/
CREATE INDEX IX_AWARD_PYMNT_SCHED_AWARD_ID ON AWARD_PAYMENT_SCHEDULE( AWARD_ID )
/
CREATE INDEX IX_AWARD_REPORT_TERMS_AWARD_ID ON AWARD_REPORT_TERMS( AWARD_ID )
/
CREATE INDEX IX_AWARD_KEYWORD_AWARD_ID ON AWARD_SCIENCE_KEYWORD( AWARD_ID )
/
CREATE INDEX IX_AWARD_SP_REVIEW_AWARD_ID ON AWARD_SPECIAL_REVIEW( AWARD_ID )
/
CREATE INDEX IX_AWARD_TRANS_SPNSR_AWARD_ID ON AWARD_TRANSFERRING_SPONSOR( AWARD_ID )
/
CREATE INDEX IX_PROP_COMMENTS_PID ON PROPOSAL_COMMENTS( PROPOSAL_ID )
/
CREATE INDEX IX_PROP_COST_SHARING_PID ON PROPOSAL_COST_SHARING( PROPOSAL_ID )
/
CREATE INDEX IX_PROP_CUSTOM_DATA_PID ON PROPOSAL_CUSTOM_DATA( PROPOSAL_ID )
/
CREATE INDEX IX_PROP_IP_REVIEW_JOIN_PID ON PROPOSAL_IP_REVIEW_JOIN( PROPOSAL_ID )
/
CREATE INDEX IX_PROP_NOTEPAD_PID ON PROPOSAL_NOTEPAD( PROPOSAL_ID )
/
CREATE INDEX IX_PROP_SCIENCE_KEYWORD_PID ON PROPOSAL_SCIENCE_KEYWORD( PROPOSAL_ID )
/
CREATE INDEX IX_PROP_SPECIAL_REVIEW_PID ON PROPOSAL_SPECIAL_REVIEW( PROPOSAL_ID )
/
create index IX_AWD_CUST_DATA_VAL on AWARD_CUSTOM_DATA (VALUE)
/
