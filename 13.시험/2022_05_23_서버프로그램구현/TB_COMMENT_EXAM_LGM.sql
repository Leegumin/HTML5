-- ?? ??΄λΈ?, ? ?½μ‘°κ±΄, ????€ ?΄λ¦μ ? λ―Έμ΄λ‘? ?κΈ? ?λ¬Έμ΄??? λΆμ¬? ??±???€.
-- 1) ??? ??΄λΈλͺ? TB_COMMENT_EXAM_XXX : ?? ?κΈ? ?΄λ¦? ?΄??? ?£?Ό??.
-- 2) ?? PRIMARY KEY ?΄λ¦λ PK_COMMENT_EXAM_XXX_ID λ‘? λ³?κ²½ν??€.
-- 3) ?? SQ_COMMENT_EXAM_XXX ?Όλ‘? ?΄λ¦μ λ³?κ²½ν??€.
DROP TABLE TB_COMMENT_EXAM;

CREATE TABLE TB_COMMENT_EXAM_LGM (
    ID NUMBER NOT NULL,
    BOARD_ID NUMBER ,
    COMMENT_CONTENT VARCHAR2(3000) ,
    COMMENT_WRITER VARCHAR2(256) ,
    DELETE_FLAG  CHAR(1) DEFAULT 'N',
    INSERT_TIME VARCHAR2(50) ,
    UPDATE_TIME VARCHAR2(50) ,
    DELETE_TIME VARCHAR2(50)
);

ALTER TABLE TB_COMMENT_EXAM_LGM ADD CONSTRAINT PK_COMMENT_EXAM_ID PRIMARY KEY(ID);

DROP SEQUENCE SQ_COMMENT_EXAM;

CREATE SEQUENCE SQ_COMMENT_EXAM_LGM
INCREMENT BY 1 START WITH 1
MINVALUE 1
MAXVALUE 99999999;