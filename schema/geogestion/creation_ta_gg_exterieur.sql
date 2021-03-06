-- Table non-utilisée

CREATE TABLE "GEO"."TA_GG_EXTERIEUR" (
	"USER_ID" NUMBER NOT NULL ENABLE,
	"EXT_NOM" VARCHAR2(200 BYTE) NOT NULL ENABLE,
	"EXT_DT_FIN_VAL2" DATE NOT NULL ENABLE,
	"EXT_EMAIL" VARCHAR2(200 BYTE) NOT NULL ENABLE,
	"EXT_LOGIN" VARCHAR2(100 BYTE) NOT NULL ENABLE,
	"EXT_PWD" VARCHAR2(2048 BYTE) NOT NULL ENABLE,
	"EXT_DT_CONS" DATE
 )
TABLESPACE "DATA_GEO" ;

CREATE INDEX "GEO"."EXT_USER_FK" ON "GEO"."TA_GG_EXTERIEUR" ("USER_ID")
	TABLESPACE "INDX_GEO";
