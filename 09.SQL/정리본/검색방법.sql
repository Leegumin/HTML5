-- �˻�(R)

-- �� �÷��� ����>
SELECT
    DEPTNO -- �÷���
FROM
    DEPT; -- ���̺��

-- * : ALL COLUMN (DEPTNO, DNAME, LOC)
SELECT
    *
FROM
    DEPT;

--���ǿ� �´� ������ ��������>
--WHERE [������]  : ���� ����
--DEPT ���̺� DNAME(�μ��̸�)�� 'SALES'�� �����͸� ����������
SELECT
    DNAME
FROM
    DEPT
WHERE
    DNAME = 'SALES'; -- ����

--WHERE [�����÷�] LIKE 'S%'>
--�����÷��� 'S'�� ���۵Ǵ� ���ڿ��� ��� ������
--LIKE '%S' : �����÷��� 'S'�� ������ ���ڿ��� ��� ������
--LIKE '%S%' : �����÷��� 'S'�� ���ԵǴ� ���ڿ��� ��� ������
SELECT
    ENAME
FROM
    EMP
WHERE
    ENAME LIKE 'S%';

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

--DESC ���̺��
--���̺��� ������ �����ִ� ��ɾ�
--NUMBER : ����, �Ǽ��� ǥ���ϴ� �ڷ���
--NUMBER(4) : 4�� ���� 4�ڸ�
--NUMBER(7,2) : 7�� �����ڸ���, 2�� �Ҽ��ڸ��� 2�ڸ�
--VARCHAR2 : ���ڿ��� ǥ���ϴ� �ڷ���(*)
--VARCHAR2(10) : 10 �ڸ��� 
--UTF8 ���� : ����(�ѱ���) 1BYTE, �ѱ�(�ѱ���) 3BYTE
--DATE : ��¥�� ǥ���ϴ� �ڷ���
DESC DEPT;