--2022-05-06 ����
--���� 1)
    -- ���� ����
CREATE USER GUEST03 IDENTIFIED BY 1234
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE
TEMP;
    -- ����, ���ҽ� ���� ����
GRANT CONNECT, RESOURCE TO GUEST03;

--���� 2)
    -- DEPT03 ���̺� ����
CREATE TABLE DEPT03 (
    DEPTNO VARCHAR2(3),
    DNAME  VARCHAR2(7)
);
    -- COMMENT �ۼ�
COMMENT ON TABLE DEPT03 IS
    '�μ�';

COMMENT ON COLUMN DEPT03.DEPTNO IS
    '�μ���ȣ';

COMMENT ON COLUMN DEPT03.DNAME IS
    '�μ���';

--���� 3)
    -- AREA(����) �߰�
ALTER TABLE DEPT03 ADD (
    AREA VARCHAR2(20)
);

COMMENT ON COLUMN DEPT03.AREA IS
    '����';

--���� 4)
    --���ڱ��� ����
ALTER TABLE DEPT03 MODIFY
    DNAME VARCHAR2(20);
    
--���� 5)
    --�⺻Ű �������� �߰�
ALTER TABLE DEPT03 ADD CONSTRAINT PK_DEPTNO PRIMARY KEY ( DEPTNO );

--���� 6)
    --NOT NULL �߰�
ALTER TABLE DEPT03 MODIFY (DNAME NOT NULL);
    --UNIQUE �߰�
ALTER TABLE DEPT03 ADD CONSTRAINT UK_DEPTNO UNIQUE( DNAME );

--���� 7)
    --���̺� ����
CREATE TABLE EMP03(
    EMPNO VARCHAR2(4) CONSTRAINT PK_EMPNO PRIMARY KEY,
    NAME VARCHAR2(20),
    DEPTNO VARCHAR2(3) NOT NULL,
    PEMPNO VARCHAR2(4),
    PAY NUMBER NOT NULL,
    POSITION VARCHAR2(20),
    REGDATE VARCHAR2(20)
);

    --�ڸ�Ʈ ����
COMMENT ON TABLE EMP03 IS
    '���';

COMMENT ON COLUMN EMP03.DEPTNO IS
    '�μ���ȣ';

COMMENT ON COLUMN EMP03.EMPNO IS
    '����ڵ�';

COMMENT ON COLUMN EMP03.NAME IS
    '����̸�';

COMMENT ON COLUMN EMP03.DEPTNO IS
    '�μ��ڵ�';

COMMENT ON COLUMN EMP03.PEMPNO IS
    '����ڵ�';

COMMENT ON COLUMN EMP03.PAY IS
    '�޿�';

COMMENT ON COLUMN EMP03.POSITION IS
    '����';

COMMENT ON COLUMN EMP03.REGDATE IS
    '�����';
    
-- ����8)
    -- �ܷ�Ű ����
ALTER TABLE EMP03
    ADD FOREIGN KEY ( DEPTNO )
        REFERENCES DEPT03 ( DEPTNO );
        
-- ����9)
    -- SEQUENCE ����
CREATE SEQUENCE SEQ_EMP03_EMPNO INCREMENT BY 1 START WITH 1001;

-- ����10)
    --DEPT03
INSERT INTO DEPT03 (
    DEPTNO,
    DNAME
) VALUES (
    '101',
    '������'
);

INSERT INTO DEPT03 (
    DEPTNO,
    DNAME
) VALUES (
    '102',
    '�ѹ���'
);

INSERT INTO DEPT03 (
    DEPTNO,
    DNAME
) VALUES (
    '103',
    '��ȹ��'
);

INSERT INTO DEPT03 (
    DEPTNO,
    DNAME
) VALUES (
    '104',
    'ȫ����'
);

    --EMP03
INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '������',
    '101',
    NULL,
    450,
    '����',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '������',
    '102',
    NULL,
    400,
    '����',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '�ٴٴ�',
    '101',
    '1001',
    350,
    '����',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '����',
    '103',
    NULL,
    410,
    '����',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '������',
    '101',
    '1003',
    300,
    '�븮',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '�ٹٹ�',
    '103',
    '1004',
    400,
    '�븮',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '������',
    '102',
    '1002',
    320,
    '�븮',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    'ȫ�浿',
    '102',
    '1007',
    380,
    '���',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '������',
    '103',
    '1006',
    250,
    '���',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '�̼���',
    '101',
    '1005',
    200,
    '���',
    SYSDATE
);

-- ���� 11)
UPDATE DEPT03
SET
    AREA = DECODE(DNAME, '������', '����', '�λ�');

-- ���� 12)
DELETE EMP03
WHERE
    DEPTNO = 101;

ROLLBACK;

-- ���� 13)
SELECT
    NAME AS ����̸�,
    POSITION AS ����
FROM
    EMP03
    WHERE DEPTNO IN('101', '102')
ORDER BY
    EMPNO;
    
-- ���� 14)
SELECT EMPNO AS ����ڵ�, NAME FROM
EMP03;

-- ���� 15)

-- ���� 16)
SELECT
    DEPTNO          AS �μ���ȣ,
    ROUND(AVG(PAY)) AS �޿����,
    COUNT(EMPNO)    AS �ο���
FROM
    EMP03
GROUP BY
    DEPTNO;
    
-- ���� 17)
SELECT
    A.DEPTNO AS �μ���ȣ,
    A.DNAME AS �μ���,
FROM
    DEPT03 A,
    EMP03  B
WHERE
        B.DEPTNO = A.DEPTNO
    AND B.PAY > 350;
    
-- ���� 18)
CREATE INDEX IDX_EMP03 ON
    EMP03 (
        NAME
    );