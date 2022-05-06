-- �˻�(R)
-- �� �÷��� ����
SELECT
    DEPTNO
FROM
    DEPT;

SELECT
    DNAME
FROM
    DEPT;

SELECT
    LOC
FROM
    DEPT;
-- * : ALL COLUMN (DEPTNO, DNAME, LOC)
SELECT
    *
FROM
    DEPT;

--���ǿ� �´� ������ ��������
--WHERE [������]  : ���� ����
--DEPT ���̺� DNAME(�μ��̸�)�� 'SALES'�� �����͸� ����������
SELECT
    DNAME
FROM
    DEPT
WHERE
    DNAME = 'SALES';

--�������� 1
--DEPT ���̺� DEPTNO(�μ��ѹ�)�� 10�� �����͸� ����������
SELECT
    DEPTNO
FROM
    DEPT
WHERE
    DEPTNO = '10';

--WHERE [�����÷�] LIKE 'S%'
--�����÷��� 'S'�� ���۵Ǵ� ���ڿ��� ��� ������
SELECT
    ENAME
FROM
    EMP
WHERE
    ENAME LIKE 'S%';

--�������� 2
--EMP���̺��� JOB�� j�� ���۵Ǵ� ���ڿ��� ���� �����ʹ� ��� ����������
--SELECT�� ���� �÷��� ��ġ�� ���� ������ ��� ������ �ٲ�
SELECT
    JOB
FROM
    EMP;

SELECT
    JOB,
    ENAME
FROM
    EMP
WHERE
    JOB LIKE 'M%';

--�����Լ� UPPER(���ڿ�) : �빮�ڷ� �ٲٱ�
--�����Լ� LOWER(���ڿ�) : �ҹ��ڷ� �ٲٱ�
--DB ���̺� �����ʹ� ��ҹ��ڸ� ������ ���ڿ��� �ν���
SELECT
    JOB,
    ENAME
FROM
    EMP
WHERE
    JOB = UPPER('manager');

--���� : ��������
--ORDER BY (�÷���) ASC(ASCENDING)
SELECT
    *
FROM
    DEPT
ORDER BY
    DNAME ASC;

--���� : ��������
--ORDER BY (�÷���) DESC(DESCENDING)
SELECT
    *
FROM
    DEPT
ORDER BY
    DNAME DESC;

--�������� 3
--EMP���̺��� JOB�� 'MANAGER'�� �����͸� ������������ �������ּ���
SELECT
    *
FROM
    EMP
WHERE
    JOB = 'MANAGER';

SELECT
    *
FROM
    EMP
WHERE
    JOB = 'MANAGER'
ORDER BY
    ENAME ASC;

--�������� 4
--EMP���̺��� JOB�� 'CLERK'�� �����͸� ������������ �������ּ���
SELECT
    *
FROM
    EMP
WHERE
    JOB = 'CLERK';

SELECT
    *
FROM
    EMP
WHERE
    JOB = 'CLERK'
ORDER BY
    ENAME DESC;

--�������� 1
--EMP���̺��� JOB�� 'CLERK'�� �����͸� �̾Ƽ� ENAME(�����̸�), EMPNO(������ȣ)������� �������� �������ּ���
--���� ������ ������ �÷��� ���� DESC/ASC�� ���� �ɾ��־���ϸ� ó�� ���� �÷��� �������� �ٽ� �����
SELECT
    ENAME,
    EMPNO
FROM
    EMP
WHERE
    JOB = 'CLERK'
--ENAME�� ���� ���������� �� �����ǰ� �������� �ִٸ� EMPNO�� ASC�� �������� ��
ORDER BY
    ENAME DESC,
    EMPNO; --�������� ASC�� ���� ����
--ORDER BY 2 DESC, 1; --�÷�ID(����)�ε� ��� ����