DELIMITER /
alter table KRMS_AGENDA_ATTR_T DISABLE KEYS
/
SET FOREIGN_KEY_CHECKS=0
/
update KRMS_AGENDA_T set AGENDA_ID = 'KC1000' where AGENDA_ID = 'Q1000'
/
update KRMS_AGENDA_ITM_T set AGENDA_ID = 'KC1000' where AGENDA_ID = 'Q1000'
/
update KRMS_AGENDA_ATTR_T set AGENDA_ID = 'KC1000' where AGENDA_ID = 'Q1000'
/
SET FOREIGN_KEY_CHECKS=1
/
alter table KRMS_AGENDA_ATTR_T ENABLE KEYS
/
DELIMITER ;