-- �˻�(R)
-- �� �÷��� ����
SELECT DEPTNO FROM DEPT;
SELECT DNAME FROM DEPT;
SELECT LOC FROM DEPT;
-- * : ALL COLUMN (DEPTNO, DNAME, LOC)
SELECT * FROM DEPT;

--���ǿ� �´� ������ ��������
--WHERE [������]  : ���� ����
--DEPT ���̺� DNAME(�μ��̸�)�� 'SALES'�� �����͸� ����������
select dname from dept where dname = 'SALES';

--�������� 1
--DEPT ���̺� DEPTNO(�μ��ѹ�)�� 10�� �����͸� ����������
select DEPTNO from dept where DEPTNO = '10';

--WHERE [�����÷�] LIKE 'S%'
--�����÷��� 'S'�� ���۵Ǵ� ���ڿ��� ��� ������
select ename from emp where ename like 'S%';

--�������� 2
--EMP���̺��� JOB�� j�� ���۵Ǵ� ���ڿ��� ���� �����ʹ� ��� ����������
--SELECT�� ���� �÷��� ��ġ�� ���� ������ ��� ������ �ٲ�
select job from emp;
select job, ename from emp where job like 'M%';

--�����Լ� UPPER(���ڿ�) : �빮�ڷ� �ٲٱ�
--�����Լ� LOWER(���ڿ�) : �ҹ��ڷ� �ٲٱ�
--DB ���̺� �����ʹ� ��ҹ��ڸ� ������ ���ڿ��� �ν���
select job, ename from emp where job = upper('manager');

--���� : ��������
--ORDER BY (�÷���) ASC(ASCENDING)
SELECT * FROM DEPT ORDER BY dname ASC;

--���� : ��������
--ORDER BY (�÷���) DESC(DESCENDING)
SELECT * FROM DEPT ORDER BY dname DESC;

--�������� 3
--EMP���̺��� JOB�� 'MANAGER'�� �����͸� ������������ �������ּ���
SELECT * FROM EMP WHERE JOB = 'MANAGER';
SELECT * FROM EMP WHERE JOB = 'MANAGER' ORDER BY ENAME ASC;

--�������� 4
--EMP���̺��� JOB�� 'CLERK'�� �����͸� ������������ �������ּ���
SELECT * FROM EMP WHERE JOB = 'CLERK';
SELECT * FROM EMP
WHERE JOB = 'CLERK'
ORDER BY ENAME DESC;

--�������� 1
--EMP���̺��� JOB�� 'CLERK'�� �����͸� �̾Ƽ� ENAME(�����̸�), EMPNO(������ȣ)������� �������� �������ּ���
--���� ������ ������ �÷��� ���� DESC/ASC�� ���� �ɾ��־���ϸ� ó�� ���� �÷��� �������� �ٽ� �����
SELECT ENAME, EMPNO FROM
EMP WHERE JOB = 'CLERK'
--ENAME�� ���� ���������� �� �����ǰ� �������� �ִٸ� EMPNO�� ASC�� �������� ��
ORDER BY ENAME DESC, EMPNO; --�������� ASC�� ���� ����
--ORDER BY 2 DESC, 1; --�÷�ID(����)�ε� ��� ����

