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

set define off
set sqlblanklines on
spool KC-RELEASE-5_0-Demo-ORACLE-Install.log
@../../current/5.0/dml/KC_DML_01_KCCOI-164_0TSD.sql
@../../current/5.0/dml/KC_DML_01_KCCOI-166_0TSD.sql
@../../current/5.0/dml/KC_DML_01_KCIAC-17_0TSD.sql
@../../current/5.0/dml/KC_DML_01_KRACOEUS-5539_0TSD.sql
@../../current/5.0/dml/KC_DML_02_KCCOI-162_0TSD.sql
@../../current/5.0/dml/KC_DML_02_KCCOI-163_0TSD.sql
@../../current/5.0/dml/KC_DML_03_KCIAC-16_0TSD.sql
commit;
exit
