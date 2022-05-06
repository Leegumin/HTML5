--�������� 1)
--���� �����ڸ� ����Ͽ� ��� ����� ���ؼ� $300�� �޿� �λ��� ����� ��
--����� �̸�, �޿�, �λ�� �޿��� ����ϼ���.
SELECT
    ename        AS �̸�,
    salary       AS �޿�,
    salary + 300 AS �λ�ȱ޿�
FROM
    employee;

--�������� 2)
--����� �̸�, �޿�, ���� �Ѽ����� �� ������ ���� �ͺ��� ���� ������ ����ϼ���.
--(���� �� ������ ���޿� 12�� ���� �� $100�� �󿩱��� ���ؼ� ����ϼ���)
SELECT
    ename                 AS �̸�,
    salary                AS �޿�,
    ( salary * 12 ) + 100 AS �����Ѽ���
FROM
    employee
ORDER BY
    ( salary * 12 ) + 100 DESC;

--�������� 3)
--�޿��� 2000�� �Ѵ� ����� �̸��� �޿��� �޿��� ���� �ͺ��� ���� ������ ����ϼ���
SELECT
    ename  AS �̸�,
    salary AS �޿�
FROM
    employee
WHERE
    salary >= 2000
ORDER BY
    salary DESC;

--�������� 4)
--�����ȣ�� 7788�� ����� �̸��� �μ���ȣ�� ����ϼ���
SELECT
    eno   AS �����ȣ,
    ename AS �̸�,
    dno   AS �μ���ȣ
FROM
    employee
WHERE
    eno = '7788';
    
--�������� 5)
--�޿��� 2000���� 3000���̿� ���Ե��� �ʴ� ����� �̸��� �޿��� ����ϼ���.
SELECT
    ename  AS �̸�,
    salary AS �޿�
FROM
    employee
WHERE
    salary NOT BETWEEN 2000 AND 3000;

--�������� 6)
--1981�� 2�� 20�Ϻ��� 1981�� 5�� 1�� ���̿� �Ի��� �����
--�̸�, ������, �Ի����� ����ϼ���
SELECT
    ename    AS �̸�,
    job      AS ������,
    hiredate AS �Ի���
FROM
    employee
WHERE
    hiredate BETWEEN '81/02/20' AND '81/05/01';

--�������� 7)
--�μ���ȣ�� 20 �� 30�� ���� ����� �̸��� �μ���ȣ�� ����ϵ�
--�̸��� �������� �������� ����ϼ���
SELECT
    ename AS �̸�,
    dno   AS �μ���ȣ
FROM
    employee
WHERE
    dno IN ( 20, 30 )
ORDER BY
    ename DESC;

--�������� 8)
--����� �޿��� 2000���� 3000���̿� ���Եǰ� �μ���ȣ�� 20 �Ǵ� 30��
--����� �̸�, �޿��� �μ���ȣ�� ����ϵ� �̸���(��������)���� ����ϼ���
SELECT
    ename  AS �̸�,
    salary AS �޿�,
    dno    AS �μ���ȣ
FROM
    employee
WHERE
    salary BETWEEN 2000 AND 3000
    AND dno IN ( 20, 30 )
ORDER BY
    ename;

--�������� 9)
--1981�⵵�� �Ի��� ����� �̸��� �Ի����� ����ϼ���
--��, LIKE �����ڿ� ���ϵ�ī��(%, _ ��)�� ����ϼ���
SELECT
    ename    AS �̸�,
    hiredate AS �Ի���
FROM
    employee
WHERE
    hiredate LIKE '81%';


--�������� 10)
--�����ڰ� ���� ����� �̸��� ��� ������ ����ϼ���
SELECT
    ename AS �̸�,
    job   AS ������
FROM
    employee
WHERE
    manager IS NULL;

--�������� 11)
--COMMITION�� ���� �� �ִ� �ڰ��� �Ǵ� ����� �̸�, �޿�, Ŀ�̼��� ����ϵ�
--�޿� �� Ŀ�̼��� �������� �������� �����Ͽ� ����ϼ���
SELECT
    ename      AS �̸�,
    salary     AS �޿�,
    commission AS Ŀ�̼�
FROM
    employee
WHERE
    commission IS NOT NULL
ORDER BY
    salary DESC,
    commission DESC;
    
--�������� 12)
--�̸��� ����° ���ڰ� R�� ����� �̸��� ǥ���ϼ���.
SELECT
    ename AS �̸�
FROM
    employee
WHERE
    ename LIKE '__R%';

--�������� 13)
--�̸��� A�� E�� ��� �����ϰ� �ִ� ����� �̸��� ǥ���ϼ���.
SELECT
    ename AS �̸�
FROM
    employee
WHERE
    ename LIKE '%A%'
    AND ename LIKE '%E%';

--�������� 14)
--������(JOB�÷�)�� �繫��(CLERK) �Ǵ� �������(SALESMAN)�̸鼭
--�޿��� $1600, $950 �Ǵ� $1300�� �ƴ�
--����� �̸�, ������, �޿��� ����ϼ���
SELECT
    ename  AS �̸�,
    job    AS ����,
    salary AS �޿�
FROM
    employee
WHERE
    job IN ( 'CLERK', 'SALESMAN' )
    AND salary NOT IN ( '1600', '950', '1300' );

--�������� 15)
--Ŀ�̼�(�󿩱�)�� $500 �̻��� ����� �̸��� �޿� �� Ŀ�̼�(�󿩱�)�� ����ϼ���
SELECT
    ename      AS �̸�,
    salary     AS �޿�,
    commission AS Ŀ�̼�
FROM
    employee
WHERE
    commission >= 500;