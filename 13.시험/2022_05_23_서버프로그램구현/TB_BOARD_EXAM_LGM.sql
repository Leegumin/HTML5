-- ?? ??΄λΈ?, ? ?½μ‘°κ±΄, ????€ ?΄λ¦μ ? λ―Έμ΄λ‘? ?κΈ? ?λ¬Έμ΄??? λΆμ¬? ??±???€.
-- 1) ??? ??΄λΈλͺ? TB_BOARD_EXAM_XXX : ?? ?κΈ? ?΄λ¦? ?΄??? ?£?Ό??.
-- 2) ?? PRIMARY KEY ?΄λ¦λ PK_BOARD_EXAM_XXX_ID λ‘? λ³?κ²½ν??€.
-- 3) ?? SQ_BOARD_EXAM_XXX ?Όλ‘? ?΄λ¦μ λ³?κ²½ν??€.
DROP TABLE TB_BOARD_EXAM;

CREATE TABLE TB_BOARD_EXAM_LGM (
  ID NUMBER NOT NULL ,
  BOARD_TITLE VARCHAR2(256) ,
  BOARD_CONTENT VARCHAR2(255),
  BOARD_WRITER VARCHAR2(255) ,
  VIEW_CNT NUMBER DEFAULT 0,
  DELETE_FLAG CHAR(1) DEFAULT 'N',
  INSERT_TIME VARCHAR2(50),
  UPDATE_TIME VARCHAR2(50),
  DELETE_TIME VARCHAR2(50)
);

ALTER TABLE TB_BOARD_EXAM_LGM ADD CONSTRAINT PK_BOARD_EXAM_ID PRIMARY KEY(ID);

DROP SEQUENCE SQ_BOARD_EXAM;

CREATE SEQUENCE  SQ_BOARD_EXAM_LGM
MINVALUE 1 MAXVALUE 99999999 
INCREMENT BY 1 START WITH 1;









