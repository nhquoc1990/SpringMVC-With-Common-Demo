CREATE SEQUENCE dept_seq START WITH 1;

--------------------------------------------------------
--  File created - Tuesday-August-25-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "STUDENT" 
   (	"ID" NUMBER(32,0), 
	"NAME" VARCHAR2(32 BYTE), 
	"NATIONALITY" VARCHAR2(50 BYTE), 
	"CODE" VARCHAR2(20 BYTE), 
	"ENTERING_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table T_CLASS
--------------------------------------------------------

  CREATE TABLE "T_CLASS" 
   (	"ID" NUMBER(32,0), 
	"CLASS_NAME" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table T_COURSE
--------------------------------------------------------

  CREATE TABLE "T_COURSE" 
   (	"ID" NUMBER(32,0), 
	"COURSE_NAME" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table T_USER
--------------------------------------------------------

  CREATE TABLE "T_USER" 
   (	"ID" NUMBER(32,0), 
	"USERNAME" VARCHAR2(10 BYTE), 
	"PASSWORD" VARCHAR2(100 BYTE), 
	"ROLE" NUMBER(1,0), 
	"ISADMIN" NUMBER(1,0), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"FULLNAME" VARCHAR2(100 BYTE), 
	"ADDRESS" VARCHAR2(200 BYTE), 
	"CLASS_ID" NUMBER(32,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table T_USER_COURSE
--------------------------------------------------------

  CREATE TABLE "T_USER_COURSE" 
   (	"USER_ID" NUMBER(32,0), 
	"COURSE_ID" NUMBER(32,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into STUDENT
SET DEFINE OFF;
Insert into STUDENT (ID,NAME,NATIONALITY,CODE,ENTERING_DATE) values (550,'new name','campuchia','code2',to_date('20-02-02','RR-MM-DD'));
Insert into STUDENT (ID,NAME,NATIONALITY,CODE,ENTERING_DATE) values (250,'quoc','vb','12345',to_date('20-02-02','RR-MM-DD'));
Insert into STUDENT (ID,NAME,NATIONALITY,CODE,ENTERING_DATE) values (300,'Nguyen Hoang Quoc','Vietnam','test6',to_date('20-02-02','RR-MM-DD'));
Insert into STUDENT (ID,NAME,NATIONALITY,CODE,ENTERING_DATE) values (301,'Nguyen Hoang Quoc','Vietnam','aaa',to_date('20-02-02','RR-MM-DD'));
Insert into STUDENT (ID,NAME,NATIONALITY,CODE,ENTERING_DATE) values (302,'7878','Vietnam','test1',to_date('20-02-02','RR-MM-DD'));
REM INSERTING into T_CLASS
SET DEFINE OFF;
REM INSERTING into T_COURSE
SET DEFINE OFF;
REM INSERTING into T_USER
SET DEFINE OFF;
Insert into T_USER (ID,USERNAME,PASSWORD,ROLE,ISADMIN,EMAIL,FULLNAME,ADDRESS,CLASS_ID) values (6,'Quoc','pass',0,0,null,null,null,null);
Insert into T_USER (ID,USERNAME,PASSWORD,ROLE,ISADMIN,EMAIL,FULLNAME,ADDRESS,CLASS_ID) values (8,'Quoc','pass',0,0,null,null,null,null);
Insert into T_USER (ID,USERNAME,PASSWORD,ROLE,ISADMIN,EMAIL,FULLNAME,ADDRESS,CLASS_ID) values (4,'Quoc','pass',0,0,null,null,null,null);
Insert into T_USER (ID,USERNAME,PASSWORD,ROLE,ISADMIN,EMAIL,FULLNAME,ADDRESS,CLASS_ID) values (10,'Quoc','pass',0,0,null,null,null,null);
REM INSERTING into T_USER_COURSE
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index STUDENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STUDENT_PK" ON "STUDENT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010810
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0010810" ON "T_CLASS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010805
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0010805" ON "T_COURSE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010836
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0010836" ON "T_USER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger TRG_CLASS_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRG_CLASS_ID" 
    before insert on T_CLASS
    for each row
  begin
    select dept_seq.nextval
       into :new.ID
        from dual;
  end;
/
ALTER TRIGGER "TRG_CLASS_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_COURSE_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRG_COURSE_ID" 
    before insert on T_COURSE
    for each row
  begin
    select dept_seq.nextval
       into :new.ID
        from dual;
  end;
/
ALTER TRIGGER "TRG_COURSE_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_USER_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRG_USER_ID" 
    before insert on T_USER
    for each row
  begin
    select dept_seq.nextval
       into :new.ID
        from dual;
  end;
/
ALTER TRIGGER "TRG_USER_ID" ENABLE;
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "STUDENT" ADD CONSTRAINT "STUDENT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "STUDENT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table T_CLASS
--------------------------------------------------------

  ALTER TABLE "T_CLASS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "T_CLASS" MODIFY ("CLASS_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "T_CLASS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table T_COURSE
--------------------------------------------------------

  ALTER TABLE "T_COURSE" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "T_COURSE" MODIFY ("COURSE_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "T_COURSE" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table T_USER
--------------------------------------------------------

  ALTER TABLE "T_USER" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "T_USER" MODIFY ("USERNAME" NOT NULL ENABLE);
 
  ALTER TABLE "T_USER" MODIFY ("PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "T_USER" MODIFY ("ROLE" NOT NULL ENABLE);
 
  ALTER TABLE "T_USER" MODIFY ("ISADMIN" NOT NULL ENABLE);
 
  ALTER TABLE "T_USER" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table T_USER_COURSE
--------------------------------------------------------

  ALTER TABLE "T_USER_COURSE" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "T_USER_COURSE" MODIFY ("COURSE_ID" NOT NULL ENABLE);
