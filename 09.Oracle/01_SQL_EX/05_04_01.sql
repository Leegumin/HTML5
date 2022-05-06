-- 2022-05-04 �����͹��Ἲ(PK/FK) �ǽ�
-- ��������(Constraint)
-- ���̺��� �÷��� ��ȿ���� �ʴ� ���� �ɷ����� ���� �ɾ��ִ� ��
-- ���Ἲ ��������

--1) NOT NULL : NULL ���� ���� �� ���� ��
CREATE TABLE CUSTOMER (
    ID      VARCHAR2(20) NOT NULL,
    PWD     VARCHAR2(20) NOT NULL,
    NAME    VARCHAR2(20) NOT NULL,
    PHONE   VARCHAR2(30),
    ADDRESS VARCHAR2(100)
);

-- NOT NULL INSERT �׽�Ʈ
INSERT INTO CUSTOMER VALUES (
    NULL,
    NULL,
    NULL,
    '010-1111-1111',
    'BUSAN'
); -- ������������ ���� ������ �Ͼ, ���������� NOT NULL�� �۵�

-- 2) UNIQUE : ���̺��� �÷��� �����Ͱ� ������ ������ ���� �� �� �ְ� ��
-- ��, �����Ͱ� �ߺ� �Ұ�(��, NULL�� �������ǿ� ���ݵ��� ����)
CREATE TABLE CUSTOMER2 (
    ID      VARCHAR2(20) UNIQUE,
    PWD     VARCHAR2(20) NOT NULL,
    NAME    VARCHAR2(20) NOT NULL,
    PHONE   VARCHAR2(30),
    ADDRESS VARCHAR2(100)
);

-- UNIQUE �׽�Ʈ
INSERT INTO CUSTOMER2 VALUES (
    '1',
    '1111',
    'ȫ�浿',
    '010-1111-1111',
    'BUSAN'
);

INSERT INTO CUSTOMER2 VALUES (
    '1',
    '1111',
    'ȫ�浿',
    '010-1111-1111',
    'BUSAN'
); -- ������ �����ͷ� ���Ἲ ���� ���ǿ� ����ȴٴ� ������ ��

-- 3) CONSTRAINT : �������ǿ� �̸��� ������ �� ����
-- �ַ� ������������ ���
CREATE TABLE CUSTOMER3 (
    ID      VARCHAR2(20)
        CONSTRAINT UK_ID UNIQUE,
    PWD     VARCHAR2(20) NOT NULL,
    NAME    VARCHAR2(20) NOT NULL,
    PHONE   VARCHAR2(30),
    ADDRESS VARCHAR2(100)
);

-- ���������� ���� ��ųʸ�
SELECT
    *
FROM
    USER_CONSTRAINTS
WHERE
    TABLE_NAME = 'CUSTOMER3';
    
-- 4) PRIMARY KEY : *****
-- UNIQUE + NOT NULL + INDEX �ڵ����� ȿ��
CREATE TABLE CUSTOMER4 (
    ID      VARCHAR2(20),
    PWD     VARCHAR2(20) NOT NULL,
    NAME    VARCHAR2(20) NOT NULL,
    PHONE   VARCHAR2(30),
    ADDRESS VARCHAR2(100),
    CONSTRAINT PK_ID PRIMARY KEY ( ID )
);

-- PRIMARY KEY �׽�Ʈ
INSERT INTO CUSTOMER4 VALUES (
    NULL,
    '1111',
    'ȫ�浿',
    '010-1111-1111',
    'BUSAN'
);

INSERT INTO CUSTOMER4 VALUES (
    '1',
    '1111',
    'ȫ�浿',
    '010-1111-1111',
    'BUSAN'
);

ROLLBACK;

-- 5) FOREIGN KEY : �����Ǵ� ���̺� �÷� ���� �׻� �����ؾ� ��
-- �θ����̺�(ID : 1,2,3,) - �ڽ����̺�(ID: 1,2,3, FDSA) => �θ����̺� ����
-- 'FDSA'�� ������ ������ ��
-- ��) �θ����̺� : �μ����̺�(����, ���, �), �ڽ����̺�(����, ���, �) : ���� => FK(���� ���Ἲ)
SELECT
    *
FROM
    DEPARTMENT;

-- FK �׽�Ʈ ���̺�
CREATE TABLE EMP_SECOND (
    ENO   NUMBER(4)
        CONSTRAINT PK_ENO PRIMARY KEY,
    ENAME VARCHAR2(10),
    JOB   VARCHAR2(9),
    DNO   NUMBER(2)
        CONSTRAINT FK_DNO2
            REFERENCES DEPARTMENT
);
-- FK �׽�Ʈ
INSERT INTO EMP_SECOND (
    ENO,
    ENAME,
    DNO
) VALUES (
    0000,
    '�̼���',
    50
);

-- 6) DEFAULT ��������
-- �÷��� �����Ͱ� �ƹ��� ���� �Էµ��� �ʾ��� �� ����Ʈ�� ������ ���� �Էµ�
CREATE TABLE EMP_THIRD (
    ENO    NUMBER(4)
        CONSTRAINT PK_ENO2 PRIMARY KEY,
    ENAME  VARCHAR2(10),
    SALARY NUMBER(7, 2) DEFAULT 1000
);

-- DEFAULT �׽�Ʈ
INSERT INTO EMP_THIRD (
    ENO,
    ENAME
) VALUES (
    8000,
    'ȫ�浿'
);

SELECT
    *
FROM
    EMP_THIRD;

--���̺� ����
SELECT
    TABLE_NAME
FROM
    USER_TABLES;

DROP TABLE EMP_THIRD;

DROP TABLE EMP_SECOND;

DROP TABLE CUSTOMER4;

DROP TABLE CUSTOMER3;

DROP TABLE CUSTOMER2;

DROP TABLE CUSTOMER;

DROP TABLE DEPT_COPY;

DROP TABLE EMP_COPY;

DROP TABLE EMP_INSERT;

-- EMP_COPY ���̺�
CREATE TABLE EMP_COPY
    AS
        SELECT
            *
        FROM
            EMPLOYEE;
            
-- DEPT_COPY ���̺�
CREATE TABLE DEPT_COPY
    AS
        SELECT
            *
        FROM
            DEPARTMENT;
            
-- ���̺� ���� �� �������� �ɱ�
ALTER TABLE EMP_COPY ADD CONSTRAINT PK_EMP_COPY_ENO PRIMARY KEY ( ENO );

-- �׽�Ʈ
SELECT
    *
FROM
    USER_CONSTRAINTS
WHERE
    TABLE_NAME = 'EMP_COPY';
    
-- FOREIGN KEY ������ ���� PRIMARY KEY ����
ALTER TABLE DEPT_COPY ADD CONSTRAINT PK_DEPT_COPY_DNO PRIMARY KEY ( DNO );
-- FOREIGN KEY ���� : EMP_COPY�� DEPT_COPY�� �θ� ��� ������ ����
ALTER TABLE EMP_COPY
    ADD CONSTRAINT FK_EMP_COPY_DNO FOREIGN KEY ( DNO )
        REFERENCES DEPT_COPY ( DNO );
        
-- ���������� ������ �� �����ϱ�
-- ����) ���� �ڽ����̺��� FOREIGN KEY�� �����ϰ�, �θ����̺��� PRIMARY KEY�� ����
ALTER TABLE DEPT_COPY DROP PRIMARY KEY; -- ������

-- �˾Ƽ� �������ִ� ��ɾ� CASCADE
-- PRIMARY KEY�� ���ÿ� �ڽ����̺��� FOREING KEY�� ã�Ƽ� ��������
ALTER TABLE DEPT_COPY DROP PRIMARY KEY CASCADE;

SELECT
    *
FROM
    USER_CONSTRAINTS
WHERE
    TABLE_NAME = 'EMP_COPY';
    
-- �������� 1�� : ��������(Constraint) �ǽ�
-- 1) EMPLOYEE ���̺��� ������ �����Ͽ� EMP_SAMPLE�� �̸��� ���̺��� ����ÿ�.
CREATE TABLE EMP_SAMPLE
    AS
        SELECT
            *
        FROM
            EMPLOYEE
        WHERE
            1 = 0;
--   ��� ���̺��� �����ȣ �÷�(ENO)�� ���̺� ������ PRIMARY KEY ���������� �����ϵ�,
--   ���� ���� �̸��� PK_MY_EMP �Ͻÿ�.
ALTER TABLE EMP_SAMPLE ADD CONSTRAINT PK_MY_EMP PRIMARY KEY ( ENO );

-- ����) �������ǿ� ���� ���̺�, �÷��� ���� SQL��
SELECT
    B.TABLE_NAME,
    A.COLUMN_NAME,
    B.CONSTRAINT_TYPE
FROM
    USER_CONS_COLUMNS A,
    USER_CONSTRAINTS  B
WHERE
        A.CONSTRAINT_NAME = B.CONSTRAINT_NAME
    AND B.TABLE_NAME NOT LIKE 'BIN%'
ORDER BY
    B.TABLE_NAME;
            
-- 2) DEPARTMENT ���̺��� ������ �����Ͽ� DEPT_SAMPLE�� �̸��� ���̺��� ����ÿ�.
CREATE TABLE DEPT_SAMPLE
    AS
        SELECT
            *
        FROM
            DEPARTMENT
        WHERE
            1 = 0;
--   �μ���ȣ �÷�(DNO)�� PRIMARY KEY ���������� �����ϵ�,
--   ���� ���� �̸��� PK_MY_DEPT �Ͻÿ�.
ALTER TABLE DEPT_SAMPLE ADD CONSTRAINT PK_MY_DEPT PRIMARY KEY ( DNO );

SELECT
    *
FROM
    USER_CONSTRAINTS
WHERE
    TABLE_NAME = 'DEPT_SAMPLE';

-- 3) ��� ���̺��� �μ���ȣ �÷��� �������� �ʴ� �μ��� ����� �������� �ʵ���
--    �ܷ� Ű(FOREIGN KEY:FK) ���������� �����ϵ�, FK_MY_DEPT_EMP �� �Ͻÿ�.
ALTER TABLE EMP_SAMPLE
    ADD CONSTRAINT FK_MY_DEPT_EMP FOREIGN KEY ( DNO )
        REFERENCES DEPARTMENT ( DNO );
        
SELECT
    *
FROM
    USER_CONSTRAINTS
WHERE
    TABLE_NAME = 'EMP_SAMPLE';
    
