--
-- Kuali Coeus, a comprehensive research administration system for higher education.
--
-- Copyright 2005-2015 Kuali, Inc.
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

create table SEQ_DASH_BOARD_MENU_ITEM_ID
(
	ID bigint(19) not null auto_increment, primary key (ID) 
) ENGINE MyISAM;

CREATE TABLE DASH_BOARD_MENU_ITEMS
(
   DASH_BOARD_MENU_ITEM_ID   	DECIMAL (12,0) NOT NULL,
   MENU_ITEM                     VARCHAR (500) NOT NULL,
   MENU_ACTION		    		VARCHAR (2000) NOT NULL,
   MENU_TYPE_FLAG				CHAR(1) NULL,
   ACTIVE						CHAR(1) NOT NULL,
   UPDATE_TIMESTAMP             DATE NOT NULL,
   UPDATE_USER                  VARCHAR (60) NOT NULL,
   VER_NBR                      DECIMAL (8,0) DEFAULT 1 NOT NULL,
   OBJ_ID                       VARCHAR (36) NOT NULL
);

ALTER TABLE DASH_BOARD_MENU_ITEMS
ADD CONSTRAINT PK_DASH_BOARD_MENU_ITEM
PRIMARY KEY (DASH_BOARD_MENU_ITEM_ID);

ALTER TABLE DASH_BOARD_MENU_ITEMS
ADD CONSTRAINT UQ_DASH_BOARD_MENU
UNIQUE (MENU_ITEM(255));

insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Create Proposal', '/kc-pd-krad/proposalDevelopment?methodToCall=docHandler&command=initiate&viewId=PropDev-InitiateView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Search for Proposals', '/kr-krad/lookup?methodToCall=start&viewId=DevelopmentProposals-LookupViewId', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Proposals Enroute', '/kr-krad/lookup?methodToCall=start&viewId=EnrouteDevelopmentProposals-LookupViewId', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View All My Proposals', '/kr-krad/lookup?methodToCall=search&viewId=AllDevelopmentProposals-LookupViewId', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Create Proposal Log', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Fmaintenance.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.kra.institutionalproposal.proposallog.ProposalLog&viewId=Kc-Header-IframeView', 'O', 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Create Institute Proposal', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.kra.institutionalproposal.proposallog.ProposalLog%26docFormKey%3D88888888%26includeCustomActionUrls%3Dtrue%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%3FforInstitutionalProposal%26hideReturnLink%3Dtrue%26showMaintenanceLinks%3Dtrue%26refreshCaller%3Dcancel&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Search Proposal Log', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.kra.institutionalproposal.proposallog.ProposalLog%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue%26showMaintenanceLinks%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Search for Institutional Proposals', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.kra.institutionalproposal.home.InstitutionalProposal%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Create Negotiations', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2FnegotiationNegotiation.do%3FmethodToCall%3DdocHandler%26command%3Dinitiate%26docTypeName%3DNegotiationDocument&viewId=Kc-Header-IframeView', 'O', 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Search Negotiations', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.kra.negotiations.bo.Negotiation%26docFormKey%3D88888888%26includeCustomActionUrls%3Dtrue%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View All My Negotiations', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dsearch%26businessObjectClassName%3Dorg.kuali.kra.negotiations.bo.Negotiation%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue%26negotiatorName%3Dadmin*admin%26lookupProtocolPersonId%3Dadmin%26searchCriteriaEnabled%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Create Post-Award', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2FawardHome.do%3FmethodToCall%3DdocHandler%26command%3Dinitiate%26docTypeName%3DAwardDocument%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Search For Post-Award', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.kra.award.home.Award%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Award Report Tracking', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2FreportTrackingLookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.kra.award.paymentreports.awardreports.reporting.ReportTracking%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Create SubAward', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2FsubAwardHome.do%3FmethodToCall%3DdocHandler%26command%3Dinitiate%26docTypeName%3DSubAwardDocument%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Search For SubAward', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.kra.subaward.bo.SubAward%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View All my Awards', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dsearch%26businessObjectClassName%3Dorg.kuali.kra.award.home.Award%26docFormKey%3D88888888%26includeCustomActionUrls%3Dtrue%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue%26projectPersons.fullName%3Dadmin*admin&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Create IRB Protocol', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2FprotocolProtocol.do%3FmethodToCall%3DdocHandler%26command%3Dinitiate%26docFormKey%3D88888888%26docTypeName%3DProtocolDocument%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView&viewId=Kc-Header-IframeView', 'O', 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Search For IRB Protocols', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.kra.irb.Protocol%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Amend or Renew IRB Protocol', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dsearch%26businessObjectClassName%3Dorg.kuali.kra.irb.Protocol%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue%26lookupActionAmendRenewProtocol%3Dtrue&viewId=Kc-Header-IframeView', 'O', 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Notify IRB of a Protocol', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dsearch%26businessObjectClassName%3Dorg.kuali.kra.irb.Protocol%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue%26lookupActionNotifyIRBProtocol%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Request a Status Change on a IRB Protocol', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dsearch%26businessObjectClassName%3Dorg.kuali.kra.irb.Protocol%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue%26lookupActionRequestProtocol%3Dtrue&viewId=Kc-Header-IframeView', 'A', 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Pending Protocols', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dsearch%26businessObjectClassName%3Dorg.kuali.kra.irb.Protocol%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue%26lookupPendingProtocol%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Protocols Pending PI Action', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dsearch%26businessObjectClassName%3Dorg.kuali.kra.irb.Protocol%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue%26lookupPendingProtocol%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Protocols Pending Committee Action', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dsearch%26businessObjectClassName%3Dorg.kuali.kra.irb.Protocol%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue%26lookupPendingProtocol%3Dtrue%26protocolStatusCode%3D100&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Protocols Under Development', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dsearch%26businessObjectClassName%3Dorg.kuali.kra.irb.Protocol%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue%26lookupPendingProtocol%3Dtrue%26protocolStatusCode%3D101&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View All My Protocols', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dsearch%26businessObjectClassName%3Dorg.kuali.kra.irb.Protocol%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue%26lookupProtocolPersonId%3Dadmin%26investigator%3Dadmin*admin&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View All My Reviews', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dsearch%26businessObjectClassName%3Dorg.kuali.kra.iacuc.onlinereview.IacucProtocolOnlineReview%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue%26lookupReviewerPersonId%3Dadmin&viewId=Kc-Header-IframeView', 'A', 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View All My Schedules', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dsearch%26businessObjectClassName%3Dorg.kuali.kra.committee.bo.CommitteeSchedule%26showMaintenanceLinks%3Dtrue%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue%26committee.committeeMemberships.personId%3Dadmin&viewId=Kc-Header-IframeView', 'A', 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Pessimistic Lock', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.rice.krad.document.authorization.PessimisticLock%26showMaintenanceLinks%3Dtrue%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Search For Grants.gov Opportunity', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.coeus.propdev.impl.s2s.S2sOpportunity%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Address Book', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.coeus.common.framework.rolodex.Rolodex%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue%26docFormKey%3D88888888&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Search For A Sponsor', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.coeus.common.framework.sponsor.Sponsor%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', 'O', 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Search For A Keyword', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.coeus.common.framework.keyword.ScienceKeyword&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Current & Pending Support', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2FcurrentOrPendingReport.do%3FreturnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Perform Person Mass Change', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2FpersonMassChangeHome.do%3FmethodToCall%3DdocHandler%26command%3Dinitiate%26docFormKey%3D88888888%26docTypeName%3DPersonMassChangeDocument%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Award Subcontracting Goals and Expenditures', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2FawardSubcontractingGoalsExpenditures.do%3FmethodToCall%3Dstart%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Generate Subcontracting Expenditure Data', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2FsubcontractingExpendituresDataGeneration.do%3FmethodToCall%3Dstart%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Reporting', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Freporting.do%3FmethodToCall%3DgetReportParametersFromDesign%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Create IRB Commiittee', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2FcommitteeCommittee.do%3FmethodToCall%3DdocHandler%26command%3Dinitiate%26docTypeName%3DCommitteeDocument%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Search For IRB Commiittee', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.kra.committee.bo.Committee%26docFormKey%3D88888888%26includeCustomActionUrls%3Dtrue%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', 'O', 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Protocol Submissions', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.kra.irb.actions.submit.ProtocolSubmission%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View IRB Schedules', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.kra.committee.bo.CommitteeSchedule%26docFormKey%3D88888888%26showMaintenanceLinks%3Dtrue%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', 'O', 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Agenda', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr-krad%2Flookup%3FmethodToCall%3Dstart%26dataObjectClassName%3Dorg.kuali.rice.krms.impl.repository.AgendaBo%26showMaintenanceLinks%3Dtrue%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Context', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr-krad%2Flookup%3FmethodToCall%3Dstart%26dataObjectClassName%3Dorg.kuali.rice.krms.impl.repository.ContextBo%26showMaintenanceLinks%3Dtrue%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Attribute Definition', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr-krad%2Flookup%3FmethodToCall%3Dstart%26dataObjectClassName%3Dorg.kuali.rice.krms.impl.repository.KrmsAttributeDefinitionBo%26showMaintenanceLinks%3Dtrue%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Terms', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr-krad%2Flookup%3FmethodToCall%3Dstart%26dataObjectClassName%3Dorg.kuali.rice.krms.impl.repository.TermBo%26showMaintenanceLinks%3Dtrue%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Term Specifications', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr-krad%2Flookup%3FmethodToCall%3Dstart%26dataObjectClassName%3Dorg.kuali.rice.krms.impl.repository.TermSpecificationBo%26showMaintenanceLinks%3Dtrue%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Category', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr-krad%2Flookup%3FmethodToCall%3Dstart%26dataObjectClassName%3Dorg.kuali.rice.krms.impl.repository.CategoryBo%26showMaintenanceLinks%3Dtrue%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View People Flow', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr-krad%2Flookup%3FmethodToCall%3Dstart%26dataObjectClassName%3Dorg.kuali.rice.kew.impl.peopleflow.PeopleFlowBo%26showMaintenanceLinks%3Dtrue%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'Edit Preferences', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkew%2FPreferences.do%3FreturnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Routing Report', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkew%2FRoutingReport.do%3FreturnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView&viewId=Kc-Header-IframeView', NULL, 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Rules', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkr%2Flookup.do%3FmethodToCall%3Dstart%26businessObjectClassName%3Dorg.kuali.rice.kew.rule.RuleBaseValues%26docFormKey%3D88888888%26returnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView%26hideReturnLink%3Dtrue%26lookupActionNotifyIRBProtocol%3Dtrue&viewId=Kc-Header-IframeView', 'O', 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Rule QuickLinks', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2Fkew%2FRuleQuickLinks.do%3FreturnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView&viewId=Kc-Header-IframeView', 'A', 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View Current and Pending Personnel Support', '/kc-krad/landingPage?methodToCall=start&href=<<APPLICATION_URL>>%2FcurrentOrPendingReport.do%3FreturnLocation%3D<<APPLICATION_URL>>%252Fkc-krad%252FlandingPage%253FviewId%253DKc-LandingPage-RedirectView&viewId=Kc-Header-IframeView', 'A', 'Y', NOW(), 'admin', 1, UUID());
insert into SEQ_DASH_BOARD_MENU_ITEM_ID values (null);
insert into DASH_BOARD_MENU_ITEMS (DASH_BOARD_MENU_ITEM_ID, MENU_ITEM, MENU_ACTION, MENU_TYPE_FLAG, ACTIVE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES ((select max(ID) from SEQ_DASH_BOARD_MENU_ITEM_ID), 'View S2S Submission List', '/kr-krad/lookup?methodToCall=start&viewId=AllNewDevelopmentProposals-LookupViewId', NULL, 'Y', NOW(), 'admin', 1, UUID());
