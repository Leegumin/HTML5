-- 2022-05-03 �ǽ�
-- �� ����(Cartesian Product) : ī���׽þ� �� *****
-- DEPARTMENT �Ǽ� : 4�� X EMPLOYEE �Ǽ� : 14�� => 4 X 14 = 56
-- 10�� * 100�� = 1000�� => ȿ���� �������� Ȥ�� ��ǻ�� ����
SELECT
    *
FROM
    DEPARTMENT A,
    EMPLOYEE   B;
    
-- Equal Join ( = Join )
-- ���� ��� ���̺��� �����÷� = �� �� ����
-- ���� ���� ������ ���� �����Ͽ� ����� ����
-- ���� ��� �� : �׻� ���� �Ǽ� ���̺��� ���� ó���ǰ� ����°� ����
-- SELECT ���̺�1.�÷�, ���̺�2. �÷�
-- FROM ���̺�1, ���̺�2
-- WHERE ���̺�.2�÷� = ���̺�1.�÷�

-- ���� 1)
-- �� ������� �Ҽӵ� �μ����� ��� ���
-- ��, = ���� ���
SELECT
    B.ENAME AS ����,
    A.DNO   AS �μ���ȣ,
    A.DNAME AS �μ��̸�,
    A.LOC   AS �μ���ġ
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
    A.DNO = B.DNO;
    
-- ���� 2) �����ȣ�� 7499, 7900�� ������� �Ҽӵ� �μ����� ��� ���
SELECT
    *
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
        B.DNO = A.DNO
    AND B.ENO IN ( 7499, 7900 );
    
-- ���� 3) �����ȣ�� 7500 ~ 7700 ���̿� �ִ� ������� �Ҽӵ� �μ������� ����ϵ�
-- �μ��̸��� SALES�� ��Ʈ�� ����ϼ���

SELECT
    *
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
        B.DNO = A.DNO
    AND B.ENO BETWEEN 7500 AND 7700
    AND DNAME = 'SALES';
    
-- ���̺� �ּ� �� �÷� �ּ� �ֱ�
-- ���̺��ּ�
COMMENT ON TABLE DEPARTMENT IS
    '�μ�����';
-- �÷� �ּ�
COMMENT ON COLUMN DEPARTMENT.DNAME IS
    '�μ��̸�';

COMMENT ON COLUMN DEPARTMENT.DNO IS
    '�μ���ȣ';

COMMENT ON COLUMN DEPARTMENT.LOC IS
    '�����̸�';

-- ���̺� �ּ�
COMMENT ON TABLE EMPLOYEE IS
    '��������';

-- ���̺� �ּ�
COMMENT ON TABLE BONUS IS
    '���ʽ�����';
-- �÷� �ּ�    
COMMENT ON COLUMN BONUS.ENAME IS
    '����̸�';

COMMENT ON COLUMN BONUS.JOB IS
    '����';

COMMENT ON COLUMN BONUS.SAL IS
    '����';

COMMENT ON COLUMN BONUS.COMM IS
    '���ʽ�';
    
-- ���̺� �ּ�
COMMENT ON TABLE SALGRADE IS
    '��������';

COMMENT ON COLUMN SALGRADE.GRADE IS
    '���';

COMMENT ON COLUMN SALGRADE.LOSAL IS
    '��������';

COMMENT ON COLUMN SALGRADE.HISAL IS
    '�ְ����';
    
-- NOT EQUAL ����
-- Ư�����) ���� ����
-- = ������ �ƴ� ���� ����
-- ���޵��(SALGRADE) ���̺�
-- 1��� : 700~1200
-- ...
-- 5��� : 3001~9999
-- �޿� ����� �������� ����� �޿��� �� ��޿� ���ϴ��� �˾ƺ��� ���� 1��
SELECT
    ENAME,
    DNAME,
    SALARY,
    GRADE
FROM
    SALGRADE   A,
    DEPARTMENT C,
    EMPLOYEE   B
WHERE
        B.DNO = C.DNO
    AND SALARY BETWEEN LOSAL AND HISAL;
    
-- Ư�����) SELF ����
-- ������̺��� MANAGER�÷�(�� ����� �Ŵ����� ���)
SELECT
    MAN.ENO   AS "������ȣ",
    MAN.ENAME AS "����",
    EMP.ENAME AS "�Ŵ���",
    EMP.ENO   AS "�Ŵ��� �����ȣ"
FROM
    EMPLOYEE EMP,
    EMPLOYEE MAN
WHERE
        MAN.MANAGER = EMP.ENO
    AND MAN.ENAME LIKE 'SMITH%';

SELECT
    *
FROM
    EMPLOYEE EMP,
    EMPLOYEE MAN
WHERE
    MAN.MANAGER = EMP.ENO;
    
-- Ư�����) OUTER ����
-- = ���� ���� �÷��� �����ؼ� �����͸� �����ִµ�
-- NULL���� = ������ �ȵǱ� ������ �����Ϳ��� ���ܵ�
-- NULL���� �ش��ϴ� �ٸ� �÷��� ������� �� ���� ����
SELECT
    EMP.ENAME AS ����,
    EMP.ENO,
    MAN.ENAME AS �Ŵ���,
    MAN.ENO
FROM
    EMPLOYEE EMP,
    EMPLOYEE MAN
WHERE
    EMP.MANAGER = MAN.ENO (+); -- (+)NULL ���� ���� ��µ�
    
-- �������� 1)
-- ������ �̿��ؼ� SCOTT ����� �μ���ȣ�� �μ��̸��� ����Ͻÿ�.
SELECT
    B.ENAME AS �̸�,
    A.DNO   AS �μ���ȣ,
    A.DNAME AS �μ��̸�
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
        B.DNO = A.DNO
    AND B.ENAME = 'SCOTT';
    
-- �������� 2)
-- ��� ����� ����̸��� �� ����� �Ҽӵ� �μ��̸��� �������� ����Ͻÿ�
SELECT
    B.ENAME AS �̸�,
    A.DNAME AS �μ��̸�,
    A.LOC   AS ����
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
    A.DNO = B.DNO;
    
-- �������� 3) 10�� �μ��� ���ϴ� ����� ���� ���ް� �������� ����Ͻÿ�.
SELECT
    B.ENAME AS �̸�,
    B.JOB   AS ����,
    B.DNO   AS �μ���ȣ,
    A.LOC   AS ����
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
        A.DNO = B.DNO
    AND B.DNO = 10;
    
-- �������� 4) Ŀ�̼��� �޴� ��� ����� �̸�, �μ��̸�, �������� ����Ͻÿ�.
SELECT
    B.ENAME      AS �̸�,
    B.COMMISSION AS Ŀ�̼�,
    A.DNAME      AS �μ��̸�,
    A.LOC        AS ����
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
        A.DNO = B.DNO
    AND B.COMMISSION > 0;
    
-- �������� 5) = ���ΰ� ���ϵ�ī��(%)�� ����Ͽ� �̸��� A�� ���Ե� ��� �����
-- �̸��� �μ����� ����Ͻÿ�
SELECT
    B.ENAME AS �̸�,
    A.DNAME AS �μ��̸�
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
        A.DNO = B.DNO
    AND B.ENAME LIKE '%A%';
    
-- �������� 6) NEW YORK�� �ٹ��ϴ� ��� ����� �̸�, ����, �μ���ȣ, �μ����� ���
SELECT
    B.ENAME AS �̸�,
    B.JOB   AS ����,
    B.DNO   AS �μ���ȣ,
    A.DNAME AS �μ��̸�,
    A.LOC   AS ����
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
        A.DNO = B.DNO -- ����� �κ� ��Ī�� ���� �ڷḦ ������
    AND A.LOC LIKE 'NEW YORK';
    
-- DDL (Data Definition Language) : ������ ���Ǿ�
-- ���̺� �����, ���̺� �����ϱ�, �÷� �����ϱ�, �÷� �߰��ϱ�

-- ���̺� �����
-- ��) �μ������� �����ϱ� ���� ���̺� �����ϱ�
-- ���̺�� : TB_DEPARTMENT
CREATE TABLE TB_DEPARTMENT (
    DNO   NUMBER(2),
    DNAME VARCHAR2(20),
    LOC   VARCHAR2(20)
);
-- ���̺� �����ϱ�
DROP TABLE TB_DEPARTMENT;

-- ���̺� �����ϱ�

-- �����ͱ��� ���� : ���� ���� ��츸 ����
CREATE TABLE TB_DEPARTMENT
    AS
        SELECT
            *
        FROM
            DEPARTMENT;

-- ������ ���� ������ ���� : ���� �����̶� �����⸸ ������
CREATE TABLE TB_DEPARTMENT2
    AS
        SELECT
            *
        FROM
            DEPARTMENT
        WHERE
            1 = 2;
            
-- 20�� �μ� �Ҽ� ����� ���� ������ ������ DEPT20 ���̺� �����ϱ�
-- ���̺� �̸� : TB_DEPARTMENT
CREATE TABLE TB_DEPARTMENT
    AS
        SELECT
            *
        FROM
            EMPLOYEE
        WHERE
            DNO = 20;

-- ���̺� ������ �����ϴ� ��ɾ�
-- ALTER TABLE ~
CREATE TABLE TB_DEPARTMENT
    AS
        SELECT
            *
        FROM
            DEPARTMENT
        WHERE
            1 = 2;
-- TB_DEPARTMENT ���̺� �÷� �߰�
ALTER TABLE TB_DEPARTMENT ADD (
    BIRTH DATE
);

DESC TB_DEPARTMENT;

--TB_DEPARTMENT ���̺� �÷� ����
ALTER TABLE TB_DEPARTMENT MODIFY
    DNAME VARCHAR2(20);
    
-- TB_DEPARTMENT ���̺� �÷� ����
-- BIRTH �÷� ����
-- �ѹ��� �ϳ��� ������ ����
ALTER TABLE TB_DEPARTMENT DROP COLUMN BIRTH;

-- TB_DEPARTMENT ���̺� �̸��� �����ϴ� ��ɾ�
-- ����) RENAME A TO B : A ���̺���� B ���̺������ �ٲٱ�
RENAME TB_DEPARTMENT TO TB_DEPARTMENT02;

RENAME TB_DEPARTMENT02 TO TB_DEPARTMENT;

-- ���̺��� ��� �����͸� �����ϴ� ��ɾ�(������ + �Ҵ�� ����)
CREATE TABLE TB_DEPARTMENT02
    AS
        SELECT
            *
        FROM
            DEPARTMENT;
-- ������ Ȯ��
SELECT
    *
FROM
    TB_DEPARTMENT02;
-- ������ ���� ����
TRUNCATE TABLE TB_DEPARTMENT02;

-- �߰��� ����Ŭ DB���� ����ϴ�
-- ��Ÿ ����(������ ���̺�, �÷�����, �������� ��)�� �� �� �ִ� ���̺�
-- USER_XXX : ���ӵ� ������ ���� �������� �������� ������(�÷�, ���̺� ��)
-- ALL_XXX : ���ӵ� ���� + �ٸ� ������ ���� �������� ������(�÷�, ���̺� ��)
-- DBA_XXX : ��� ������ ���� �������� ������(�÷�, ���̺� ��)
SELECT
    *
FROM
    USER_TABLES;

SELECT
    *
FROM
    ALL_TABLES;

DROP TABLE TB_DEPARTMENT02;
-- DDL(������ ���Ǿ�) �ǽ�
-- �������� 9) ���� ǥ�� ��õ� ��� DEPT ���̺��� �����Ͻÿ�.
-- �÷��� ������ Ÿ�� ũ��
-- DNO     NUMBER    2
-- DNAME   VARCHAR2  14
-- LOC     VARCHAR2  13
CREATE TABLE DEPT (
    DNO   NUMBER(2),
    DNAME VARCHAR2(14),
    LOC   VARCHAR2(13)
);

DESC DEPT;
-- �������� 10) ���� ǥ�� ��õ� ��� EMP ���̺��� �����Ͻÿ�.
-- �÷��� ������ Ÿ�� ũ��
-- ENO     NUMBER    4
-- ENAME   VARCHAR2  10
-- DNO     NUMBER    2
CREATE TABLE EMP (
    ENO   NUMBER(4),
    ENAME VARCHAR2(10),
    DNO   NUMBER(2)
);

DESC EMP;

-- �������� 11) �� �̸��� ������ �� �ֵ��� EMP ���̺��� �����Ͻÿ�
-- ENAME VARCHAR2(10) -> VARCHAR2(25) ����
ALTER TABLE EMP MODIFY
    ENAME VARCHAR2(25);
    
-- �������� 12) EMPLOY ���̺��� �����ؼ� EMPLOYEE2 ���̺��� �����ϵ�,
-- �����ȣ, �̸�, �޿�, �μ���ȣ �÷��� �����ϼ���.
CREATE TABLE EMPLOYEE2
    AS
        SELECT
            ENO,
            ENAME,
            SALARY,
            DNO
        FROM
            EMPLOYEE;
-- �߰������� �÷� ���� �� �÷��� ���氡��
CREATE TABLE EMPLOYEE2 (
    ENO_ID,
    NAME,
    SAL,
    DEPT_ID
)
    AS
        SELECT
            ENO,
            ENAME,
            SALARY,
            DNO
        FROM
            EMPLOYEE;

SELECT
    *
FROM
    EMPLOYEE2;

DROP TABLE EMPLOYEE2;
-- �������� 13) EMP ���̺� ����
DROP TABLE EMP;

-- �������� 14) EMPLOYEE2 ���̺� �̸��� EMP�� ����
RENAME EMPLOYEE2 TO EMP;

-- �������� 15) DEPT ���̺��� DNAME �÷� ����
ALTER TABLE DEPT DROP COLUMN DNAME;

DESC DEPT;

-- DML(Data Maniqulation Language) : ������ ���� ���
-- INSERT / UPDATE / DELETE

-- ������� ���̺� �˻� �� ����
SELECT
    *
FROM
    USER_TABLES;

DROP TABLE DEPT;

-- �׽�Ʈ�� ���̺� �����
CREATE TABLE DEPT_COPY
    AS
        SELECT
            *
        FROM
            DEPARTMENT;

SELECT
    *
FROM
    DEPT_COPY;
-- ������ ����
TRUNCATE TABLE DEPT_COPY;
-- ������ �߰��ϱ� : INSERT
INSERT INTO DEPT_COPY VALUES (
    10,
    'ACCOUNTING',
    'NEW YORK'
);

SELECT
    *
FROM
    DEPT_COPY;
-- �߰��� �����͸� �����ݿ�
COMMIT;

-- DEPT_COPY(������ ����) : VALUES(�����ʹ� DEPT_COPY�� �����ͼ����� ������)
INSERT INTO DEPT_COPY (
    DNO,
    LOC,
    DNAME
) VALUES (
    20,
    'DALLAS',
    'RESEARCH'
);

INSERT INTO DEPT_COPY (
    DNO,
    LOC,
    DNAME
) VALUES (
    30,
    'SALES',
    'CHICAGO'
);

INSERT INTO DEPT_COPY (
    DNO,
    LOC,
    DNAME
) VALUES (
    40,
    'OPERATIONS',
    'BOSTION'
);

SELECT
    *
FROM
    DEPT_COPY;
-- �߰��� �����͸� �����ݿ�
COMMIT;

-- ������ �߰�
-- 1) NULL�� ���� �����ϰ� �߰�
INSERT INTO DEPT_COPY (
    DNO,
    DNAME
) VALUES (
    50,
    'SALES'
);

SELECT
    *
FROM
    DEPT_COPY;
-- 2) ��������� NULL �߰�
INSERT INTO DEPT_COPY VALUES (
    60,
    'OPERATIONS',
    NULL
);

SELECT
    *
FROM
    DEPT_COPY;

-- �׽�Ʈ ������ �� EMP_COPY ���̺� �����
CREATE TABLE EMP_COPY
    AS
        SELECT
            *
        FROM
            EMPLOYEE
        WHERE
            1 = 2;

SELECT
    *
FROM
    EMP_COPY;
    
-- EMP_COPY ���̺� ������ �ֱ�
-- '2012/05/01' -> TO_DATE('2012/05/01') �� ������
INSERT INTO EMP_COPY (
    ENO,
    ENAME,
    JOB,
    HIREDATE,
    DNO
) VALUES (
    7000,
    'CANDY',
    'MANAGER',
    SYSDATE,
    10
);

-- ������ �߸� �־��� �� �ǵ�����
-- COMMIT �Ǳ� ������ �ǵ���(�۾� ���)
ROLLBACK;

COMMIT;
-- �ٸ� ���̺��� �����͸� �����ؼ� INSERT �ϱ�
TRUNCATE TABLE DEPT_COPY;

INSERT INTO DEPT_COPY
    SELECT
        *
    FROM
        DEPARTMENT;

SELECT
    *
FROM
    DEPT_COPY;

COMMIT;
    
-- ������ �����ϱ� : UPDATE
SELECT
    *
FROM
    DEPT_COPY;
    
-- �Ϲ����� ��� ���� -> UPDATE = WHERE ������
-- ����)
-- UPDATE ���̺��
-- SET �÷��� = '�����Ұ�'
-- WHERE ����
UPDATE DEPT_COPY
SET
    DNAME = 'PROGRAMMING'
WHERE
    DNO = 10;

SELECT
    *
FROM
    DEPT_COPY;

ROLLBACK;

COMMIT;

-- ���� 1) DEPT_COPY ���̺� �μ����� 'SALES'�� �μ��� LOC �÷��� 'PUSAN'���� ����
UPDATE DEPT_COPY
SET
    LOC = 'PUSAN'
WHERE
    DNAME = 'SALES';

SELECT
    *
FROM
    DEPT_COPY;
    
-- ���빮�� 2) DEPT_COPY ���̺� �μ���ȣ�� 20�� �μ���
-- �μ� �̸��� 'JAVA'�� ����, LOC �÷��� 'SEOUL'�� ����
UPDATE DEPT_COPY
SET
    DNAME = 'JAVA',
    LOC = 'SEOUL'
WHERE
    DNO = 20;
    
-- Ư���� ��) DEPT_COPY ���̺��� �μ���ȣ�� 10�� LOC �����͸� �����ͼ�
-- �μ���ȣ�� 20�� LOC �����ͷ� �����ϱ�
UPDATE DEPT_COPY
SET
    LOC = (
        SELECT
            LOC
        FROM
            DEPT_COPY
        WHERE
            DNO = 20
    )
WHERE
    DNO = 10;

COMMIT;
    
-- DELETE : ���̺��� ������ �����ϴ� DML ��ɾ�
-- ���� : 
-- DELETE FROM(��������) ���̺��
-- WHERE ����;
DELETE DEPT_COPY
WHERE
    DNO = 10;

SELECT
    *
FROM
    DEPT_COPY;

ROLLBACK;

-- ���� 2) DEPT_COPY ���̺��� �μ���ȣ(DNO)�� 20, 30�� �����͸� �����Ͻÿ�.
DELETE DEPT_COPY
WHERE
    DNO IN ( 20, 30 );

COMMIT;

-- ����) DELETE ~ �������� ��� ����
DELETE FROM DEPT_COPY
WHERE
    DNO = (
        SELECT
            DNO
        FROM
            DEPARTMENT
        WHERE
            DNAME = 'SALES'
    );
    
-- ����) ROLLBACK / COMMIT
-- Ʈ�����(Transaction) ����
-- ROLLBACK : INSERT / UPDATE / DELETE ���� ���
-- COMMIT : INSERT / UPDATE / DELETE ���� ���� �ݿ�
-- ��) Ʈ����� ����
--     INSERT ~
--     UPDATE ~
--     DELETE ~
--     COMMIT(ROLLBACK) : Ʈ����� ����
-- �������) CUTOCOMMIT : �ڵ� DB ���� �ݿ�
--          ORACLE DB : AUTOCOMMIT = FALSE
--          MYSQL/MARIADB DB : AUTOCOMMIT = TRUE

-- �������� 9 : DML(������ ���۾�) �ǽ�
-- ������ �ӽ����̺� ����
SELECT
    *
FROM
    USER_TABLES;

DROP TABLE DEPT_COPY;

-- �������� 1) EMP ���̺��� ������ �����Ͽ� EMP_INSERT �� �̸��� �� ���̺��� ����ÿ�.
CREATE TABLE EMP_INSERT
    AS
        SELECT
            *
        FROM
            EMPLOYEE
        WHERE
            1 = 2;

-- �������� 2) ������ EMP_INSERT ���̺� �߰��ϵ� SYSDATE�� �̿��Ͽ�
-- �Ի����� ���÷� �Է��Ͻÿ�
INSERT INTO EMP_INSERT VALUES (
    33,
    '�̱���',
    'PROGRAMER',
    NULL,
    SYSDATE,
    10000,
    1000,
    10
);

-- �÷� ����� ���� ��ųʸ�
SELECT
    *
FROM
    USER_TAB_COLUMNS
ORDER BY
    TABLE_NAME,
    COLUMN_ID;

-- �������� 3) �ٸ������ EMP_INSERT(�ӽ� �������̺�) ���̺� SYSDATE�� �̿��Ͽ�
-- �Ի����� ������ �Է��ϼ���
INSERT INTO EMP_INSERT VALUES (
    21,
    'ȫ�浿',
    'PROGRAMER',
    NULL,
    SYSDATE - 1,
    10000,
    1000,
    10
);
-- �������� 4) EMPLOYEE ���̺��� ������ ������ �����Ͽ� EMP_COPY�� �̸��� ���̺��� ����ÿ�.
CREATE TABLE EMP_COPY
    AS
        SELECT
            *
        FROM
            EMPLOYEE;
            
            
-- �������� 5) �����ȣ�� 7788�� ����� �μ���ȣ�� 10������ �����Ͻÿ�.
UPDATE EMP_COPY
SET
    DNO = 10
WHERE
    ENO = 7788;

-- 6) �����ȣ 7788�� ��� ����(JOB) �� �޿�(SALARY)�� �����ȣ 7499��
--    ��� ���� �� �޿��� ��ġ�ϵ��� �����Ͻÿ�.
UPDATE EMP_COPY
SET
    ( JOB,
      SALARY ) = (
        SELECT
            JOB,
            SALARY
        FROM
            EMP_COPY
        WHERE
            ENO = 7499
    )
WHERE
    ENO = 7788;
-- 7) DEPARTMENT ���̺��� ������ ������ �����Ͽ� DEPT_COPY�� �̸��� ���̺���
--    ����ÿ�.
CREATE TABLE DEPT_COPY
    AS
        SELECT
            *
        FROM
            DEPARTMENT;

-- 8) DEPT_COPY ���̺��� �μ���(DNAME)�� RESEARCH�� �μ��� �����Ͻÿ�.
DELETE DEPT_COPY
WHERE
    DNAME = 'RESEARCH';

-- 9) DEPT_COPY ���̺��� �μ� ��ȣ�� 10�̰ų� 40�� �μ��� �����Ͻÿ�.
DELETE DEPT_COPY
WHERE
    DNO IN ( 10, 40 );
    
-- �������� 10) DEPT_COPY ���̺��� �μ�����(DNAME)�� 'SALES'�̸�
-- ������(LOC)�� 'SEOUL'�̶�� �����ϰ�, �ƴϸ�, 'BUSAN'���� �����Ͻÿ�.
UPDATE DEPT_COPY
SET
    LOC = DECODE(DNAME, 'SALES', 'SEOUL', 'BUSAN');