CREATE TABLE TB_USER_JWT (
    ID          VARCHAR2(255) NOT NULL
    ,USERNAME    VARCHAR2(255)
    ,EMAIL       VARCHAR2(255)
    ,PASSWORD    VARCHAR2(256)
    ,ROLES       VARCHAR2(255)
    ,DELETE_YN   CHAR(1) DEFAULT 'N'
    ,INSERT_TIME VARCHAR2(255)
    ,UPDATE_TIME VARCHAR2(255)
    ,DELETE_TIME VARCHAR2(255)
    ,CONSTRAINT "PK_USER_JWT" PRIMARY KEY ( "ID" )
);

CREATE SEQUENCE SQ_USER MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 1;

DROP TABLE TB_USER_JWT;