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

ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD EXCLUDE_FROM_MASTER_DISCL CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD ACTIVE_FLAG CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD USE_SHRT_TXT_FLD_1 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD REQ_SHRT_TXT_FLD_1 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD SHRT_TXT_FLD_1_LABEL VARCHAR(128)
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD USE_SHRT_TXT_FLD_2 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD REQ_SHRT_TXT_FLD_2 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD SHRT_TXT_FLD_2_LABEL VARCHAR(128)
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD USE_SHRT_TXT_FLD_3 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD REQ_SHRT_TXT_FLD_3 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD SHRT_TXT_FLD_3_LABEL VARCHAR(128)
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD USE_LNG_TXT_FLD_1 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD REQ_LNG_TXT_FLD_1 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD LNG_TXT_FLD_1_LABEL VARCHAR(128)
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD USE_LNG_TXT_FLD_2 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD REQ_LNG_TXT_FLD_2 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD LNG_TXT_FLD_2_LABEL VARCHAR(128)
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD USE_LNG_TXT_FLD_3 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD REQ_LNG_TXT_FLD_3 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD LNG_TXT_FLD_3_LABEL VARCHAR(128)
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD USE_DATE_FLD_1 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD REQ_DATE_FLD_1 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD DATE_FLD_1_LABEL VARCHAR(128)
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD USE_DATE_FLD_2 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD REQ_DATE_FLD_2 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD DATE_FLD_2_LABEL VARCHAR(128)
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD USE_NMBR_FLD_1 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD REQ_NMBR_FLD_1 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD NMBR_FLD_1_LABEL VARCHAR(128)
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD USE_NMBR_FLD_2 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD REQ_NMBR_FLD_2 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD NMBR_FLD_2_LABEL VARCHAR(128)
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD USE_SLCT_BOX_1 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD REQ_SLCT_BOX_1 CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD SLCT_BOX_1_LABEL VARCHAR(128)
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD SLCT_BOX_1_VAL_FNDR VARCHAR(256)
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD EXCLUDE_FIN_ENT CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD SYSTEM_EVENT CHAR(1) default 'N' NOT NULL
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD PROJECT_ID_LABEL VARCHAR(128)
/
ALTER TABLE COI_DISCLOSURE_EVENT_TYPE ADD PROJECT_TITLE_LABEL VARCHAR(128)
/

