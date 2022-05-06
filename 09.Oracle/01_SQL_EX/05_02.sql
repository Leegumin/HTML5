-- 2022-05-02 �ǽ�
-- ���� �ڸ��� Ư�� ��ȣ�� ä��� �����Լ�
-- lpad(�÷���, �ڸ���, ä�� ��ȣ) : leftpad, �ش��÷��� 10�ڸ��� ���缭 �� ������ ��ȣ�� ä����
SELECT
    LPAD(SALARY, 10, '*')
FROM
    EMPLOYEE;
    
-- rpad(�÷���, �ڸ���, ä�� ��ȣ) : rightpad, �ش��÷��� 10�ڸ��� ���缭 �� ������ ��ȣ�� ä����
SELECT
    RPAD(SALARY, 10, '*')
FROM
    EMPLOYEE;

-- ltrim(�÷�) : ���� ���� ����
-- rtrim(�÷�) : ������ ���� ����
-- trim : ���ʰ��� ����
SELECT
    ' Oracle mania ',
    LTRIM(' Oracle mania '),
    RTRIM(' Oracle mania '),
    TRIM(' Oracle mania ')
FROM
    DUAL;
    
-- ���� �Լ�
-- round : Ư���ڸ������� �ݿø��ϴ� ���� �Լ�
SELECT
    98.7654,
    ROUND(98.7654), -- ù°�ڸ� �ݿø�
    ROUND(98.7654, 2), -- ��°�ڸ� �ݿø�(�Ű������� 2° �ڸ� ����)
    ROUND(98.7654, - 1) -- ���� 1�ڸ� �ݿø�
FROM
    DUAL;
    
-- TRUNC : Ư�� �ڸ������� ����
SELECT
    98.7654,
    TRUNC(98.7654), -- �Ҽ��� ù°�ڸ����� ����
    TRUNC(98.7654, 2), -- �Ҽ��� ��°�ڸ����� ����
    TRUNC(98.7654, - 1) -- ���� 1�ڸ� ����
FROM
    DUAL;
    
-- MOD : ù��° ���� �ι�° ������ ���� �������� ��ȯ(�ڹ��� ������ ������ '%'�� ����)
SELECT
    MOD(31, 2),
    MOD(31, 8)
FROM
    DUAL;
    
-- �������� 1) ��� ����� �޿��� 500���� ���� �������� ����ؼ� ����غ�����
SELECT
    ENAME,
    SALARY,
    MOD(SALARY, 500)
FROM
    EMPLOYEE;
    
-- ��¥ �Լ�
-- sysdate : �ý��ۿ� ����� ���� ��¥�� ��ȯ�ϴ� ���� �Լ�
SELECT
    SYSDATE,
    TO_CHAR(SYSDATE, 'yyyy-mm-dd hh24:mi:ss')
FROM
    DUAL;
    
-- ��¥ ����
SELECT
    SYSDATE - 1 AS ����, -- ���� ���
    SYSDATE     AS ����, -- ���� ���
    SYSDATE + 1 AS ���� -- ���� ���
FROM
    DUAL;
    
-- ��������) ������� ��������� �ٹ��ϼ� ���ϱ�
-- ��, �Ǽ��� ������ �ݿø��ϱ�
SELECT
    ENAME,
    HIREDATE,
    SYSDATE - HIREDATE AS �ٹ��ϼ�,
    ROUND(SYSDATE - HIREDATE)
FROM
    EMPLOYEE;
    
-- ��¥�� ��¥ ������ ���� ���� ���ϴ� ���� �Լ�
-- months_between(sysdate, ��¥�÷�)
SELECT
    ENAME,
    SYSDATE,
    HIREDATE,
    TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE)) AS ������
FROM
    EMPLOYEE;
    
-- �Ի����� Ư������ ���� ��¥�� ���ϰ� ���� ��
-- add_between(��¥�÷�, ���ϰ� ���� ���� ��)
SELECT
    ENAME,
    HIREDATE,
    ADD_MONTHS(HIREDATE, 6) AS "6���� ��"
FROM
    EMPLOYEE;
    
-- ������ �������� ���ʷ� �����ϴ� ����� ���ϱ�
-- NEXT_DAY(SYSDATE, '���ϴ� ����(���ڵ� ����)')
SELECT
    SYSDATE,
    NEXT_DAY(SYSDATE, '�����') AS "�̹� �� �����",
    NEXT_DAY(SYSDATE, 7)     AS "�̹� �� �����(����)"
FROM
    DUAL;
    
-- �Ի��� ���� ������ �� ���ϱ�
-- LAST_DAY(��¥�÷�)
SELECT
    ENAME,
    HIREDATE,
    LAST_DAY(HIREDATE) AS "�Ի���� ������ ��¥"
FROM
    EMPLOYEE;
    
-- �ڷ��� ��ȯ �Լ�
-- TO_CHAR(�÷�, ��ȯ����) : ��¥�� �Ǵ� �������� ���������� ��ȯ�ϴ� �����Լ�
-- TO_CHAR(��¥�÷�, ��������) : ��¥�� ������ ������ ���� ���ڿ��� ��ȯ
SELECT
    ENAME,
    HIREDATE,
    TO_CHAR(HIREDATE, 'YY-MM')                 AS "�⵵(2�ڸ�)-��",
    TO_CHAR(HIREDATE, 'YYYY/MM/DD DAY')        AS "�⵵(4�ڸ�)/��/�� ����",
    TO_CHAR(HIREDATE, 'YYYY/MM/DD HH24:MI:SS') AS "���־��� ����"
FROM
    EMPLOYEE;
    
-- TO_CHAR(�����÷�, ��������) : ���ڸ� ������ ������ ���� ���ڿ��� ��ȯ
-- L : �� ������ ��ȭ��ȣ�� �տ� ǥ��
-- 999,999 : �ڸ����� ��Ÿ��, �ڸ����� ���� ������ ������ ä���� ����
-- 000,000 : �ڸ����� ��Ÿ��, �ڸ����� ���� ������ 0���� ä��
-- , : õ ���� �ڸ� ������ ���� ǥ��
SELECT
    ENAME,
    SALARY,
    TO_CHAR(SALARY, 'L999,999') AS "�� ǥ��",
    TO_CHAR(SALARY, 'L000,000') AS "�� ǥ��2"
FROM
    EMPLOYEE;
    
-- TO_DATE : ���ڸ� ��¥�� ��ȯ�ϴ� ���� �Լ�
-- ��������) 1981�� 2�� 20�Ͽ� �Ի��� ��� �˻��ϱ�
SELECT
    ENAME,
    HIREDATE
FROM
    EMPLOYEE
WHERE
    HIREDATE = TO_DATE('19810220', 'YYYYMMDD'); -- ���������� ���ڷ� ��ȯ
    
-- ���ڸ� ���ڷ� �ٲٴ� ���� �Լ�
-- TO_NUMBER(���ڿ�����, ��������) : ���ڿ��� ������ ������ ���ڷ� �ٲٱ�
SELECT
    TO_NUMBER('100,000', '999,999') - TO_NUMBER('50,000', '999,999')
FROM
    DUAL;

-- �������� 2) SUBSTR�Լ��� ����Ͽ� ������� �Ի��� �⵵�� �Ի��� �޸� ����ϼ���
-- SUBSTR(�ڷ��÷�, �����ε���, �ڸ� ����)
SELECT
    ENAME,
    HIREDATE,
    SUBSTR(HIREDATE, 1, 2) AS �⵵,
    SUBSTR(HIREDATE, 4, 2) AS ��
FROM
    EMPLOYEE;
    
-- �������� 3) SUBSTR �Լ��� ����Ͽ� 4���� �Ի��� ����� ����ϼ���
SELECT
    ENAME,
    HIREDATE
FROM
    EMPLOYEE
WHERE
    SUBSTR(HIREDATE, 4, 2) = 04;
    
-- �������� 4) ����� ¦���� ��� ����ϱ�
SELECT
    ENAME,
    ENO
FROM
    EMPLOYEE
WHERE
    MOD(ENO, 2) = 0;
    
-- �������� 5) ���� ��ĥ�� �������� ����Ͻÿ�.
-- ���� ��¥���� ���� 1�� 1���� �� ����� ����Ͻÿ�
-- ��, TO_DATE�Լ��� ����ؼ� ���� ��ġ���� ����Ͻÿ�
SELECT
    TRUNC(SYSDATE - TO_DATE('20220101', 'YYYYMMDD')) AS "���� ��¥"
FROM
    DUAL;
    
-- �Ϲ� �Լ�
-- NVL(NULL�� ���Ե� �÷�, �ٲ� ��) : NULL �̸� 0 �Ǵ� �ٸ� ������ �ٲٴ� ���� �Լ�
SELECT
    ENAME,
    SALARY,
    COMMISSION,
    COMMISSION                       AS "���ʽ�",
    SALARY * 12 + NVL(COMMISSION, 0) AS "����"
FROM
    EMPLOYEE
ORDER BY
    JOB;
    
-- NVL2(NULL�� ���Ե� �÷�, ���� NULL�� �ƴ� �� ��� ��, ���� NULL�϶� ��� ��)
SELECT
    ENAME,
    SALARY,
    COMMISSION,
    NVL2(COMMISSION, SALARY * 12 + COMMISSION, SALARY * 12)
FROM
    EMPLOYEE
ORDER BY
    JOB;
    
-- NULLIF(��1, ��2) : ��1, 2�� �����ϸ� NULL ���, �ƴϸ� ��1 ���
SELECT
    NULLIF('A', 'A'),
    NULLIF('A', 'B')
FROM
    DUAL;
    
-- ����Ŭ���� IF/ELSE ���
-- DECODE(����÷�, ���ǰ�, ��°�, ���ǰ�, ��°�,.....DEFAULT)
-- DEFAULT : �ƹ��͵� �ƴҶ� ����Ʈ�� ����϶�� ǥ��
SELECT
    ENAME,
    DNO,
    DECODE(DNO, 10, 'ȸ���', 20, '������',
           30, '������', 40, '���', 'DEFAULT') AS "�μ��̸�"
FROM
    EMPLOYEE
ORDER BY
    DNO;
    
-- �� �ٸ� IF / ELSE IF/ ELSE ���
SELECT
    ENAME,
    DNO,
    CASE
        WHEN DNO = 10
        THEN 'ȸ���'
        WHEN DNO = 20
        THEN '������'
        WHEN DNO = 30
        THEN '������'
        WHEN DNO = 40
        THEN '���'
        ELSE 'DEFAULT'
    END AS �μ��̸�
FROM
    EMPLOYEE
ORDER BY
    DNO;
    
-- �������� 6) ������� ��� ����� ����ϵ� ����� ���� ����� ���ؼ��� NULL �� ���
-- 0�� ����Ͻÿ�
-- ��� ���̺� : EMPLOYEE
-- ��� �÷� : MANAGER
SELECT
    ENAME,
    ENO,
    NVL(MANAGER, 0)
FROM
    EMPLOYEE;
    
-- �������� 7) DECODE Ȥ�� CASE WHEN �Լ��� ���޿� ���� �޿��� �λ��ϵ��� �Ͻÿ�.
-- ������ 'ANALYST'�� ����� 200
-- ������ 'SALESMAN'�� ����� 180
-- ������ 'MANAGER'�� ����� 150
-- ������ 'CLERK'�� ����� 100
SELECT
    JOB,
    SALARY,
    NVL(DECODE(JOB, 'ANALYST', SALARY + 200, 'SALESMAN', SALARY + 180,
               'MANAGER', SALARY + 150, 'CLERK', SALARY + 100, 'DEFAULT',
               SALARY), SALARY) AS �����޿�
FROM
    EMPLOYEE
ORDER BY
    JOB;

SELECT
    JOB,
    SALARY,
    NVL(
        CASE
            WHEN JOB = 'ANALYST'
            THEN SALARY + 200
            WHEN JOB = 'SALESMAN'
            THEN SALARY + 180
            WHEN JOB = 'MANAGER'
            THEN SALARY + 150
            WHEN JOB = 'CLERK'
            THEN SALARY + 100
        END, SALARY) AS �����޿�
FROM
    EMPLOYEE
ORDER BY
    JOB;
    
-- �ִ�, �ּ� �Լ�
-- MAX : �׷��� �ִ밪�� ��ȯ
-- MIN : �׷��� �ּҰ��� ��ȯ
SELECT
    SUM(SALARY)        AS "�޿� �Ѿ�",
    TRUNC(AVG(SALARY)) AS "�޿� ���",
    MAX(SALARY)        AS "�ִ� �޿�",
    MIN(SALARY)        AS "�ּ� �޿�"
FROM
    EMPLOYEE;
    
-- �������� 8) �ֱٿ� �Ի��� ����� ���� �������� �Ի��� ����� �Ի��� ����ϱ�
SELECT
    MAX(HIREDATE) AS "�ֱ� �Ի���",
    MIN(HIREDATE) AS "���� ������ �Ի���"
FROM
    EMPLOYEE;
    
-- �׷��Լ� VS NULL : �׷��Լ��� NULL�� ���������� �����ϰ� �����
SELECT
    SUM(COMMISSION) AS "Ŀ�̼� �Ѿ�"
FROM
    EMPLOYEE;
    
-- COUNT : �Ǽ� ����
SELECT
    COUNT(*)
FROM
    EMPLOYEE;
    
-- COUNT�� �׷��Լ��̹Ƿ� NULL�� �����ϰ� ó��
-- COMMISSION�� �޴� ����� ���� �˰� ���� 1��
SELECT
    COUNT(COMMISSION)
FROM
    EMPLOYEE;

-- �����ϸ� �Ʒ� ������ �߰��ص� ��
SELECT
    COUNT(COMMISSION)
FROM
    EMPLOYEE
WHERE
    COMMISSION IS NOT NULL;
    
-- Ȱ�� ��)
-- �ߺ��� ���ŵ��� ���� �Ǽ� ����
SELECT
    COUNT(JOB) AS "������ ����"
FROM
    EMPLOYEE;
-- �ߺ��� �����ϴ� �۾� -> DISTINCT : �ߺ��� ����
SELECT
    COUNT(DISTINCT JOB) AS "������ ����(�ߺ�����)"
FROM
    EMPLOYEE;
    
-- �׷��Լ��� �� �� �����ؾ��� ��
SELECT
    COUNT(ENO),
    MIN(SALARY),
    MAX(SALARY) -- �׷��Լ� ���� �� ������ ����Ű�� ������
--    ENAME, -- �Ϲ� �÷��� ������ ������ ��

FROM
    EMPLOYEE;
    
-- GROUP BY �÷��� : �׷캰 ����� ������
-- GROUP BY �÷���  => SELECT �÷��� : GROUP BY �ڿ� ���Ե� �÷��� SELECT ����
-- �׷��Լ� : �ϳ��� ������� ������(COUNT, MAX, SUM)
-- ����) �μ����� ��� �޿��� �˰� ���� ��
SELECT
    DNO                AS "�μ���ȣ",
    TRUNC(AVG(SALARY)) AS "��� �޿�"
FROM
    EMPLOYEE
GROUP BY
    DNO; -- �μ���ȣ�� �׷���
    
-- ��������) �μ���, ���޺� �ѱ޿��� ����Ͽ� ����� �ּ���
-- ��, �μ���, ���޺��� �������� ����
SELECT
    DNO,
    JOB,
    SUM(SALARY) AS "�� �޿�"
FROM
    EMPLOYEE
GROUP BY
    DNO,
    JOB
ORDER BY
    DNO,
    JOB;
    
-- GOURP BY ���� ���� �ɱ�
-- HAVING ����
-- �μ����� �ִ�޿��� ���ϴµ� 3000�̻� �Ǵ� �͸� ����� �ּ���
SELECT
    DNO,
    MAX(SALARY) AS "�ִ� �޿�"
FROM
    EMPLOYEE
GROUP BY
    DNO
HAVING
    MAX(SALARY) > 3000;
    
-- ��������) MANAGER�� �����ϰ� �޿� �Ѿ��� 5000 �̻��� ���޺� �޿� �Ѿ�(SUM) ���ϱ�
-- ��, �޿� �Ѿ��� �������� ������������ �����ϼ���
SELECT
    JOB         AS ����,
    SUM(SALARY) AS �޿��Ѿ�
FROM
    EMPLOYEE
GROUP BY
    JOB
HAVING JOB != 'MANAGER'
       AND
--���� ����
--HAVING JOB NOT LIKE '%MANAGER' AND
        SUM(SALARY) >= 5000
ORDER BY
    SUM(SALARY);
    
-- �������� 9) ��� ����� �޿� �ְ��, ������, �Ѿ� �� ��� �޿��� ����ϼ���.
-- �÷��� ��Ī : �ְ��, ������, �Ѿ�, ��ձ޿�
SELECT
    MAX(SALARY)        AS �ְ��,
    MIN(SALARY)        AS ������,
    SUM(SALARY)        AS �Ѿ�,
    TRUNC(AVG(SALARY)) AS ��ձ޿�
FROM
    EMPLOYEE;
    
-- �������� 10) �� ��� ���� �������� �޿� �ְ��, ������, �Ѿ� �� ��վ��� ����ϼ���.
-- �÷��� ��Ī : �ְ��, ������, �Ѿ�, ��ձ޿�
SELECT
    JOB,
    MAX(SALARY)        AS �ְ��,
    MIN(SALARY)        AS ������,
    SUM(SALARY)        AS �Ѿ�,
    TRUNC(AVG(SALARY)) AS ��ձ޿�
FROM
    EMPLOYEE
GROUP BY
    JOB;
    
-- �������� 11) COUNT(*) �Լ��� �̿��Ͽ� ��� ������ ������ ��� ���� ����ϼ���.
SELECT
    JOB,
    COUNT(*)
FROM
    EMPLOYEE
GROUP BY
    JOB;
    
-- �������� 12) ������ ���� �����Ͻÿ�.
SELECT
    COUNT(DISTINCT MANAGER)
FROM
    EMPLOYEE;

SELECT
    COUNT(MANAGER)
FROM
    EMPLOYEE;
    
-- �������� 13) �޿� �ְ��, �޿� �������� ������ ����ϼ���.
-- �÷��� ��Ī�� "����"���� ǥ���ϼ���
SELECT
    MAX(SALARY)               AS �޿��ְ��,
    MIN(SALARY)               AS �޿�������,
    MAX(SALARY) - MIN(SALARY) AS ����
FROM
    EMPLOYEE;
    
-- �������� 14) ���޺� ����� ���� �޿��� ����ϼ���.
-- �����ڸ� �� �� ���� ��� �� ���� �޿��� 2000 �̸��� �׷��� ���ܽ�Ű��
-- ����� �޿��� ���� ������������ �����Ͽ� ����ϼ���
SELECT
    JOB,
    MIN(SALARY) AS �޿�������
FROM
    EMPLOYEE
WHERE
    MANAGER IS NOT NULL
GROUP BY
    JOB
HAVING NOT MIN(SALARY) < 2000
ORDER BY
    MIN(SALARY) DESC;
    
-- �������� 15) �� �μ��� ���� �μ���ȣ, �����, �μ� ���� ��� ����� ��� �޿���
-- ����ϼ���
-- �÷���Ī �μ���ȣ, �����, ��ձ޿�
-- ��ձ޿��� �Ҽ��� 2°�ڸ����� �ݿø��ϼ���
SELECT
    DNO                   AS �μ���ȣ,
    COUNT(*)              AS �����,
    ROUND(AVG(SALARY), 2) AS ��ձ޿�
FROM
    EMPLOYEE
GROUP BY
    DNO;
    
-- �������� 8) �� �μ��� ���� �μ��̸�, ������, �����
-- �μ��� ����� ��� �޿��� ����ϼ���(DECODE, CASE WHEN)
-- �÷���Ī �μ��̸�, ������, �����, ��ձ޿�
SELECT
    DNO,
    DECODE(DNO, 10, 'ACCOUNTING', 20, 'RESEARCH',
           30, 'SALES', 40, 'OPERATIONS', 'DEFAULT') AS �μ��̸�,
    DECODE(DNO, 10, 'NEW YORK', 20, 'DALLAS',
           30, 'CHICAGO', 40, 'BOSTON', 'DEFAULT')   AS ������,
    COUNT(*)                                         AS �����,
    ROUND(AVG(SALARY))                               AS ��ձ޿�
FROM
    EMPLOYEE
GROUP BY
    DNO,
    DECODE(DNO, 10, 'ACCOUNTING', 20, 'RESEARCH',
           30, 'SALES', 40, 'OPERATIONS', 'DEFAULT'),
    DECODE(DNO, 10, 'NEW YORK', 20, 'DALLAS',
           30, 'CHICAGO', 40, 'BOSTON', 'DEFAULT');
-----------------------------------------------------------
SELECT
    DNO,
    CASE
        WHEN DNO = 10
        THEN 'ACCOUNTING'
        WHEN DNO = 20
        THEN 'RESEARCH'
        WHEN DNO = 30
        THEN 'SALES'
        WHEN DNO = 40
        THEN 'OPERATIONS'
        ELSE 'DEFAULT'
    END                AS �μ��̸�,
    CASE
        WHEN DNO = 10
        THEN 'NEW YORK'
        WHEN DNO = 20
        THEN 'DALLAS'
        WHEN DNO = 30
        THEN 'CHICAGO'
        WHEN DNO = 40
        THEN 'BOSTON'
        ELSE 'DEFAULT'
    END                AS ������,
    COUNT(*)           AS �����,
    ROUND(AVG(SALARY)) AS ��ձ޿�
FROM
    EMPLOYEE
GROUP BY
    DNO,
    CASE
            WHEN DNO = 10
            THEN 'ACCOUNTING'
            WHEN DNO = 20
            THEN 'RESEARCH'
            WHEN DNO = 30
            THEN 'SALES'
            WHEN DNO = 40
            THEN 'OPERATIONS'
            ELSE 'DEFAULT'
    END,
    CASE
            WHEN DNO = 10
            THEN 'NEW YORK'
            WHEN DNO = 20
            THEN 'DALLAS'
            WHEN DNO = 30
            THEN 'CHICAGO'
            WHEN DNO = 40
            THEN 'BOSTON'
            ELSE 'DEFAULT'
    END;
    
-- ���� *****
-- ������̺� �����ȣ�� 7788�� ������ �μ�����?
SELECT
    DNO
FROM
    EMPLOYEE
WHERE
    ENO = 7788;

SELECT
    DNAME
FROM
    DEPARTMENT
WHERE
    DNO = 20;
    
-- �������� ���ϱ�
-- ������ �Ǽ��� ���� ���� ������
SELECT
    A.DNO,
    A.DNAME,
    A.LOC
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
        B.DNO = A.DNO
    AND B.ENO = 7788;