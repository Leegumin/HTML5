CREATE TABLE TB_COMMENT (
    --댓글 번호
    IDX         NUMBER NOT NULL,
    --게시판 번호
    BOARD_IDX   NUMBER,
    --댓글 내용
    CONTENT     VARCHAR2(1000),
    --댓글 작성자
    WRITER      VARCHAR2(255),
    DELETE_YN   CHAR(1) DEFAULT 'N',
    --댓글 등록 일시
    INSERT_DATE DATE,
    --댓글 수정 일시
    UPDATE_DATE DATE,
    --댓글 삭제 일시
    DELETE_DATE DATE
);


ALTER TABLE TB_COMMENT ADD CONSTRAINT PK_TB_COMMENT_IDX PRIMARY KEY(IDX);
CREATE SEQUENCE SQ_TB_COMMENT INCREMENT BY 1 START WITH 1 MINVALUE 1 MAXVALUE 9999999999;

-- 미션 
-- 댓글을 위한 테이블 설계를 보고 crud 서비스 만들기
-- 게시판 소스 참고해서 Dto - Dao - xml - service - controller
-- 게시판 ( 페이징 + 검색 ) + 댓글 붙이기
DROP SEQUENCE SQ_TB_COMMENT;
TRUNCATE TABLE TB_COMMENT;

INSERT INTO TB_COMMENT (
    IDX,
    BOARD_IDX,
    CONTENT,
    WRITER,
    INSERT_DATE
)
    SELECT
        SQ_TB_COMMENT.NEXTVAL,
        1,
        '냥냥냥냥냥',
        '이구민',
        SYSDATE
    FROM
        DUAL
    CONNECT BY
        ROWNUM <= 20;

COMMIT;