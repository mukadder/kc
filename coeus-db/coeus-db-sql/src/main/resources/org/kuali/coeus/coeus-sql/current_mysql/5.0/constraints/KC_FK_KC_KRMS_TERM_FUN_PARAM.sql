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
ALTER TABLE KC_KRMS_TERM_FUN_PARAM 
ADD CONSTRAINT FK_KC_KRMS_TERM_FUN_PARAM 
FOREIGN KEY (KC_KRMS_TERM_FUNCTION_ID) 
REFERENCES KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID)
/
DELIMITER ;
