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

DELIMITER /
CREATE TABLE PMC_EPS_PROPOSAL (
  PMC_EPS_PROPOSAL_ID   DECIMAL(12,0) NOT NULL,
  PERSON_MASS_CHANGE_ID DECIMAL(12,0) NOT NULL,
  INVESTIGATOR          CHAR(1) DEFAULT 'N' NOT NULL,
  MAILING_INFORMATION   CHAR(1) DEFAULT 'N' NOT NULL,
  KEY_STUDY_PERSON      CHAR(1) DEFAULT 'N' NOT NULL,
  UPDATE_USER           VARCHAR(60) NOT NULL, 
  UPDATE_TIMESTAMP      DATE NOT NULL, 
  OBJ_ID                VARCHAR(36) NOT NULL,
  VER_NBR               DECIMAL(8,0) DEFAULT 1 NOT NULL
) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/
ALTER TABLE PMC_EPS_PROPOSAL ADD CONSTRAINT PK_PMC_EPS_PROPOSAL
  PRIMARY KEY (PMC_EPS_PROPOSAL_ID)
/
DELIMITER ;
