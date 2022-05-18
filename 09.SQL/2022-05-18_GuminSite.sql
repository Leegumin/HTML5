INSERT INTO TB_BOARD (
    IDX,
    TITLE,
    CONTENT,
    WRITER,
    INSERT_TIME
)
    SELECT
        SQ_TB_BOARD.NEXTVAL,
        '테스트 제목',
        '테스트 본문',
        '이구민',
        SYSDATE
    FROM
        DUAL
    CONNECT BY
        ROWNUM <= 100;
        
        COMMIT;