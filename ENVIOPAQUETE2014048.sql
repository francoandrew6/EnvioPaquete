-- USER SQL
ALTER USER "ENVIOPAQUETE2014048"
DEFAULT TABLESPACE "SYSTEM"
TEMPORARY TABLESPACE "TEMP"
ACCOUNT UNLOCK ;

-- QUOTAS
ALTER USER "ENVIOPAQUETE2014048" QUOTA UNLIMITED ON USERS;
ALTER USER "ENVIOPAQUETE2014048" QUOTA UNLIMITED ON SYSTEM;
ALTER USER "ENVIOPAQUETE2014048" QUOTA UNLIMITED ON SYSAUX;

-- ROLES
ALTER USER "ENVIOPAQUETE2014048" DEFAULT ROLE "ADM_PARALLEL_EXECUTE_TASK","AQ_ADMINISTRATOR_ROLE","DELETE_CATALOG_ROLE","OEM_MONITOR","XDB_WEBSERVICES","HS_ADMIN_SELECT_ROLE","EXECUTE_CATALOG_ROLE","SCHEDULER_ADMIN","DATAPUMP_IMP_FULL_DATABASE","RESOURCE","DATAPUMP_EXP_FULL_DATABASE","AQ_USER_ROLE","APEX_ADMINISTRATOR_ROLE","SELECT_CATALOG_ROLE","CTXAPP","RECOVERY_CATALOG_OWNER","GATHER_SYSTEM_STATISTICS","DBA","CONNECT","AUTHENTICATEDUSER","XDB_SET_INVOKER","HS_ADMIN_EXECUTE_ROLE","PLUSTRACE","LOGSTDBY_ADMINISTRATOR","XDB_WEBSERVICES_WITH_PUBLIC","XDBADMIN","XDB_WEBSERVICES_OVER_HTTP","EXP_FULL_DATABASE","IMP_FULL_DATABASE","HS_ADMIN_ROLE","DBFS_ROLE","OEM_ADVISOR";

-- SYSTEM PRIVILEGES

--------------------------------------------------------
-- Archivo creado  - viernes-febrero-19-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ROL
--------------------------------------------------------

  CREATE TABLE "ENVIOPAQUETE2014048"."ROL" 
   (	"IDROL" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(128 BYTE), 
	"DESCRIPCION" VARCHAR2(128 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into ENVIOPAQUETE2014048.ROL
SET DEFINE OFF;
Insert into ENVIOPAQUETE2014048.ROL (IDROL,NOMBRE,DESCRIPCION) values ('1','admin','administra todo');
Insert into ENVIOPAQUETE2014048.ROL (IDROL,NOMBRE,DESCRIPCION) values ('2','user','es un usuario');
--------------------------------------------------------
--  DDL for Index ROL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ENVIOPAQUETE2014048"."ROL_PK" ON "ENVIOPAQUETE2014048"."ROL" ("IDROL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table ROL
--------------------------------------------------------

  ALTER TABLE "ENVIOPAQUETE2014048"."ROL" ADD CONSTRAINT "ROL_PK" PRIMARY KEY ("IDROL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ENVIOPAQUETE2014048"."ROL" MODIFY ("IDROL" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Trigger ROL_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ENVIOPAQUETE2014048"."ROL_TRG" 
BEFORE INSERT ON ROL 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDROL IS NULL THEN
      SELECT ROL_SEQ.NEXTVAL INTO :NEW.IDROL FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ENVIOPAQUETE2014048"."ROL_TRG" ENABLE;

--------------------------------------------------------
-- Archivo creado  - viernes-febrero-19-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table USUARIO
--------------------------------------------------------

  CREATE TABLE "ENVIOPAQUETE2014048"."USUARIO" 
   (	"IDUSUARIO" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(128 BYTE), 
	"NICKNAME" VARCHAR2(128 BYTE), 
	"CONTRASEÑA" VARCHAR2(128 BYTE), 
	"CORREO" VARCHAR2(128 BYTE), 
	"DIRECCION" VARCHAR2(128 BYTE), 
	"IDROL" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into ENVIOPAQUETE2014048.USUARIO
SET DEFINE OFF;
Insert into ENVIOPAQUETE2014048.USUARIO (IDUSUARIO,NOMBRE,NICKNAME,CONTRASEÑA,CORREO,DIRECCION,IDROL) values ('1','Emmanuel','Ema','123','ema@gmail.com','Guatemala','1');
--------------------------------------------------------
--  DDL for Index USUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ENVIOPAQUETE2014048"."USUARIO_PK" ON "ENVIOPAQUETE2014048"."USUARIO" ("IDUSUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "ENVIOPAQUETE2014048"."USUARIO" ADD CONSTRAINT "USUARIO_PK" PRIMARY KEY ("IDUSUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ENVIOPAQUETE2014048"."USUARIO" MODIFY ("IDROL" NOT NULL ENABLE);
  ALTER TABLE "ENVIOPAQUETE2014048"."USUARIO" MODIFY ("IDUSUARIO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "ENVIOPAQUETE2014048"."USUARIO" ADD CONSTRAINT "USUARIO_FK1" FOREIGN KEY ("IDROL")
	  REFERENCES "ENVIOPAQUETE2014048"."ROL" ("IDROL") ENABLE;
--------------------------------------------------------
--  DDL for Trigger USUARIO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ENVIOPAQUETE2014048"."USUARIO_TRG" 
BEFORE INSERT ON USUARIO 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDUSUARIO IS NULL THEN
      SELECT USUARIO_SEQ.NEXTVAL INTO :NEW.IDUSUARIO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ENVIOPAQUETE2014048"."USUARIO_TRG" ENABLE;

--------------------------------------------------------
-- Archivo creado  - viernes-febrero-19-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PAQUETE
--------------------------------------------------------

  CREATE TABLE "ENVIOPAQUETE2014048"."PAQUETE" 
   (	"IDPAQUETE" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(128 BYTE), 
	"PESO" NUMBER(*,0), 
	"DESCRIPCION" VARCHAR2(128 BYTE), 
	"VALOR" VARCHAR2(128 BYTE), 
	"TIPOPAQUETE" VARCHAR2(128 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into ENVIOPAQUETE2014048.PAQUETE
SET DEFINE OFF;
Insert into ENVIOPAQUETE2014048.PAQUETE (IDPAQUETE,NOMBRE,PESO,DESCRIPCION,VALOR,TIPOPAQUETE) values ('1','Cebollas','22','es comida','22.00','Comida');
--------------------------------------------------------
--  DDL for Index PAQUETE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ENVIOPAQUETE2014048"."PAQUETE_PK" ON "ENVIOPAQUETE2014048"."PAQUETE" ("IDPAQUETE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table PAQUETE
--------------------------------------------------------

  ALTER TABLE "ENVIOPAQUETE2014048"."PAQUETE" ADD CONSTRAINT "PAQUETE_PK" PRIMARY KEY ("IDPAQUETE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ENVIOPAQUETE2014048"."PAQUETE" MODIFY ("IDPAQUETE" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Trigger PAQUETE_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ENVIOPAQUETE2014048"."PAQUETE_TRG" 
BEFORE INSERT ON PAQUETE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDPAQUETE IS NULL THEN
      SELECT PAQUETE_SEQ.NEXTVAL INTO :NEW.IDPAQUETE FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ENVIOPAQUETE2014048"."PAQUETE_TRG" ENABLE;

--------------------------------------------------------
-- Archivo creado  - viernes-febrero-19-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table STOCKPAQUETE
--------------------------------------------------------

  CREATE TABLE "ENVIOPAQUETE2014048"."STOCKPAQUETE" 
   (	"IDSTOCKPAQUETE" NUMBER(*,0), 
	"VALORVIAJE" NUMBER(*,0), 
	"ESTADO" VARCHAR2(128 BYTE), 
	"IDPAQUETE" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into ENVIOPAQUETE2014048.STOCKPAQUETE
SET DEFINE OFF;
Insert into ENVIOPAQUETE2014048.STOCKPAQUETE (IDSTOCKPAQUETE,VALORVIAJE,ESTADO,IDPAQUETE) values ('1','123','enviado','1');
--------------------------------------------------------
--  DDL for Index STOCKPAQUETE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ENVIOPAQUETE2014048"."STOCKPAQUETE_PK" ON "ENVIOPAQUETE2014048"."STOCKPAQUETE" ("IDSTOCKPAQUETE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table STOCKPAQUETE
--------------------------------------------------------

  ALTER TABLE "ENVIOPAQUETE2014048"."STOCKPAQUETE" ADD CONSTRAINT "STOCKPAQUETE_PK" PRIMARY KEY ("IDSTOCKPAQUETE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ENVIOPAQUETE2014048"."STOCKPAQUETE" MODIFY ("IDPAQUETE" NOT NULL ENABLE);
  ALTER TABLE "ENVIOPAQUETE2014048"."STOCKPAQUETE" MODIFY ("IDSTOCKPAQUETE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table STOCKPAQUETE
--------------------------------------------------------

  ALTER TABLE "ENVIOPAQUETE2014048"."STOCKPAQUETE" ADD CONSTRAINT "STOCKPAQUETE_FK1" FOREIGN KEY ("IDPAQUETE")
	  REFERENCES "ENVIOPAQUETE2014048"."PAQUETE" ("IDPAQUETE") ENABLE;
--------------------------------------------------------
--  DDL for Trigger STOCKPAQUETE_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ENVIOPAQUETE2014048"."STOCKPAQUETE_TRG" 
BEFORE INSERT ON STOCKPAQUETE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDSTOCKPAQUETE IS NULL THEN
      SELECT STOCKPAQUETE_SEQ.NEXTVAL INTO :NEW.IDSTOCKPAQUETE FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ENVIOPAQUETE2014048"."STOCKPAQUETE_TRG" ENABLE;

--------------------------------------------------------
-- Archivo creado  - viernes-febrero-19-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ENVIOPAQUETE
--------------------------------------------------------

  CREATE TABLE "ENVIOPAQUETE2014048"."ENVIOPAQUETE" 
   (	"IDENVIOPAQUETE" NUMBER(*,0), 
	"IDSTOCKPAQUETE" NUMBER(*,0), 
	"IDUSUARIO" NUMBER(*,0), 
	"FECHAENVIO" VARCHAR2(128 BYTE), 
	"FECHAENTREGA" VARCHAR2(128 BYTE), 
	"FECHARETRASO" VARCHAR2(128 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into ENVIOPAQUETE2014048.ENVIOPAQUETE
SET DEFINE OFF;
Insert into ENVIOPAQUETE2014048.ENVIOPAQUETE (IDENVIOPAQUETE,IDSTOCKPAQUETE,IDUSUARIO,FECHAENVIO,FECHAENTREGA,FECHARETRASO) values ('1','1','1','12 de mayo 2016','20 de febrero 2016','13 de mayo 2016');
--------------------------------------------------------
--  DDL for Index ENVIOPAQUETE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ENVIOPAQUETE2014048"."ENVIOPAQUETE_PK" ON "ENVIOPAQUETE2014048"."ENVIOPAQUETE" ("IDENVIOPAQUETE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table ENVIOPAQUETE
--------------------------------------------------------

  ALTER TABLE "ENVIOPAQUETE2014048"."ENVIOPAQUETE" MODIFY ("IDUSUARIO" NOT NULL ENABLE);
  ALTER TABLE "ENVIOPAQUETE2014048"."ENVIOPAQUETE" MODIFY ("IDSTOCKPAQUETE" NOT NULL ENABLE);
  ALTER TABLE "ENVIOPAQUETE2014048"."ENVIOPAQUETE" ADD CONSTRAINT "ENVIOPAQUETE_PK" PRIMARY KEY ("IDENVIOPAQUETE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ENVIOPAQUETE2014048"."ENVIOPAQUETE" MODIFY ("IDENVIOPAQUETE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ENVIOPAQUETE
--------------------------------------------------------

  ALTER TABLE "ENVIOPAQUETE2014048"."ENVIOPAQUETE" ADD CONSTRAINT "ENVIOPAQUETE_FK1" FOREIGN KEY ("IDSTOCKPAQUETE")
	  REFERENCES "ENVIOPAQUETE2014048"."STOCKPAQUETE" ("IDSTOCKPAQUETE") ENABLE;
  ALTER TABLE "ENVIOPAQUETE2014048"."ENVIOPAQUETE" ADD CONSTRAINT "ENVIOPAQUETE_FK2" FOREIGN KEY ("IDUSUARIO")
	  REFERENCES "ENVIOPAQUETE2014048"."USUARIO" ("IDUSUARIO") ENABLE;
--------------------------------------------------------
--  DDL for Trigger ENVIOPAQUETE_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ENVIOPAQUETE2014048"."ENVIOPAQUETE_TRG" 
BEFORE INSERT ON ENVIOPAQUETE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDENVIOPAQUETE IS NULL THEN
      SELECT ENVIOPAQUETE_SEQ.NEXTVAL INTO :NEW.IDENVIOPAQUETE FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ENVIOPAQUETE2014048"."ENVIOPAQUETE_TRG" ENABLE;

--------------------------------------------------------
-- Archivo creado  - viernes-febrero-19-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table NOTIFICACION
--------------------------------------------------------

  CREATE TABLE "ENVIOPAQUETE2014048"."NOTIFICACION" 
   (	"IDNOTIFICACION" NUMBER(*,0), 
	"FECHA" VARCHAR2(128 BYTE), 
	"MENSAJE" VARCHAR2(20 BYTE), 
	"IDENVIOPAQUETE" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into ENVIOPAQUETE2014048.NOTIFICACION
SET DEFINE OFF;
Insert into ENVIOPAQUETE2014048.NOTIFICACION (IDNOTIFICACION,FECHA,MENSAJE,IDENVIOPAQUETE) values ('1','23 de mayo de 2016','enviado','1');
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ENVIOPAQUETE2014048"."TABLE1_PK" ON "ENVIOPAQUETE2014048"."NOTIFICACION" ("IDNOTIFICACION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table NOTIFICACION
--------------------------------------------------------

  ALTER TABLE "ENVIOPAQUETE2014048"."NOTIFICACION" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("IDNOTIFICACION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ENVIOPAQUETE2014048"."NOTIFICACION" MODIFY ("IDENVIOPAQUETE" NOT NULL ENABLE);
  ALTER TABLE "ENVIOPAQUETE2014048"."NOTIFICACION" MODIFY ("IDNOTIFICACION" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table NOTIFICACION
--------------------------------------------------------

  ALTER TABLE "ENVIOPAQUETE2014048"."NOTIFICACION" ADD CONSTRAINT "NOTIFICACION_FK1" FOREIGN KEY ("IDENVIOPAQUETE")
	  REFERENCES "ENVIOPAQUETE2014048"."ENVIOPAQUETE" ("IDENVIOPAQUETE") ENABLE;
--------------------------------------------------------
--  DDL for Trigger NOTIFICACION_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ENVIOPAQUETE2014048"."NOTIFICACION_TRG" 
BEFORE INSERT ON NOTIFICACION 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDNOTIFICACION IS NULL THEN
      SELECT NOTIFICACION_SEQ.NEXTVAL INTO :NEW.IDNOTIFICACION FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ENVIOPAQUETE2014048"."NOTIFICACION_TRG" ENABLE;
