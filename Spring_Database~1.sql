--------------------------------------------------------
--  DDL for Table COURSE
--------------------------------------------------------

  CREATE TABLE "COURSE" 
   (	"COURSE_NO" NUMBER(8,0), 
	"DESCRIPTION" VARCHAR2(50 BYTE), 
	"COST" NUMBER(9,2), 
	"PREREQUISITE" NUMBER(8,0), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table ENROLLMENT
--------------------------------------------------------

  CREATE TABLE "ENROLLMENT" 
   (	"STUDENT_ID" NUMBER(8,0), 
	"SECTION_ID" NUMBER(8,0), 
	"ENROLL_DATE" DATE, 
	"FINAL_GRADE" NUMBER(3,0), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table SECTION
--------------------------------------------------------

  CREATE TABLE "SECTION" 
   (	"SECTION_ID" NUMBER(8,0), 
	"COURSE_NO" NUMBER(8,0), 
	"SECTION_NO" NUMBER(3,0), 
	"START_DATE_TIME" DATE, 
	"LOCATION" VARCHAR2(50 BYTE), 
	"INSTRUCTOR_ID" NUMBER(8,0), 
	"CAPACITY" NUMBER(3,0), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "STUDENT" 
   (	"STUDENT_ID" NUMBER(8,0), 
	"SALUTATION" VARCHAR2(5 BYTE), 
	"FIRST_NAME" VARCHAR2(25 BYTE), 
	"LAST_NAME" VARCHAR2(25 BYTE), 
	"STREET_ADDRESS" VARCHAR2(50 BYTE), 
	"ZIP" VARCHAR2(5 BYTE), 
	"PHONE" VARCHAR2(15 BYTE), 
	"EMPLOYER" VARCHAR2(50 BYTE), 
	"REGISTRATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;
REM INSERTING into COURSE
SET DEFINE OFF;
REM INSERTING into ENROLLMENT
SET DEFINE OFF;
REM INSERTING into SECTION
SET DEFINE OFF;
REM INSERTING into STUDENT
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index COURSE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COURSE_PK" ON "COURSE" ("COURSE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index ENROLLMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ENROLLMENT_PK" ON "ENROLLMENT" ("STUDENT_ID", "SECTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SECTION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SECTION_PK" ON "SECTION" ("SECTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SECTION_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "SECTION_UK1" ON "SECTION" ("COURSE_NO", "SECTION_NO") 
  ;
--------------------------------------------------------
--  DDL for Index STUDENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STUDENT_PK" ON "STUDENT" ("STUDENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index COURSE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COURSE_PK" ON "COURSE" ("COURSE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index ENROLLMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ENROLLMENT_PK" ON "ENROLLMENT" ("STUDENT_ID", "SECTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SECTION_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "SECTION_UK1" ON "SECTION" ("COURSE_NO", "SECTION_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SECTION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SECTION_PK" ON "SECTION" ("SECTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index STUDENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STUDENT_PK" ON "STUDENT" ("STUDENT_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table COURSE
--------------------------------------------------------

  ALTER TABLE "COURSE" MODIFY ("COURSE_NO" NOT NULL ENABLE);
  ALTER TABLE "COURSE" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "COURSE" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "COURSE" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
  ALTER TABLE "COURSE" MODIFY ("MODIFIED_BY" NOT NULL ENABLE);
  ALTER TABLE "COURSE" MODIFY ("MODIFIED_DATE" NOT NULL ENABLE);
  ALTER TABLE "COURSE" ADD CONSTRAINT "COURSE_PK" PRIMARY KEY ("COURSE_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table ENROLLMENT
--------------------------------------------------------

  ALTER TABLE "ENROLLMENT" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
  ALTER TABLE "ENROLLMENT" MODIFY ("SECTION_ID" NOT NULL ENABLE);
  ALTER TABLE "ENROLLMENT" MODIFY ("ENROLL_DATE" NOT NULL ENABLE);
  ALTER TABLE "ENROLLMENT" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "ENROLLMENT" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
  ALTER TABLE "ENROLLMENT" MODIFY ("MODIFIED_BY" NOT NULL ENABLE);
  ALTER TABLE "ENROLLMENT" MODIFY ("MODIFIED_DATE" NOT NULL ENABLE);
  ALTER TABLE "ENROLLMENT" ADD CONSTRAINT "ENROLLMENT_PK" PRIMARY KEY ("STUDENT_ID", "SECTION_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table SECTION
--------------------------------------------------------

  ALTER TABLE "SECTION" MODIFY ("SECTION_ID" NOT NULL ENABLE);
  ALTER TABLE "SECTION" MODIFY ("COURSE_NO" NOT NULL ENABLE);
  ALTER TABLE "SECTION" MODIFY ("SECTION_NO" NOT NULL ENABLE);
  ALTER TABLE "SECTION" MODIFY ("INSTRUCTOR_ID" NOT NULL ENABLE);
  ALTER TABLE "SECTION" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SECTION" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
  ALTER TABLE "SECTION" MODIFY ("MODIFIED_BY" NOT NULL ENABLE);
  ALTER TABLE "SECTION" MODIFY ("MODIFIED_DATE" NOT NULL ENABLE);
  ALTER TABLE "SECTION" ADD CONSTRAINT "SECTION_PK" PRIMARY KEY ("SECTION_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "SECTION" ADD CONSTRAINT "SECTION_UK1" UNIQUE ("COURSE_NO", "SECTION_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "STUDENT" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
  ALTER TABLE "STUDENT" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "STUDENT" MODIFY ("ZIP" NOT NULL ENABLE);
  ALTER TABLE "STUDENT" MODIFY ("REGISTRATION_DATE" NOT NULL ENABLE);
  ALTER TABLE "STUDENT" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "STUDENT" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
  ALTER TABLE "STUDENT" MODIFY ("MODIFIED_BY" NOT NULL ENABLE);
  ALTER TABLE "STUDENT" MODIFY ("MODIFIED_DATE" NOT NULL ENABLE);
  ALTER TABLE "STUDENT" ADD CONSTRAINT "STUDENT_PK" PRIMARY KEY ("STUDENT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COURSE
--------------------------------------------------------

  ALTER TABLE "COURSE" ADD CONSTRAINT "COURSE_FK1" FOREIGN KEY ("PREREQUISITE")
	  REFERENCES "COURSE" ("COURSE_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ENROLLMENT
--------------------------------------------------------

  ALTER TABLE "ENROLLMENT" ADD CONSTRAINT "ENROLLMENT_FK1" FOREIGN KEY ("SECTION_ID")
	  REFERENCES "SECTION" ("SECTION_ID") ENABLE;
  ALTER TABLE "ENROLLMENT" ADD CONSTRAINT "ENROLLMENT_FK2" FOREIGN KEY ("STUDENT_ID")
	  REFERENCES "STUDENT" ("STUDENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SECTION
--------------------------------------------------------

  ALTER TABLE "SECTION" ADD CONSTRAINT "SECTION_FK1" FOREIGN KEY ("COURSE_NO")
	  REFERENCES "COURSE" ("COURSE_NO") ENABLE;
