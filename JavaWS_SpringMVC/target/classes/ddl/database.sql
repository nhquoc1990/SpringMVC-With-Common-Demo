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

