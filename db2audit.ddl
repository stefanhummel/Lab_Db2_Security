-- -*- sql -*-
--
-- Sample DDL to create audit tables for Version 9.5
--
--   -> assumes db2start issued
--   -> assumes connection to a database exists
--   -> assumes an 8K tablespace is available for use
--   -> assumes called by "db2 -tf db2audit.ddl"
--

--
-- To remind users how to use this file!
--
ECHO                              ;
ECHO ******* IMPORTANT ********** ;
ECHO                              ;
ECHO USAGE: db2 -tf db2audit.ddl  ;
ECHO                              ;
ECHO ******* IMPORTANT ********** ;
ECHO                              ;
ECHO                              ;
--
--

--
-- AUDIT CATEGORY
--

CREATE TABLE AUDIT ( TIMESTAMP CHAR(26 OCTETS),
                     CATEGORY CHAR(8 OCTETS),
                     EVENT VARCHAR(32 OCTETS),
                     CORRELATOR INTEGER,
                     STATUS INTEGER,
                     USERID VARCHAR(1024 OCTETS),
                     AUTHID VARCHAR(128 OCTETS),
                     DATABASE CHAR(8 OCTETS),
                     NODENUM SMALLINT,
                     COORDNUM SMALLINT,
                     APPID VARCHAR(255 OCTETS),
                     APPNAME VARCHAR(1024 OCTETS),
                     PKGSCHEMA VARCHAR(128 OCTETS),
                     PKGNAME VARCHAR(128 OCTETS),
                     PKGSECNUM SMALLINT,
                     PKGVER VARCHAR(64 OCTETS),
                     LCLTRANSID VARCHAR(10 OCTETS) FOR BIT DATA,
                     GLBLTRANSID VARCHAR(30 OCTETS) FOR BIT DATA,
                     CLNTUSERID VARCHAR(255 OCTETS),
                     CLNTWRKSTNAME VARCHAR(255 OCTETS),
                     CLNTAPPNAME VARCHAR(255 OCTETS),
                     CLNTACCSTRING VARCHAR(255 OCTETS),
                     TRSTCTXNAME VARCHAR(255 OCTETS),
                     CONTRSTTYPE CHAR(1 OCTETS),
                     ROLEINHERITED VARCHAR(128 OCTETS),
                     POLNAME VARCHAR(128 OCTETS),
                     POLASSOCOBJTYPE CHAR(1 OCTETS),
                     POLASSOCSUBOBJTYPE CHAR(1 OCTETS),
                     POLASSOCNAME VARCHAR(128 OCTETS),
                     POLASSOCOBJSCHEMA VARCHAR(128 OCTETS),
                     AUDITSTATUS CHAR(1 OCTETS),
                     CHECKINGSTATUS CHAR(1 OCTETS),
                     CONTEXTSTATUS CHAR(1 OCTETS),
                     EXECUTESTATUS CHAR(1 OCTETS),
                     EXECUTEDATA CHAR(1 OCTETS),
                     OBJMAINTSTATUS CHAR(1 OCTETS),
                     SECMAINTSTATUS CHAR(1 OCTETS),
                     SYSADMINSTATUS CHAR(1 OCTETS),
                     VALIDATESTATUS CHAR(1 OCTETS),
                     ERRORTYPE CHAR(8 OCTETS),
                     DATAPATH VARCHAR(1024 OCTETS),
                     ARCHIVEPATH VARCHAR(1024 OCTETS),
                     ORIGUSERID VARCHAR(1024 OCTETS),
                     INSTNAME VARCHAR(128 OCTETS),
                     HOSTNAME VARCHAR(255 OCTETS)) ORGANIZE BY ROW; 

--
-- CHECKING CATEGORY
--

CREATE TABLE CHECKING ( TIMESTAMP CHAR(26 OCTETS),
                        CATEGORY CHAR(8 OCTETS),
                        EVENT VARCHAR(32 OCTETS),
                        CORRELATOR INTEGER,
                        STATUS INTEGER,
                        DATABASE CHAR(8 OCTETS),
                        USERID VARCHAR(1024 OCTETS),
                        AUTHID VARCHAR(128 OCTETS),
                        NODENUM SMALLINT,
                        COORDNUM SMALLINT,
                        APPID VARCHAR(255 OCTETS),
                        APPNAME VARCHAR(1024 OCTETS),
                        PKGSCHEMA VARCHAR(128 OCTETS),
                        PKGNAME VARCHAR(128 OCTETS),
                        PKGSECNUM SMALLINT,
                        OBJSCHEMA VARCHAR(128 OCTETS),
                        OBJNAME VARCHAR(128 OCTETS),
                        OBJTYPE VARCHAR(32 OCTETS),
                        ACCESSAPP CHAR(34 OCTETS),
                        ACCESSATT CHAR(34 OCTETS),
                        PKGVER VARCHAR(64 OCTETS),
                        CHKAUTHID VARCHAR(128 OCTETS),
                        LCLTRANSID VARCHAR(10 OCTETS) FOR BIT DATA,
                        GLBLTRANSID VARCHAR(30 OCTETS) FOR BIT DATA,
                        CLNTUSERID VARCHAR(255 OCTETS),
                        CLNTWRKSTNAME VARCHAR(255 OCTETS),
                        CLNTAPPNAME VARCHAR(255 OCTETS),
                        CLNTACCSTRING VARCHAR(255 OCTETS),
                        TRSTCTXNAME VARCHAR(255 OCTETS),
                        CONTRSTTYPE CHAR(1 OCTETS),
                        ROLEINHERITED VARCHAR(128 OCTETS),
                        ORIGUSERID VARCHAR(1024 OCTETS),
                        INSTNAME VARCHAR(128 OCTETS),
                        HOSTNAME VARCHAR(255 OCTETS),
                        ACCESSCONTROLMGR INTEGER ) ORGANIZE BY ROW; 


--
-- OBJMAINT CATEGORY
--

CREATE TABLE OBJMAINT ( TIMESTAMP CHAR(26 OCTETS),
                        CATEGORY CHAR(8 OCTETS),
                        EVENT VARCHAR(32 OCTETS),
                        CORRELATOR INTEGER,
                        STATUS INTEGER,
                        DATABASE CHAR(8 OCTETS),
                        USERID VARCHAR(1024 OCTETS),
                        AUTHID VARCHAR(128 OCTETS),
                        NODENUM SMALLINT,
                        COORDNUM SMALLINT,
                        APPID VARCHAR(255 OCTETS),
                        APPNAME VARCHAR(1024 OCTETS),
                        PKGSCHEMA VARCHAR(128 OCTETS),
                        PKGNAME VARCHAR(128 OCTETS),
                        PKGSECNUM SMALLINT,
                        OBJSCHEMA VARCHAR(128 OCTETS),
                        OBJNAME VARCHAR(128 OCTETS),
                        OBJTYPE VARCHAR(32 OCTETS),
                        PACKVER VARCHAR(64 OCTETS),
                        SECPOLNAME VARCHAR(128 OCTETS),
                        ALTERACTION VARCHAR(32 OCTETS),
                        PROTCOLNAME VARCHAR(128 OCTETS),
                        COLSECLABEL VARCHAR(128 OCTETS),
                        SECCOLNAME VARCHAR(128 OCTETS),
                        LCLTRANSID VARCHAR(10 OCTETS) FOR BIT DATA,
                        GLBLTRANSID VARCHAR(30 OCTETS) FOR BIT DATA,
                        CLNTUSERID VARCHAR(255 OCTETS),
                        CLNTWRKSTNAME VARCHAR(255 OCTETS),
                        CLNTAPPNAME VARCHAR(255 OCTETS),
                        CLNTACCSTRING VARCHAR(255 OCTETS),
                        TRSTCTXNAME VARCHAR(255 OCTETS),
                        CONTRSTTYPE CHAR(1 OCTETS),
                        ROLEINHERITED VARCHAR(128 OCTETS),
                        MODULENAME VARCHAR(128 OCTETS),
                        ASSOCOBJNAME VARCHAR(128 OCTETS),
                        ASSOCOBJSCHEMA VARCHAR(128 OCTETS),
                        ASSOCOBJTYPE VARCHAR(32 OCTETS),
                        ASSOCSUBOBJNAME VARCHAR(128 OCTETS),
                        ASSOCSUBOBJTYPE VARCHAR(32 OCTETS),
                        SECURED VARCHAR(32 OCTETS),
                        STATE VARCHAR(32 OCTETS),
                        ACCESSCONTROL VARCHAR(32 OCTETS),
                        ORIGUSERID VARCHAR(1024 OCTETS),
                        INSTNAME VARCHAR(128 OCTETS),
                        HOSTNAME VARCHAR(255 OCTETS)) ORGANIZE BY ROW; 


--
-- SECMAINT CATEGORY
--

CREATE TABLE SECMAINT ( TIMESTAMP CHAR(26 OCTETS),
                        CATEGORY CHAR(8 OCTETS),
                        EVENT VARCHAR(32 OCTETS),
                        CORRELATOR INTEGER,
                        STATUS INTEGER,
                        DATABASE CHAR(8 OCTETS),
                        USERID VARCHAR(1024 OCTETS),
                        AUTHID VARCHAR(128 OCTETS),
                        NODENUM SMALLINT,
                        COORDNUM SMALLINT,
                        APPID VARCHAR(255 OCTETS),
                        APPNAME VARCHAR(1024 OCTETS),
                        PKGSCHEMA VARCHAR(128 OCTETS),
                        PKGNAME VARCHAR(128 OCTETS),
                        PKGSECNUM SMALLINT,
                        OBJSCHEMA VARCHAR(128 OCTETS),
                        OBJNAME VARCHAR(128 OCTETS),
                        OBJTYPE VARCHAR(32 OCTETS),
                        GRANTOR VARCHAR(128 OCTETS),
                        GRANTEE VARCHAR(128 OCTETS),
                        GRANTEETYPE VARCHAR(32 OCTETS),
                        PRIVAUTH CHAR(34 OCTETS),
                        PKGVER VARCHAR(64 OCTETS),
                        ACCESSTYPE VARCHAR(32 OCTETS),
                        ASSUMEAUTHID VARCHAR(128 OCTETS),
                        LCLTRANSID VARCHAR(10 OCTETS) FOR BIT DATA,
                        GLBLTRANSID VARCHAR(30 OCTETS) FOR BIT DATA,
                        GRANTORTYPE VARCHAR(32 OCTETS),
                        CLNTUSERID VARCHAR(255 OCTETS),
                        CLNTWRKSTNAME VARCHAR(255 OCTETS),
                        CLNTAPPNAME VARCHAR(255 OCTETS),
                        CLNTACCSTRING VARCHAR(255 OCTETS),
                        TRSTCTXUSER VARCHAR(128 OCTETS),
                        TRSTCTXUSERAUTH INTEGER,
                        TRSTCTXNAME VARCHAR(255 OCTETS),
                        CONTRSTTYPE CHAR(1 OCTETS),
                        ROLEINHERITED VARCHAR(128 OCTETS),
                        ALTERACTION VARCHAR(32 OCTETS),
                        ASSOCOBJNAME VARCHAR(128 OCTETS),
                        ASSOCOBJSCHEMA VARCHAR(128 OCTETS),
                        ASSOCOBJTYPE VARCHAR(32 OCTETS),
                        ASSOCSUBOBJNAME VARCHAR(128 OCTETS),
                        ASSOCSUBOBJTYPE VARCHAR(32 OCTETS),
                        SECURED VARCHAR(32 OCTETS),
                        STATE VARCHAR(32 OCTETS),
                        ACCESSCONTROL VARCHAR(32 OCTETS),
                        ORIGUSERID VARCHAR(1024 OCTETS),
                        INSTNAME VARCHAR(128 OCTETS),
                        HOSTNAME VARCHAR(255 OCTETS)) ORGANIZE BY ROW; 

--
-- SYSADMIN CATEGORY
--

CREATE TABLE SYSADMIN ( TIMESTAMP CHAR(26 OCTETS),
                        CATEGORY CHAR(8 OCTETS),
                        EVENT VARCHAR(32 OCTETS),
                        CORRELATOR INTEGER,
                        STATUS INTEGER,
                        DATABASE CHAR(8 OCTETS),
                        USERID VARCHAR(1024 OCTETS),
                        AUTHID VARCHAR(128 OCTETS),
                        NODENUM SMALLINT,
                        COORDNUM SMALLINT,
                        APPID VARCHAR(255 OCTETS),
                        APPNAME VARCHAR(1024 OCTETS),
                        PKGSCHEMA VARCHAR(128 OCTETS),
                        PKGNAME VARCHAR(128 OCTETS),
                        PKGSECNUM SMALLINT,
                        PKGVER VARCHAR(64 OCTETS),
                        LCLTRANSID VARCHAR(10 OCTETS) FOR BIT DATA,
                        GLBLTRANSID VARCHAR(30 OCTETS) FOR BIT DATA,
                        CLNTUSERID VARCHAR(255 OCTETS),
                        CLNTWRKSTNAME VARCHAR(255 OCTETS),
                        CLNTAPPNAME VARCHAR(255 OCTETS),
                        CLNTACCSTRING VARCHAR(255 OCTETS),
                        TRSTCTXNAME VARCHAR(255 OCTETS),
                        CONTRSTTYPE CHAR(1 OCTETS),
                        ROLEINHERITED VARCHAR(128 OCTETS),
                        ORIGUSERID VARCHAR(1024 OCTETS),
                        EVENTDETAILS VARCHAR(2048 OCTETS),
                        INSTNAME VARCHAR(128 OCTETS),
                        HOSTNAME VARCHAR(255 OCTETS)) ORGANIZE BY ROW; 
                          
--
-- VALIDATE CATEGORY
--

CREATE TABLE VALIDATE ( TIMESTAMP CHAR(26 OCTETS),
                        CATEGORY CHAR(8 OCTETS),
                        EVENT VARCHAR(32 OCTETS),
                        CORRELATOR INTEGER,
                        STATUS INTEGER,
                        DATABASE CHAR(8 OCTETS),
                        USERID VARCHAR(1024 OCTETS),
                        AUTHID VARCHAR(128 OCTETS),
                        EXECID VARCHAR(1024 OCTETS),
                        NODENUM SMALLINT,
                        COORDNUM SMALLINT,
                        APPID VARCHAR(255 OCTETS),
                        APPNAME VARCHAR(1024 OCTETS),
                        AUTHTYPE VARCHAR(32 OCTETS),
                        PKGSCHEMA VARCHAR(128 OCTETS),
                        PKGNAME VARCHAR(128 OCTETS),
                        PKGSECNUM SMALLINT,
                        PKGVER VARCHAR(64 OCTETS),
                        PLUGINNAME VARCHAR(32 OCTETS),
                        LCLTRANSID VARCHAR(10 OCTETS) FOR BIT DATA,
                        GLBLTRANSID VARCHAR(30 OCTETS) FOR BIT DATA,
                        CLNTUSERID VARCHAR(255 OCTETS),
                        CLNTWRKSTNAME VARCHAR(255 OCTETS),
                        CLNTAPPNAME VARCHAR(255 OCTETS),
                        CLNTACCSTRING VARCHAR(255 OCTETS),
                        TRSTCTXNAME VARCHAR(255 OCTETS),
                        CONTRSTTYPE CHAR(1 OCTETS),
                        ROLEINHERITED VARCHAR(128 OCTETS),
                        ORIGUSERID VARCHAR(1024 OCTETS),
                        INSTNAME VARCHAR(128 OCTETS),
                        HOSTNAME VARCHAR(255 OCTETS)) ORGANIZE BY ROW; 

--
-- CONTEXT CATEGORY
--

CREATE TABLE CONTEXT ( TIMESTAMP CHAR(26 OCTETS),
                       CATEGORY CHAR(8 OCTETS),
                       EVENT VARCHAR(32 OCTETS),
                       CORRELATOR INTEGER,
                       DATABASE CHAR(8 OCTETS),
                       USERID VARCHAR(1024 OCTETS),
                       AUTHID VARCHAR(128 OCTETS),
                       NODENUM SMALLINT,
                       COORDNUM SMALLINT,
                       APPID VARCHAR(255 OCTETS),
                       APPNAME VARCHAR(1024 OCTETS),
                       PKGSCHEMA VARCHAR(128 OCTETS),
                       PKGNAME VARCHAR(128 OCTETS),
                       PKGSECNUM SMALLINT,
                       STMTTEXT CLOB(8M OCTETS),
                       PKGVER VARCHAR(64 OCTETS),
                       LCLTRANSID VARCHAR(10 OCTETS) FOR BIT DATA,
                       GLBLTRANSID VARCHAR(30 OCTETS) FOR BIT DATA,
                       CLNTUSERID VARCHAR(255 OCTETS),
                       CLNTWRKSTNAME VARCHAR(255 OCTETS),
                       CLNTAPPNAME VARCHAR(255 OCTETS),
                       CLNTACCSTRING VARCHAR(255 OCTETS),
                       TRSTCTXNAME VARCHAR(255 OCTETS),
                       CONTRSTTYPE CHAR(1 OCTETS),
                       ROLEINHERITED VARCHAR(128 OCTETS),
                       ORIGUSERID VARCHAR(1024 OCTETS),
                       INSTNAME VARCHAR(128 OCTETS),
                       HOSTNAME VARCHAR(255 OCTETS)) ORGANIZE BY ROW; 


--
-- EXECUTE CATEGORY
--

CREATE TABLE EXECUTE ( TIMESTAMP CHAR(26 OCTETS),
                       CATEGORY CHAR(8 OCTETS),
                       EVENT VARCHAR(32 OCTETS),
                       CORRELATOR INTEGER,
                       STATUS INTEGER,
                       DATABASE CHAR(8 OCTETS),
                       USERID VARCHAR(1024 OCTETS),
                       AUTHID VARCHAR(128 OCTETS),
                       SESSNAUTHID VARCHAR(128 OCTETS),
                       NODENUM SMALLINT,
                       COORDNUM SMALLINT,
                       APPID VARCHAR(255 OCTETS),
                       APPNAME VARCHAR(1024 OCTETS),
                       CLNTUSERID VARCHAR(255 OCTETS),
                       CLNTWRKSTNAME VARCHAR(255 OCTETS),
                       CLNTAPPNAME VARCHAR(255 OCTETS),
                       CLNTACCSTRING VARCHAR(255 OCTETS),
                       TRSTCTXNAME VARCHAR(255 OCTETS),
                       CONTRSTTYPE CHAR(1 OCTETS),
                       ROLEINHERITED VARCHAR(128 OCTETS),
                       PKGSCHEMA VARCHAR(128 OCTETS),
                       PKGNAME VARCHAR(128 OCTETS),
                       PKGSECNUM SMALLINT,
                       PKGVER VARCHAR(64 OCTETS),
                       LCLTRANSID VARCHAR(10 OCTETS) FOR BIT DATA,
                       GLBLTRANSID VARCHAR(30 OCTETS) FOR BIT DATA,
                       UOWID BIGINT,
                       ACTIVITYID BIGINT,
                       STMTINVOCID BIGINT,
                       STMTNESTLVL BIGINT,
                       ACTIVITYTYPE VARCHAR(32 OCTETS),
                       STMTTEXT CLOB(8M OCTETS),
                       STMTISOLATIONLVL CHAR(8 OCTETS),
                       COMPENVDESC BLOB(8K),
                       ROWSMODIFIED INTEGER,
                       ROWSRETURNED BIGINT,
                       SAVEPOINTID BIGINT,
                       STMTVALINDEX INTEGER,
                       STMTVALTYPE CHAR(16 OCTETS),
                       STMTVALDATA CLOB(128K OCTETS),
                       STMTVALEXTENDEDINDICATOR INTEGER,
                       LOCAL_START_TIME CHAR(26 OCTETS),
                       ORIGUSERID VARCHAR(1024 OCTETS),
                       INSTNAME VARCHAR(128 OCTETS),
                       HOSTNAME VARCHAR(255 OCTETS)) ORGANIZE BY ROW; 
