INSERT INTO TB_BOARD (
    IDX,
    TITLE,
    CONTENT,
    WRITER,
    INSERT_TIME
)
    SELECT
        SQ_TB_BOARD.NEXTVAL,
        '�׽�Ʈ ����',
        '�׽�Ʈ ����',
        '�̱���',
        SYSDATE
    FROM
        DUAL
    CONNECT BY
        ROWNUM <= 100;
        
        COMMIT;