-- 2022-05-04 ��(VIEW) �ǽ�
-- ��(VIEW) : ���� ���̺�( ������ �Ҵ�Ǿ �����ϰ� ���� ���� )
-- ������ �ڷ���¸� ���鼭 �۾��Ҷ� ���
-- �信 ����� �� : SQL��(SELECT��)
-- ��) ���̺� : ������ �Ҵ�Ǿ� ��ũ�� ����ǰ� ����
-- ��)

--cmd���� �۾�
-- GRANT ���� TO ���� : ���� �ֱ�
-- REVOKE ���� FROM ���� : ���� ����
--*sql ����
--sqlplus /nolog

--* �ְ� ������ ����
--conn /as sysdba

--* view ������ ���� ��� ���� �ο�
--grant create any view to scott;

--* view ������ ���� ��� ���� ���
--revoke create any view from scott;

CREATE OR REPLACE VIEW VM_EMP_JOB AS
    SELECT
        ENO,
        ENAME,
        DNO,
        JOB
    FROM
        EMPLOYEE
    WHERE
        JOB LIKE '%SALES%';

SELECT
    *
FROM
    VM_EMP_JOB;
    
-- ��� ���̺��� �޿������� ���ԵǾ� �ֽ��ϴ�.(�޿����� : ���)
-- => VIEW�� �����Ͽ� ��������
CREATE VIEW V_EMP_SAMPLE AS
    SELECT
        ENO,
        ENAME,
        JOB,
        MANAGER,
        DNO
    FROM
        EMPLOYEE;
        
-- �������) ������ ������ �� ����� ���� ������ ��ȸ�ϴ� ��ųʸ�
SELECT
    VIEW_NAME,
    TEXT
FROM
    USER_VIEWS;
    
-- �׷��Լ��� �� SELECT ���� ��(VIEW)�� �����
CREATE OR REPLACE VIEW VW_EMP_SALARY AS
    SELECT
        DNO,
        SUM(SALARY)        AS "�ѱ޿�",
        TRUNC(AVG(SALARY)) AS "��ձ޿�"
    FROM
        EMPLOYEE
    GROUP BY
        DNO; -- SELECT���� �׷��Լ��� �ִ� �÷��� ��Ī�� �����(�ȱ׷��� ����)
        
-- �� �����ϱ�
SELECT
    *
FROM
    USER_VIEWS;

DROP VIEW VM_EMP_JOB;

DROP VIEW V_EMP_SAMPLE;

DROP VIEW VW_EMP_SALARY;

-- �������� 1�� : ��(VIEW) �ǽ�
-- 1) 20�� �μ��� �Ҽӵ� ����� �����ȣ�� �̸��� �μ���ȣ�� ����ϴ� VIEW ����
CREATE OR REPLACE VIEW VW_TEST_EMP AS
    SELECT
        ENO,
        ENAME,
        DNO
    FROM
        EMPLOYEE
    WHERE
        DNO = 20;
-- 2) �̹� �����Ǿ� �ִ� ��� �信 ���� �޿� ���� ����ϵ��� ����
-- �׳� ����� �� ����
CREATE OR REPLACE VIEW VW_TEST_EMP AS
    SELECT
        ENO,
        ENAME,
        DNO,
        SALARY
    FROM
        EMPLOYEE
    WHERE
        DNO = 20;
        
-- SEQUENCE ����
-- ������ �� Ű��(ID) : �ڵ� �����ϴ� ���� ���
-- DB���� �ڵ� �����ϴ� ���� ������� �� ����(ä��) => SEQUENCE
-- ��) ���� ���� 10�̰� 10�� �����ϴ� ������ �����ϱ�(�̸�: SQ_EMP)

-- CREATE SEQUENCE  �������̸�
-- START WITH N : ������ ��ȣ�� ������ ����
-- INCREMENT BY N : N�� ����
-- MINVALUE N : N ������ �ּҰ�
-- MAXVALUE N : N ������ �ִ밪
CREATE SEQUENCE SQ_EMP INCREMENT BY 1 START WITH 10;

-- ������ ��Ϻ��� ��ųʸ�
SELECT
    *
FROM
    USER_SEQUENCES;

-- ������ �׽�Ʈ (�����ϴ��� ����)
-- NEXTVAL : ���� ��
SELECT
    SQ_EMP.NEXTVAL
FROM
    DUAL;
-- CURRVAL : ���� ��
SELECT
    SQ_EMP.CURRVAL
FROM
    DUAL;

-- ���� ��)
-- �μ���ȣ�� ���� ������ ����
CREATE SEQUENCE SQ_DEPT INCREMENT BY 1 START WITH 1;

-- �׽�Ʈ�� �� �μ����̺� ����
CREATE TABLE DEPT_COPY2
    AS
        SELECT
            *
        FROM
            DEPARTMENT
        WHERE
            1 = 0;
-- ������ �߰��ϱ�
INSERT INTO DEPT_COPY2 VALUES (
    SQ_DEPT.NEXTVAL, -- 1���� �����ϸ鼭 �����ϸ� ��� 1�� �����Ͽ� ��
    'ACCOUNTING',
    'NEW YORK'
);

SELECT
    *
FROM
    DEPT_COPY2;

-- ������ �����ϱ�
SELECT
    *
FROM
    USER_SEQUENCES;

DROP SEQUENCE SQ_DEPT;

DROP SEQUENCE SQ_EMP;

-- 2022-05-04 INDEX ����(*****)
-- ��� �÷��� ������ ��
-- �ε��� ���� : ��ȸ(SELECT) ������ ���̱� ���ؼ� �ε����� ����
-- �ε��� �˰��� : B * TREE (�˻� �ӵ� ��� �˰���)
-- �ε����� �ɾ���ϴ� �÷�
-- 1) ���̺� ���� ���� �ʹ� ���� �� : 10���� �̻�
-- 2) WHERE ���� ��� �÷��� �ʹ� ���� ���� ��
-- 3) �˻� ��� ��ü�� �뷫 2~5%�� ������ ��
-- 4) ���ο� ���Ǵ� �÷��� �ε����� �Ŵ°��� '���'

-- CREATE INDEX �ε����̸�
-- ON ���̺��(�÷���)
-- ��)
CREATE INDEX IDX_EMPLOYEE_ENAME ON
    EMPLOYEE (
        ENAME
    );
    
-- �ε��� ���� Ȯ��(�ε��� ���� ��ųʸ�)
SELECT
    *
FROM
    USER_IND_COLUMNS
WHERE
    TABLE_NAME = 'EMPLOYEE';
    
-- �ε��� ����
DROP INDEX IDX_EMPLOYEE_ENAME;

-- Ư��) ���� �ε��� : ���� �̻��� �÷����� �����ϴ� �ε���
CREATE INDEX IDX_DEPT_COM ON
    DEPARTMENT (
        DNAME,
        LOC
    );
    
-- Ư��) �Լ� ��� �ε��� : �����̳� �Լ��� �����ؼ� ���� �ε���
CREATE INDEX IDX_EMP_ANNSAL ON
    EMPLOYEE ( SALARY * 12 );
    
    
-- �������� 1�� : ������ & �ε��� �ǽ�
-- 1) ��� ���̺��� �����ȣ�� �ڵ����� �����ǵ��� �������� �����Ͻÿ�.
--  ������ �̸� : SQ_EMP , ���۹�ȣ : 1, ���� : 1, �ִ밪 : 100000
CREATE SEQUENCE SQ_EMP INCREMENT BY 1 START WITH 1 MAXVALUE 100000;

-- 2) �����ȣ�� �������κ��� �߱޹����ÿ�.
-- �ӽ� ��� ���̺� : EMP01
--                  �÷��� : EMPNO NUMBER(4) PRIMARY KEY,
--                          ENAME VARCHAR2(10),
--                          HIREDATE DATE
CREATE TABLE EMP01 (
    EMPNO    NUMBER(4) PRIMARY KEY,
    ENAME    VARCHAR2(10),
    HIREDATE DATE
);
-- INSERT���� �̿��ؼ� EMPNO�� ���������� �߰� �Ͻÿ�.
INSERT INTO EMP01 VALUES (
    SQ_EMP.NEXTVAL,
    'ȫ�浿',
    SYSDATE
);
-- (��, �̸��̳� ��¥�� ���Ƿ� �Ͻÿ�)

SELECT
    *
FROM
    EMP01;
-- 3) EMP01 ���̺� �̸� �÷��� INDEX�� �����Ͻÿ�.(�ε�����: IDX_EMP01_ENAME)
CREATE INDEX IDX_EMP01_ENAME ON
    EMP01 (
        ENAME
    );
    
-- ���������
-- CMD���� ����
--* USER ������ ���� ���� �ο�
--grant create user to scott;
-- SCOTT ���� ���ѻ�� : ��(ROLE : ���� ���ѵ��� ��� ��Ƴ��� ��)
-- CONNECT(���ӿ� ���õ� ���� ������)
-- RESOURCE(���̺�, ��, ���ν��� ���� ���� ������)
-- DBA(����, DB���� ��� �ֻ��� ���� ������)

-- CMD���� ����
-- ���� ����
-- CREATE USER ������
-- INDENTIFIED BY ��й�ȣ
-- ����Ŭ �������� ���� : TABLESPACE
CREATE USER GUEST03 IDENTIFIED BY 1234
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

-- ���� ����
-- CREATE TABLE : ���̺� ���� ����
-- CREATE VIEW : �� ���� ����
-- CREATE SEQUENCE : ������ ���� ����

-- ���Ѻο� ��ɾ�
-- GRANT ����(��) TO ������

-- ������� ��ɾ�
-- REVOKE ����(��) FROM ������

-- ���Ǿ� : ���̺� : SELECT * FROM SCOTT3.EMPLOYEE
--                  ��Ī���� �����ؼ� �̸��� �������� �� ����
-- �㳪 �����ڸ� �����ؼ� �����ڴ� ��?�� �ص� ��

-- �������� 01) KBS��� ����ڸ� �����ϼ���. ��ȣ�� 1234
-- DEFAULT TABLESPACE ���� USERS ���
-- TEMPORARY TABLESPACE ���� TEMP ���
CREATE USER KBS IDENTIFIED BY 1234 DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE TEMP;
-- �������� 02) 1������ ������ ������ CONNECT, RESOURCE ����(��)�� �ο�
GRANT CONNECT, RESOURCE TO KBS;