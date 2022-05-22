CREATE TABLE TB_COMMENT (
    --��� ��ȣ
    IDX         NUMBER NOT NULL,
    --�Խ��� ��ȣ
    BOARD_IDX   NUMBER,
    --��� ����
    CONTENT     VARCHAR2(1000),
    --��� �ۼ���
    WRITER      VARCHAR2(255),
    DELETE_YN   CHAR(1) DEFAULT 'N',
    --��� ��� �Ͻ�
    INSERT_DATE DATE,
    --��� ���� �Ͻ�
    UPDATE_DATE DATE,
    --��� ���� �Ͻ�
    DELETE_DATE DATE
);


ALTER TABLE TB_COMMENT ADD CONSTRAINT PK_TB_COMMENT_IDX PRIMARY KEY(IDX);
CREATE SEQUENCE SQ_TB_COMMENT INCREMENT BY 1 START WITH 1 MINVALUE 1 MAXVALUE 9999999999;

-- �̼� 
-- ����� ���� ���̺� ���踦 ���� crud ���� �����
-- �Խ��� �ҽ� �����ؼ� Dto - Dao - xml - service - controller
-- �Խ��� ( ����¡ + �˻� ) + ��� ���̱�
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
        '�ɳɳɳɳ�',
        '�̱���',
        SYSDATE
    FROM
        DUAL
    CONNECT BY
        ROWNUM <= 20;

COMMIT;