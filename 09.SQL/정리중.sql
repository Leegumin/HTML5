------------------ �˻�(R)
---- �� �÷��� ����
--SELECT
--    DEPTNO
--FROM
--    DEPT;
--
--SELECT
--    DNAME
--FROM
--    DEPT;
--
--SELECT
--    LOC
--FROM
--    DEPT;
--    
---- * : ALL COLUMN (DEPTNO, DNAME, LOC)
--SELECT
--    *
--FROM
--    DEPT;
--
----���ǿ� �´� ������ ��������
----WHERE [������]  : ���� ����
----DEPT ���̺� DNAME(�μ��̸�)�� 'SALES'�� �����͸� ����������
--SELECT
--    DNAME
--FROM
--    DEPT
--WHERE
--    DNAME = 'SALES';
--
----[�����÷�] LIKE 'S%' : �����÷��� 'S'�� ���۵Ǵ� ���ڿ��� ��� ������
----[�����÷�] LIKE '%S' : �����÷��� 'S'�� ���۵Ǵ� ���ڿ��� ��� ������
----[�����÷�] LIKE '%S%' : �����÷��� 'S'�� ���Ե� ���ڿ��� ��� ������
----[�����÷�] LIKE '_A%' : �տ��� �ι�° A�� �����ϴ� ��� ���ڿ��� ���
----[�����÷�] LIKE '__A%' : �տ��� ����° A�� �����ϴ� ��� ���ڿ��� ���
--SELECT
--    ENAME
--FROM
--    EMP
--WHERE
--    ENAME LIKE 'S%';
--    
----�����Լ� UPPER(���ڿ�) : �빮�ڷ� �ٲٱ�
----�����Լ� LOWER(���ڿ�) : �ҹ��ڷ� �ٲٱ�
----DB ���̺� �����ʹ� ��ҹ��ڸ� ������ ���ڿ��� �ν���
--SELECT
--    JOB
--   ,ENAME
--FROM
--    EMP
--WHERE
--    JOB = UPPER('manager');
--
----���� : ��������
----ORDER BY (�÷���) ASC(ASCENDING)
--SELECT
--    *
--FROM
--    DEPT
--ORDER BY
--    DNAME ASC;
--
----���� : ��������
----ORDER BY (�÷���) DESC(DESCENDING)
--SELECT
--    *
--FROM
--    DEPT
--ORDER BY
--    DNAME DESC;
--
----EMP���̺��� JOB�� 'CLERK'�� �����͸� �̾Ƽ� ENAME(�����̸�), EMPNO(������ȣ)������� �������� �������ּ���
----���� ������ ������ �÷��� ���� DESC/ASC�� ���� �ɾ��־���ϸ� ó�� ���� �÷��� �������� �ٽ� �����
--SELECT
--    ENAME
--   ,EMPNO
--FROM
--    EMP
--WHERE
--    JOB = 'CLERK'
----ENAME�� ���� ���������� �� �����ǰ� �������� �ִٸ� EMPNO�� ASC�� �������� ��
--ORDER BY
--    ENAME DESC
--   ,EMPNO; --�������� ASC�� ���� ����
----ORDER BY 2 DESC, 1; --�÷�ID(����)�ε� ��� ����
--
----DESC ���̺�� : ���̺��� ������ �����ִ� ��ɾ�
----NUMBER : ����, �Ǽ��� ǥ���ϴ� �ڷ���
----NUMBER(4) : 4�� ���� 4�ڸ�
----NUMBER(7,2) : 7�� �����ڸ���, 2�� �Ҽ��ڸ��� 2�ڸ�
----VARCHAR2 : ���ڿ��� ǥ���ϴ� �ڷ���(*)
----VARCHAR2(10) : 10 �ڸ��� 
----UTF8 ���� : ����(�ѱ���) 1BYTE, �ѱ�(�ѱ���) 3BYTE
----DATE : ��¥�� ǥ���ϴ� �ڷ���
--DESC EMPLOYEE;
--
----SELECT ���� �÷� * 12 ��Ģ������ ����
--SELECT
--    ENAME
--   ,SALARY
--   ,SALARY * 12
--FROM
--    EMPLOYEE;
--
----SELECT ���� �÷� + �ٸ� �÷� => ��� ����
----�÷� + �ٸ��÷�(NULL���� ������) = NULL(�ش� ������)
----SALARY : ����
----SALARY*12 : ����
----COMMISSION : ���ʽ�
----SALARY*12 + COMMISSION(���ʽ�) : ���� 1��ġ ����
----������) ��� ��(COMMISSION)�� NULL�� �־ ����� ���� 1��ġ ������ ������ ����
--SELECT
--    ENAME
--   ,SALARY
--   ,JOB
--   ,DNO
--   ,COMMISSION
--   ,SALARY * 12
--   ,SALARY * 12 + COMMISSION
--FROM
--    EMPLOYEE;
--       
----��������) ��� ��(COMMISSION)�� NVL(COMMISSION, 0)�� ����
----NVL(COMMISSION, 0) : NULL�� ���� 0���� ��ȯ
----NVL(�÷���, ���氪) : �÷����� NULL���� ���氪���� ��ȯ�ϴ� �����Լ�
----AS ��Ī(ALIAS) : ��µǴ� �÷��� ���氡��
--SELECT
--    ENAME                           AS �̸�
--   ,SALARY                          AS ����
--   ,JOB                             AS ����
--   ,DNO
--   ,NVL(COMMISSION,0)               AS ���ʽ�
--   ,SALARY * 12                     AS ����
--   ,SALARY * 12 + NVL(COMMISSION,0) AS ��������
--FROM
--    EMPLOYEE;
--    
----�÷��� ��Ī(ALIAS)�ֱ�       
----""�ȿ� �����ϸ� Ư������, ���� ����
--SELECT
--    ENAME                           AS "��       ��"
--   ,SALARY                          AS "��$%��"
--   ,JOB                             AS ����
--   ,DNO
--   ,NVL(COMMISSION,0)               AS ���ʽ�
--   ,SALARY * 12                     AS "��       ��"
--   ,SALARY * 12 + NVL(COMMISSION,0) AS ��������
--FROM
--    EMPLOYEE;
--
----DISTINCT : ��°������ �ߺ��� �����ϴ� ��ɾ�
--SELECT DISTINCT
--    DNO AS �μ���ȣ
--FROM
--    EMPLOYEE;
--
----DUAL : �׽�Ʈ��, ���� ���� ���� ���̺�
--DESC DUAL;
--
--SELECT
--    10 * 4 / 3
--FROM
--    DUAL;
--
----���� �ð�, ��¥ ����ϴ� �����Լ�
----DEPARTMENT�� ������ �ִ� ������ ������ŭ ����
--SELECT
--    SYSDATE
--FROM
--    DEPARTMENT;
--    
----DUAL : �׽�Ʈ������ �ѰǸ� �̰� ������ ���
--SELECT
--    SYSDATE
--FROM
--    DUAL;
--
----���� : ���� �˻�
----1500 �̻��� SALARY�� �޴� ������� �˻�
---- = : ����, > : ~���� ŭ, < : ~���� ����, <> : ���� ����
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--    SALARY >= 1500;
--
----���ڿ� �˻�
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--    ENAME = 'SCOTT';
--
----��¥ ������ �˻�
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--    HIREDATE <= '1981/01/01';
--
----TO_CHAR(�÷���, ��������) : ��¥ ������ �����ؼ� ���ڿ��� ����ϴ� ���� �Լ�
----TO_CHAR(SYSDATE, 'YYYY-MM-DD') : SYSDATE�� 'YYYY-MM-DD' �������� ��ȯ
--SELECT
--    TO_CHAR(SYSDATE,'YYYY-MM-DD')
--FROM
--    DUAL;
----'YYYYMMDD' �������� ��ȯ
--SELECT
--    TO_CHAR(SYSDATE,'YYYYMMDD')
--FROM
--    DUAL;
----'YYYY/MM/DD' �������� ��ȯ
--SELECT
--    TO_CHAR(SYSDATE,'YYYY/MM/DD')
--FROM
--    DUAL;
--
----TO_DATE(�÷���, ��������) : ���ڿ��� ��¥ ������ �������� �����ϴ� ���� �Լ�
--SELECT
--    TO_DATE('2022-04-29 17:10:01','YYYY-MM-DD HH24:MI:SS')
--FROM
--    DUAL;
--
--SELECT
--    TO_DATE('2017-05-12 23:59:59','YYYY-MM-DD HH24:MI:SS')
--FROM
--    DUAL;
--
----�������� :  AND(���ÿ� ��), OR(�� �� �ϳ��� ��), NOT(�ݴ�)
----AND
----�μ���ȣ�� 10�̰� ������ 'MANAGER'�� ����� ����ϱ�
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--        DNO = 10
--    AND JOB = 'MANAGER';
--
----OR
----�μ���ȣ�� 10�̰ų� ������ 'MANAGER'�� ����� ����ϱ�
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--    DNO = 10
--    OR JOB = 'MANAGER';
--
----NOT
----10�� �μ��� �Ҽӵ� ����� �����ϰ� ������ ��� ���
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--    NOT DNO = 10;
--
----������ 'MANAGER'�� ����� �����ϰ� ���
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--    NOT JOB = 'MANAGER';
--
----��������2 : BETWEEN, IN
----BETWEEN
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--    SALARY BETWEEN 1000 AND 1500;
--
----NOT BETWEEN
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--    SALARY NOT BETWEEN 1000 AND 1500;
--
----IN
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--    COMMISSION IN ( 300,500,1400 );
--
----NOT IN
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--    COMMISSION NOT IN ( 300,500,1400 );

--NULL : �ƹ� ���� ����, ������ ���� ��
--NULL �� ������ �ϸ� NULL�� ��
--IS NULL : NULL�� �����͸� �̱�
SELECT
    *
FROM
    EMPLOYEE
WHERE
    COMMISSION IS NULL;
--IS NOT NULL : NULL�� �ƴ� �����͸� �̱�
SELECT
    *
FROM
    EMPLOYEE
WHERE
    COMMISSION IS NOT NULL;

--���� 11) COMMISSION�� NULL�� �߿��� SALARY�� 1000���� ū ������ ������ ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
    COMMISSION IS NULL
    AND SALARY >= 1000;

--���� 12) ���� ���̺��� ��¥ ������ ������������ �����Ͽ� ����ϼ���
SELECT
    *
FROM
    EMPLOYEE
ORDER BY
    HIREDATE DESC;

--���� 13) ������ �޿��� �޴� ����� ���ؼ� �̸��� ������ ���� ������� ����� �ּ���
SELECT
    *
FROM
    EMPLOYEE
ORDER BY
    SALARY
   ,ENAME;

--����Ŭ ���� �Լ�
--���갡��
SELECT
    10 * 2
FROM
    DUAL;
--�����Է°���
SELECT
    '�����󳭳�'
FROM
    DUAL;

--�����Լ� 1) UPPER(���ڿ�)/LOWER(���ڿ�)/INITCAP(���ڿ�)
SELECT
    'Oracle mania'
   ,UPPER('Oracle mania')   AS �빮��
   ,LOWER('Oracle mania')   AS �ҹ���
   ,INITCAP('Oracle mania') AS "ù���� �빮��"
FROM
    DUAL;
    
--���� ���̺�
SELECT
    ENAME
   ,LOWER(ENAME)
   ,JOB
   ,INITCAP(JOB)
FROM
    EMPLOYEE;
    
--SCOTT ��� �˻��ϱ�
--�÷��� �����͸� �ϰ� ��(��)���ڷ� �����Ͽ� �� ����
--�㳪 ���� ������
SELECT
    ENO
   ,ENAME
   ,DNO
FROM
    EMPLOYEE
WHERE
    UPPER(ENAME) = 'SCOTT';
    --LOWER(ename) = 'scott';
    --INITCAP(ename) = 'Scott';
    
--�����Լ� 2) ���ڱ��̸� ��ȯ�ϴ� �Լ�
--LENGTH(���ڿ�) : �ѱ�/���� ��� ���� ���ڰ����� ��� ��ȯ
SELECT
    LENGTH('OrAcleMania')
   ,LENGTH('����Ŭ�ŴϾ�')
FROM
    DUAL;
    
--�����Լ� 3) ���� ���� �Լ�
--CONCAT : ������ ���� �����ϴ� �Լ�
--���ڿ� || ���ڿ� : ������ ���� ����
SELECT
    'Oracle'
   ,'mania'
   ,CONCAT('Oracle','mania')
   ,'Oracle' || 'mania'
FROM
    DUAL;
    
--�����Լ� 4) ���� ���� �Լ�
--���ڿ� �ڸ���
--substr(����÷�(����), ������ġ, ����) : �ε����� 1���� ����
--������ġ�� -1�� �� ��� ���������� ����
SELECT
    SUBSTR('Oracle mania',4,3)
   ,SUBSTR('Oracle mania',- 1,1)
FROM
    DUAL;
    
--���� 14) �̸��� N���� ������ ��� ǥ���ϱ�
--��� ���̺� : employee
--substr() ����
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SUBSTR(ENAME,- 1,1) = 'N';
    
--���� 15) 87�⵵�� �Ի��� ��� ǥ���ϱ�
--��� ���̺� : employee
--substr() ����
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SUBSTR(HIREDATE,1,2) = '87';
    
--substrb(����÷�(����), ������ġ, ����) : ���� byte �������� ���
--����(1byte) : substr/substrb ��� ����
--�ѱ�(3byte) : substr/substrb ��� �ٸ�

--�����Լ� 5) ���ڿ����� ��� ���� ã�Ƽ� �ε��� ��ȣ ��ȯ
--����Ŭ������ �ε�����ȣ�� 1���� ������
--instr(����÷�(����), ã������, ������ġ, ���° �߰�)
SELECT
    INSTR('Oracle mania','a')
FROM
    DUAL;

SELECT
    INSTR('Oracle mania','a',5,2) --5��°���� �����Ͽ� 2��° �߰ߵ� 'a'�ε����� ��ȯ
FROM
    DUAL;
    
--���� 16) ��� �������� ename �� ��° �ڸ��� 'R'�� ����� �˻��ϴ� �������� �ۼ��ϼ���
--��, instr�� ����ϼ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
    INSTR(ENAME,'R',3,1) = 3;
    
    --�������� 1)
--���� �����ڸ� ����Ͽ� ��� ����� ���ؼ� $300�� �޿� �λ��� ����� ��
--����� �̸�, �޿�, �λ�� �޿��� ����ϼ���.
SELECT
    ENAME        AS �̸�
   ,SALARY       AS �޿�
   ,SALARY + 300 AS �λ�ȱ޿�
FROM
    EMPLOYEE;

--�������� 2)
--����� �̸�, �޿�, ���� �Ѽ����� �� ������ ���� �ͺ��� ���� ������ ����ϼ���.
--(���� �� ������ ���޿� 12�� ���� �� $100�� �󿩱��� ���ؼ� ����ϼ���)
SELECT
    ENAME                 AS �̸�
   ,SALARY                AS �޿�
   ,( SALARY * 12 ) + 100 AS �����Ѽ���
FROM
    EMPLOYEE
ORDER BY
    ( SALARY * 12 ) + 100 DESC;

--�������� 3)
--�޿��� 2000�� �Ѵ� ����� �̸��� �޿��� �޿��� ���� �ͺ��� ���� ������ ����ϼ���
SELECT
    ENAME  AS �̸�
   ,SALARY AS �޿�
FROM
    EMPLOYEE
WHERE
    SALARY >= 2000
ORDER BY
    SALARY DESC;

--�������� 4)
--�����ȣ�� 7788�� ����� �̸��� �μ���ȣ�� ����ϼ���
SELECT
    ENO   AS �����ȣ
   ,ENAME AS �̸�
   ,DNO   AS �μ���ȣ
FROM
    EMPLOYEE
WHERE
    ENO = '7788';
    
--�������� 5)
--�޿��� 2000���� 3000���̿� ���Ե��� �ʴ� ����� �̸��� �޿��� ����ϼ���.
SELECT
    ENAME  AS �̸�
   ,SALARY AS �޿�
FROM
    EMPLOYEE
WHERE
    SALARY NOT BETWEEN 2000 AND 3000;

--�������� 6)
--1981�� 2�� 20�Ϻ��� 1981�� 5�� 1�� ���̿� �Ի��� �����
--�̸�, ������, �Ի����� ����ϼ���
SELECT
    ENAME    AS �̸�
   ,JOB      AS ������
   ,HIREDATE AS �Ի���
FROM
    EMPLOYEE
WHERE
    HIREDATE BETWEEN '81/02/20' AND '81/05/01';

--�������� 7)
--�μ���ȣ�� 20 �� 30�� ���� ����� �̸��� �μ���ȣ�� ����ϵ�
--�̸��� �������� �������� ����ϼ���
SELECT
    ENAME AS �̸�
   ,DNO   AS �μ���ȣ
FROM
    EMPLOYEE
WHERE
    DNO IN ( 20,30 )
ORDER BY
    ENAME DESC;

--�������� 8)
--����� �޿��� 2000���� 3000���̿� ���Եǰ� �μ���ȣ�� 20 �Ǵ� 30��
--����� �̸�, �޿��� �μ���ȣ�� ����ϵ� �̸���(��������)���� ����ϼ���
SELECT
    ENAME  AS �̸�
   ,SALARY AS �޿�
   ,DNO    AS �μ���ȣ
FROM
    EMPLOYEE
WHERE
    SALARY BETWEEN 2000 AND 3000
    AND DNO IN ( 20,30 )
ORDER BY
    ENAME;

--�������� 9)
--1981�⵵�� �Ի��� ����� �̸��� �Ի����� ����ϼ���
--��, LIKE �����ڿ� ���ϵ�ī��(%, _ ��)�� ����ϼ���
SELECT
    ENAME    AS �̸�
   ,HIREDATE AS �Ի���
FROM
    EMPLOYEE
WHERE
    HIREDATE LIKE '81%';


--�������� 10)
--�����ڰ� ���� ����� �̸��� ��� ������ ����ϼ���
SELECT
    ENAME AS �̸�
   ,JOB   AS ������
FROM
    EMPLOYEE
WHERE
    MANAGER IS NULL;

--�������� 11)
--COMMITION�� ���� �� �ִ� �ڰ��� �Ǵ� ����� �̸�, �޿�, Ŀ�̼��� ����ϵ�
--�޿� �� Ŀ�̼��� �������� �������� �����Ͽ� ����ϼ���
SELECT
    ENAME      AS �̸�
   ,SALARY     AS �޿�
   ,COMMISSION AS Ŀ�̼�
FROM
    EMPLOYEE
WHERE
    COMMISSION IS NOT NULL
ORDER BY
    SALARY DESC
   ,COMMISSION DESC;
    
--�������� 12)
--�̸��� ����° ���ڰ� R�� ����� �̸��� ǥ���ϼ���.
SELECT
    ENAME AS �̸�
FROM
    EMPLOYEE
WHERE
    ENAME LIKE '__R%';

--�������� 13)
--�̸��� A�� E�� ��� �����ϰ� �ִ� ����� �̸��� ǥ���ϼ���.
SELECT
    ENAME AS �̸�
FROM
    EMPLOYEE
WHERE
    ENAME LIKE '%A%'
    AND ENAME LIKE '%E%';

--�������� 14)
--������(JOB�÷�)�� �繫��(CLERK) �Ǵ� �������(SALESMAN)�̸鼭
--�޿��� $1600, $950 �Ǵ� $1300�� �ƴ�
--����� �̸�, ������, �޿��� ����ϼ���
SELECT
    ENAME  AS �̸�
   ,JOB    AS ����
   ,SALARY AS �޿�
FROM
    EMPLOYEE
WHERE
    JOB IN ( 'CLERK','SALESMAN' )
    AND SALARY NOT IN ( '1600','950','1300' );

--�������� 15)
--Ŀ�̼�(�󿩱�)�� $500 �̻��� ����� �̸��� �޿� �� Ŀ�̼�(�󿩱�)�� ����ϼ���
SELECT
    ENAME      AS �̸�
   ,SALARY     AS �޿�
   ,COMMISSION AS Ŀ�̼�
FROM
    EMPLOYEE
WHERE
    COMMISSION >= 500;
    
    -- 2022-05-02 �ǽ�
-- ���� �ڸ��� Ư�� ��ȣ�� ä��� �����Լ�
-- lpad(�÷���, �ڸ���, ä�� ��ȣ) : leftpad, �ش��÷��� 10�ڸ��� ���缭 �� ������ ��ȣ�� ä����
SELECT
    LPAD(SALARY,10,'*')
FROM
    EMPLOYEE;
    
-- rpad(�÷���, �ڸ���, ä�� ��ȣ) : rightpad, �ش��÷��� 10�ڸ��� ���缭 �� ������ ��ȣ�� ä����
SELECT
    RPAD(SALARY,10,'*')
FROM
    EMPLOYEE;

-- ltrim(�÷�) : ���� ���� ����
-- rtrim(�÷�) : ������ ���� ����
-- trim : ���ʰ��� ����
SELECT
    ' Oracle mania '
   ,LTRIM(' Oracle mania ')
   ,RTRIM(' Oracle mania ')
   ,TRIM(' Oracle mania ')
FROM
    DUAL;
    
-- ���� �Լ�
-- round : Ư���ڸ������� �ݿø��ϴ� ���� �Լ�
SELECT
    98.7654
   ,ROUND(98.7654)
   , -- ù°�ڸ� �ݿø�
   ROUND(98.7654,2)
   , -- ��°�ڸ� �ݿø�(�Ű������� 2° �ڸ� ����)
   ROUND(98.7654,- 1) -- ���� 1�ڸ� �ݿø�
FROM
    DUAL;
    
-- TRUNC : Ư�� �ڸ������� ����
SELECT
    98.7654
   ,TRUNC(98.7654)
   , -- �Ҽ��� ù°�ڸ����� ����
   TRUNC(98.7654,2)
   , -- �Ҽ��� ��°�ڸ����� ����
   TRUNC(98.7654,- 1) -- ���� 1�ڸ� ����
FROM
    DUAL;
    
-- MOD : ù��° ���� �ι�° ������ ���� �������� ��ȯ(�ڹ��� ������ ������ '%'�� ����)
SELECT
    MOD(31,2)
   ,MOD(31,8)
FROM
    DUAL;
    
-- �������� 1) ��� ����� �޿��� 500���� ���� �������� ����ؼ� ����غ�����
SELECT
    ENAME
   ,SALARY
   ,MOD(SALARY,500)
FROM
    EMPLOYEE;
    
-- ��¥ �Լ�
-- sysdate : �ý��ۿ� ����� ���� ��¥�� ��ȯ�ϴ� ���� �Լ�
SELECT
    SYSDATE
   ,TO_CHAR(SYSDATE,'yyyy-mm-dd hh24:mi:ss')
FROM
    DUAL;
    
-- ��¥ ����
SELECT
    SYSDATE - 1 AS ����
   , -- ���� ���
   SYSDATE     AS ����
   , -- ���� ���
   SYSDATE + 1 AS ���� -- ���� ���
FROM
    DUAL;
    
-- ��������) ������� ��������� �ٹ��ϼ� ���ϱ�
-- ��, �Ǽ��� ������ �ݿø��ϱ�
SELECT
    ENAME
   ,HIREDATE
   ,SYSDATE - HIREDATE AS �ٹ��ϼ�
   ,ROUND(SYSDATE - HIREDATE)
FROM
    EMPLOYEE;
    
-- ��¥�� ��¥ ������ ���� ���� ���ϴ� ���� �Լ�
-- months_between(sysdate, ��¥�÷�)
SELECT
    ENAME
   ,SYSDATE
   ,HIREDATE
   ,TRUNC(MONTHS_BETWEEN(SYSDATE,HIREDATE)) AS ������
FROM
    EMPLOYEE;
    
-- �Ի����� Ư������ ���� ��¥�� ���ϰ� ���� ��
-- add_between(��¥�÷�, ���ϰ� ���� ���� ��)
SELECT
    ENAME
   ,HIREDATE
   ,ADD_MONTHS(HIREDATE,6) AS "6���� ��"
FROM
    EMPLOYEE;
    
-- ������ �������� ���ʷ� �����ϴ� ����� ���ϱ�
-- NEXT_DAY(SYSDATE, '���ϴ� ����(���ڵ� ����)')
SELECT
    SYSDATE
   ,NEXT_DAY(SYSDATE,'�����') AS "�̹� �� �����"
   ,NEXT_DAY(SYSDATE,7)     AS "�̹� �� �����(����)"
FROM
    DUAL;
    
-- �Ի��� ���� ������ �� ���ϱ�
-- LAST_DAY(��¥�÷�)
SELECT
    ENAME
   ,HIREDATE
   ,LAST_DAY(HIREDATE) AS "�Ի���� ������ ��¥"
FROM
    EMPLOYEE;
    
-- �ڷ��� ��ȯ �Լ�
-- TO_CHAR(�÷�, ��ȯ����) : ��¥�� �Ǵ� �������� ���������� ��ȯ�ϴ� �����Լ�
-- TO_CHAR(��¥�÷�, ��������) : ��¥�� ������ ������ ���� ���ڿ��� ��ȯ
SELECT
    ENAME
   ,HIREDATE
   ,TO_CHAR(HIREDATE,'YY-MM')                 AS "�⵵(2�ڸ�)-��"
   ,TO_CHAR(HIREDATE,'YYYY/MM/DD DAY')        AS "�⵵(4�ڸ�)/��/�� ����"
   ,TO_CHAR(HIREDATE,'YYYY/MM/DD HH24:MI:SS') AS "���־��� ����"
FROM
    EMPLOYEE;
    
-- TO_CHAR(�����÷�, ��������) : ���ڸ� ������ ������ ���� ���ڿ��� ��ȯ
-- L : �� ������ ��ȭ��ȣ�� �տ� ǥ��
-- 999,999 : �ڸ����� ��Ÿ��, �ڸ����� ���� ������ ������ ä���� ����
-- 000,000 : �ڸ����� ��Ÿ��, �ڸ����� ���� ������ 0���� ä��
-- , : õ ���� �ڸ� ������ ���� ǥ��
SELECT
    ENAME
   ,SALARY
   ,TO_CHAR(SALARY,'L999,999') AS "�� ǥ��"
   ,TO_CHAR(SALARY,'L000,000') AS "�� ǥ��2"
FROM
    EMPLOYEE;
    
-- TO_DATE : ���ڸ� ��¥�� ��ȯ�ϴ� ���� �Լ�
-- ��������) 1981�� 2�� 20�Ͽ� �Ի��� ��� �˻��ϱ�
SELECT
    ENAME
   ,HIREDATE
FROM
    EMPLOYEE
WHERE
    HIREDATE = TO_DATE('19810220','YYYYMMDD'); -- ���������� ���ڷ� ��ȯ
    
-- ���ڸ� ���ڷ� �ٲٴ� ���� �Լ�
-- TO_NUMBER(���ڿ�����, ��������) : ���ڿ��� ������ ������ ���ڷ� �ٲٱ�
SELECT
    TO_NUMBER('100,000','999,999') - TO_NUMBER('50,000','999,999')
FROM
    DUAL;

-- �������� 2) SUBSTR�Լ��� ����Ͽ� ������� �Ի��� �⵵�� �Ի��� �޸� ����ϼ���
-- SUBSTR(�ڷ��÷�, �����ε���, �ڸ� ����)
SELECT
    ENAME
   ,HIREDATE
   ,SUBSTR(HIREDATE,1,2) AS �⵵
   ,SUBSTR(HIREDATE,4,2) AS ��
FROM
    EMPLOYEE;
    
-- �������� 3) SUBSTR �Լ��� ����Ͽ� 4���� �Ի��� ����� ����ϼ���
SELECT
    ENAME
   ,HIREDATE
FROM
    EMPLOYEE
WHERE
    SUBSTR(HIREDATE,4,2) = 04;
    
-- �������� 4) ����� ¦���� ��� ����ϱ�
SELECT
    ENAME
   ,ENO
FROM
    EMPLOYEE
WHERE
    MOD(ENO,2) = 0;
    
-- �������� 5) ���� ��ĥ�� �������� ����Ͻÿ�.
-- ���� ��¥���� ���� 1�� 1���� �� ����� ����Ͻÿ�
-- ��, TO_DATE�Լ��� ����ؼ� ���� ��ġ���� ����Ͻÿ�
SELECT
    TRUNC(SYSDATE - TO_DATE('20220101','YYYYMMDD')) AS "���� ��¥"
FROM
    DUAL;
    
-- �Ϲ� �Լ�
-- NVL(NULL�� ���Ե� �÷�, �ٲ� ��) : NULL �̸� 0 �Ǵ� �ٸ� ������ �ٲٴ� ���� �Լ�
SELECT
    ENAME
   ,SALARY
   ,COMMISSION
   ,COMMISSION                      AS "���ʽ�"
   ,SALARY * 12 + NVL(COMMISSION,0) AS "����"
FROM
    EMPLOYEE
ORDER BY
    JOB;
    
-- NVL2(NULL�� ���Ե� �÷�, ���� NULL�� �ƴ� �� ��� ��, ���� NULL�϶� ��� ��)
SELECT
    ENAME
   ,SALARY
   ,COMMISSION
   ,NVL2(COMMISSION,SALARY * 12 + COMMISSION,SALARY * 12)
FROM
    EMPLOYEE
ORDER BY
    JOB;
    
-- NULLIF(��1, ��2) : ��1, 2�� �����ϸ� NULL ���, �ƴϸ� ��1 ���
SELECT
    NULLIF('A','A')
   ,NULLIF('A','B')
FROM
    DUAL;
    
-- ����Ŭ���� IF/ELSE ���
-- DECODE(����÷�, ���ǰ�, ��°�, ���ǰ�, ��°�,.....DEFAULT)
-- DEFAULT : �ƹ��͵� �ƴҶ� ����Ʈ�� ����϶�� ǥ��
SELECT
    ENAME
   ,DNO
   ,DECODE(DNO,10,'ȸ���',20,'������'
           ,30,'������',40,'���','DEFAULT') AS "�μ��̸�"
FROM
    EMPLOYEE
ORDER BY
    DNO;
    
-- �� �ٸ� IF / ELSE IF/ ELSE ���
SELECT
    ENAME
   ,DNO
   ,CASE
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
    ENAME
   ,ENO
   ,NVL(MANAGER,0)
FROM
    EMPLOYEE;
    
-- �������� 7) DECODE Ȥ�� CASE WHEN �Լ��� ���޿� ���� �޿��� �λ��ϵ��� �Ͻÿ�.
-- ������ 'ANALYST'�� ����� 200
-- ������ 'SALESMAN'�� ����� 180
-- ������ 'MANAGER'�� ����� 150
-- ������ 'CLERK'�� ����� 100
SELECT
    JOB
   ,SALARY
   ,NVL(DECODE(JOB,'ANALYST',SALARY + 200,'SALESMAN',SALARY + 180
               ,'MANAGER',SALARY + 150,'CLERK',SALARY + 100,'DEFAULT'
               ,SALARY),SALARY) AS �����޿�
FROM
    EMPLOYEE
ORDER BY
    JOB;

SELECT
    JOB
   ,SALARY
   ,NVL(
        CASE
            WHEN JOB = 'ANALYST'
            THEN SALARY + 200
            WHEN JOB = 'SALESMAN'
            THEN SALARY + 180
            WHEN JOB = 'MANAGER'
            THEN SALARY + 150
            WHEN JOB = 'CLERK'
            THEN SALARY + 100
        END
       ,SALARY) AS �����޿�
FROM
    EMPLOYEE
ORDER BY
    JOB;
    
-- �ִ�, �ּ� �Լ�
-- MAX : �׷��� �ִ밪�� ��ȯ
-- MIN : �׷��� �ּҰ��� ��ȯ
SELECT
    SUM(SALARY)        AS "�޿� �Ѿ�"
   ,TRUNC(AVG(SALARY)) AS "�޿� ���"
   ,MAX(SALARY)        AS "�ִ� �޿�"
   ,MIN(SALARY)        AS "�ּ� �޿�"
FROM
    EMPLOYEE;
    
-- �������� 8) �ֱٿ� �Ի��� ����� ���� �������� �Ի��� ����� �Ի��� ����ϱ�
SELECT
    MAX(HIREDATE) AS "�ֱ� �Ի���"
   ,MIN(HIREDATE) AS "���� ������ �Ի���"
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
    COUNT(ENO)
   ,MIN(SALARY)
   ,MAX(SALARY) -- �׷��Լ� ���� �� ������ ����Ű�� ������
--    ENAME, -- �Ϲ� �÷��� ������ ������ ��

FROM
    EMPLOYEE;
    
-- GROUP BY �÷��� : �׷캰 ����� ������
-- GROUP BY �÷���  => SELECT �÷��� : GROUP BY �ڿ� ���Ե� �÷��� SELECT ����
-- �׷��Լ� : �ϳ��� ������� ������(COUNT, MAX, SUM)
-- ����) �μ����� ��� �޿��� �˰� ���� ��
SELECT
    DNO                AS "�μ���ȣ"
   ,TRUNC(AVG(SALARY)) AS "��� �޿�"
FROM
    EMPLOYEE
GROUP BY
    DNO; -- �μ���ȣ�� �׷���
    
-- ��������) �μ���, ���޺� �ѱ޿��� ����Ͽ� ����� �ּ���
-- ��, �μ���, ���޺��� �������� ����
SELECT
    DNO
   ,JOB
   ,SUM(SALARY) AS "�� �޿�"
FROM
    EMPLOYEE
GROUP BY
    DNO
   ,JOB
ORDER BY
    DNO
   ,JOB;
    
-- GOURP BY ���� ���� �ɱ�
-- HAVING ����
-- �μ����� �ִ�޿��� ���ϴµ� 3000�̻� �Ǵ� �͸� ����� �ּ���
SELECT
    DNO
   ,MAX(SALARY) AS "�ִ� �޿�"
FROM
    EMPLOYEE
GROUP BY
    DNO
HAVING
    MAX(SALARY) > 3000;
    
-- ��������) MANAGER�� �����ϰ� �޿� �Ѿ��� 5000 �̻��� ���޺� �޿� �Ѿ�(SUM) ���ϱ�
-- ��, �޿� �Ѿ��� �������� ������������ �����ϼ���
SELECT
    JOB         AS ����
   ,SUM(SALARY) AS �޿��Ѿ�
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
    MAX(SALARY)        AS �ְ��
   ,MIN(SALARY)        AS ������
   ,SUM(SALARY)        AS �Ѿ�
   ,TRUNC(AVG(SALARY)) AS ��ձ޿�
FROM
    EMPLOYEE;
    
-- �������� 10) �� ��� ���� �������� �޿� �ְ��, ������, �Ѿ� �� ��վ��� ����ϼ���.
-- �÷��� ��Ī : �ְ��, ������, �Ѿ�, ��ձ޿�
SELECT
    JOB
   ,MAX(SALARY)        AS �ְ��
   ,MIN(SALARY)        AS ������
   ,SUM(SALARY)        AS �Ѿ�
   ,TRUNC(AVG(SALARY)) AS ��ձ޿�
FROM
    EMPLOYEE
GROUP BY
    JOB;
    
-- �������� 11) COUNT(*) �Լ��� �̿��Ͽ� ��� ������ ������ ��� ���� ����ϼ���.
SELECT
    JOB
   ,COUNT(*)
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
    MAX(SALARY)               AS �޿��ְ��
   ,MIN(SALARY)               AS �޿�������
   ,MAX(SALARY) - MIN(SALARY) AS ����
FROM
    EMPLOYEE;
    
-- �������� 14) ���޺� ����� ���� �޿��� ����ϼ���.
-- �����ڸ� �� �� ���� ��� �� ���� �޿��� 2000 �̸��� �׷��� ���ܽ�Ű��
-- ����� �޿��� ���� ������������ �����Ͽ� ����ϼ���
SELECT
    JOB
   ,MIN(SALARY) AS �޿�������
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
    DNO                  AS �μ���ȣ
   ,COUNT(*)             AS �����
   ,ROUND(AVG(SALARY),2) AS ��ձ޿�
FROM
    EMPLOYEE
GROUP BY
    DNO;
    
-- �������� 8) �� �μ��� ���� �μ��̸�, ������, �����
-- �μ��� ����� ��� �޿��� ����ϼ���(DECODE, CASE WHEN)
-- �÷���Ī �μ��̸�, ������, �����, ��ձ޿�
SELECT
    DNO
   ,DECODE(DNO,10,'ACCOUNTING',20,'RESEARCH'
           ,30,'SALES',40,'OPERATIONS','DEFAULT') AS �μ��̸�
   ,DECODE(DNO,10,'NEW YORK',20,'DALLAS'
           ,30,'CHICAGO',40,'BOSTON','DEFAULT')   AS ������
   ,COUNT(*)                               AS �����
   ,ROUND(AVG(SALARY))                     AS ��ձ޿�
FROM
    EMPLOYEE
GROUP BY
    DNO
   ,DECODE(DNO,10,'ACCOUNTING',20,'RESEARCH'
           ,30,'SALES',40,'OPERATIONS','DEFAULT')
   ,DECODE(DNO,10,'NEW YORK',20,'DALLAS'
           ,30,'CHICAGO',40,'BOSTON','DEFAULT');
-----------------------------------------------------------
SELECT
    DNO
   ,CASE
        WHEN DNO = 10
        THEN 'ACCOUNTING'
        WHEN DNO = 20
        THEN 'RESEARCH'
        WHEN DNO = 30
        THEN 'SALES'
        WHEN DNO = 40
        THEN 'OPERATIONS'
        ELSE 'DEFAULT'
     END                AS �μ��̸�
   ,CASE
        WHEN DNO = 10
        THEN 'NEW YORK'
        WHEN DNO = 20
        THEN 'DALLAS'
        WHEN DNO = 30
        THEN 'CHICAGO'
        WHEN DNO = 40
        THEN 'BOSTON'
        ELSE 'DEFAULT'
     END                AS ������
   ,COUNT(*)           AS �����
   ,ROUND(AVG(SALARY)) AS ��ձ޿�
FROM
    EMPLOYEE
GROUP BY
    DNO
   ,CASE
            WHEN DNO = 10
            THEN 'ACCOUNTING'
            WHEN DNO = 20
            THEN 'RESEARCH'
            WHEN DNO = 30
            THEN 'SALES'
            WHEN DNO = 40
            THEN 'OPERATIONS'
            ELSE 'DEFAULT'
    END
   ,CASE
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
    A.DNO
   ,A.DNAME
   ,A.LOC
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
        B.DNO = A.DNO
    AND B.ENO = 7788;
    
    -- 2022-05-03 �ǽ�
-- �� ����(Cartesian Product) : ī���׽þ� �� *****
-- DEPARTMENT �Ǽ� : 4�� X EMPLOYEE �Ǽ� : 14�� => 4 X 14 = 56
-- 10�� * 100�� = 1000�� => ȿ���� �������� Ȥ�� ��ǻ�� ����
SELECT
    *
FROM
    DEPARTMENT A
   ,EMPLOYEE   B;
    
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
    B.ENAME AS ����
   ,A.DNO   AS �μ���ȣ
   ,A.DNAME AS �μ��̸�
   ,A.LOC   AS �μ���ġ
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
    A.DNO = B.DNO;
    
-- ���� 2) �����ȣ�� 7499, 7900�� ������� �Ҽӵ� �μ����� ��� ���
SELECT
    *
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
        B.DNO = A.DNO
    AND B.ENO IN ( 7499,7900 );
    
-- ���� 3) �����ȣ�� 7500 ~ 7700 ���̿� �ִ� ������� �Ҽӵ� �μ������� ����ϵ�
-- �μ��̸��� SALES�� ��Ʈ�� ����ϼ���

SELECT
    *
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
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
    ENAME
   ,DNAME
   ,SALARY
   ,GRADE
FROM
    SALGRADE   A
   ,DEPARTMENT C
   ,EMPLOYEE   B
WHERE
        B.DNO = C.DNO
    AND SALARY BETWEEN LOSAL AND HISAL;
    
-- Ư�����) SELF ����
-- ������̺��� MANAGER�÷�(�� ����� �Ŵ����� ���)
SELECT
    MAN.ENO   AS "������ȣ"
   ,MAN.ENAME AS "����"
   ,EMP.ENAME AS "�Ŵ���"
   ,EMP.ENO   AS "�Ŵ��� �����ȣ"
FROM
    EMPLOYEE EMP
   ,EMPLOYEE MAN
WHERE
        MAN.MANAGER = EMP.ENO
    AND MAN.ENAME LIKE 'SMITH%';

SELECT
    *
FROM
    EMPLOYEE EMP
   ,EMPLOYEE MAN
WHERE
    MAN.MANAGER = EMP.ENO;
    
-- Ư�����) OUTER ����
-- = ���� ���� �÷��� �����ؼ� �����͸� �����ִµ�
-- NULL���� = ������ �ȵǱ� ������ �����Ϳ��� ���ܵ�
-- NULL���� �ش��ϴ� �ٸ� �÷��� ������� �� ���� ����
SELECT
    EMP.ENAME AS ����
   ,EMP.ENO
   ,MAN.ENAME AS �Ŵ���
   ,MAN.ENO
FROM
    EMPLOYEE EMP
   ,EMPLOYEE MAN
WHERE
    EMP.MANAGER = MAN.ENO (+); -- (+)NULL ���� ���� ��µ�
    
-- �������� 1)
-- ������ �̿��ؼ� SCOTT ����� �μ���ȣ�� �μ��̸��� ����Ͻÿ�.
SELECT
    B.ENAME AS �̸�
   ,A.DNO   AS �μ���ȣ
   ,A.DNAME AS �μ��̸�
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
        B.DNO = A.DNO
    AND B.ENAME = 'SCOTT';
    
-- �������� 2)
-- ��� ����� ����̸��� �� ����� �Ҽӵ� �μ��̸��� �������� ����Ͻÿ�
SELECT
    B.ENAME AS �̸�
   ,A.DNAME AS �μ��̸�
   ,A.LOC   AS ����
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
    A.DNO = B.DNO;
    
-- �������� 3) 10�� �μ��� ���ϴ� ����� ���� ���ް� �������� ����Ͻÿ�.
SELECT
    B.ENAME AS �̸�
   ,B.JOB   AS ����
   ,B.DNO   AS �μ���ȣ
   ,A.LOC   AS ����
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
        A.DNO = B.DNO
    AND B.DNO = 10;
    
-- �������� 4) Ŀ�̼��� �޴� ��� ����� �̸�, �μ��̸�, �������� ����Ͻÿ�.
SELECT
    B.ENAME      AS �̸�
   ,B.COMMISSION AS Ŀ�̼�
   ,A.DNAME      AS �μ��̸�
   ,A.LOC        AS ����
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
        A.DNO = B.DNO
    AND B.COMMISSION > 0;
    
-- �������� 5) = ���ΰ� ���ϵ�ī��(%)�� ����Ͽ� �̸��� A�� ���Ե� ��� �����
-- �̸��� �μ����� ����Ͻÿ�
SELECT
    B.ENAME AS �̸�
   ,A.DNAME AS �μ��̸�
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
        A.DNO = B.DNO
    AND B.ENAME LIKE '%A%';
    
-- �������� 6) NEW YORK�� �ٹ��ϴ� ��� ����� �̸�, ����, �μ���ȣ, �μ����� ���
SELECT
    B.ENAME AS �̸�
   ,B.JOB   AS ����
   ,B.DNO   AS �μ���ȣ
   ,A.DNAME AS �μ��̸�
   ,A.LOC   AS ����
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
        A.DNO = B.DNO -- ����� �κ� ��Ī�� ���� �ڷḦ ������
    AND A.LOC LIKE 'NEW YORK';
    
-- DDL (Data Definition Language) : ������ ���Ǿ�
-- ���̺� �����, ���̺� �����ϱ�, �÷� �����ϱ�, �÷� �߰��ϱ�

-- ���̺� �����
-- ��) �μ������� �����ϱ� ���� ���̺� �����ϱ�
-- ���̺�� : TB_DEPARTMENT
CREATE TABLE TB_DEPARTMENT (
    DNO   NUMBER(2)
    ,DNAME VARCHAR2(20)
    ,LOC   VARCHAR2(20)
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
    DNO   NUMBER(2)
    ,DNAME VARCHAR2(14)
    ,LOC   VARCHAR2(13)
);

DESC DEPT;
-- �������� 10) ���� ǥ�� ��õ� ��� EMP ���̺��� �����Ͻÿ�.
-- �÷��� ������ Ÿ�� ũ��
-- ENO     NUMBER    4
-- ENAME   VARCHAR2  10
-- DNO     NUMBER    2
CREATE TABLE EMP (
    ENO   NUMBER(4)
    ,ENAME VARCHAR2(10)
    ,DNO   NUMBER(2)
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
            ENO
           ,ENAME
           ,SALARY
           ,DNO
        FROM
            EMPLOYEE;
-- �߰������� �÷� ���� �� �÷��� ���氡��
CREATE TABLE EMPLOYEE2 (
    ENO_ID
    ,NAME
    ,SAL
    ,DEPT_ID
)
    AS
        SELECT
            ENO
           ,ENAME
           ,SALARY
           ,DNO
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
    10
   ,'ACCOUNTING'
   ,'NEW YORK'
);

SELECT
    *
FROM
    DEPT_COPY;
-- �߰��� �����͸� �����ݿ�
COMMIT;

-- DEPT_COPY(������ ����) : VALUES(�����ʹ� DEPT_COPY�� �����ͼ����� ������)
INSERT INTO DEPT_COPY (
    DNO
    ,LOC
    ,DNAME
) VALUES (
    20
   ,'DALLAS'
   ,'RESEARCH'
);

INSERT INTO DEPT_COPY (
    DNO
    ,LOC
    ,DNAME
) VALUES (
    30
   ,'SALES'
   ,'CHICAGO'
);

INSERT INTO DEPT_COPY (
    DNO
    ,LOC
    ,DNAME
) VALUES (
    40
   ,'OPERATIONS'
   ,'BOSTION'
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
    DNO
    ,DNAME
) VALUES (
    50
   ,'SALES'
);

SELECT
    *
FROM
    DEPT_COPY;
-- 2) ��������� NULL �߰�
INSERT INTO DEPT_COPY VALUES (
    60
   ,'OPERATIONS'
   ,NULL
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
    ENO
    ,ENAME
    ,JOB
    ,HIREDATE
    ,DNO
) VALUES (
    7000
   ,'CANDY'
   ,'MANAGER'
   ,SYSDATE
   ,10
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
    DNAME = 'JAVA'
,LOC = 'SEOUL'
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
    DNO IN ( 20,30 );

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
    33
   ,'�̱���'
   ,'PROGRAMER'
   ,NULL
   ,SYSDATE
   ,10000
   ,1000
   ,10
);

-- �÷� ����� ���� ��ųʸ�
SELECT
    *
FROM
    USER_TAB_COLUMNS
ORDER BY
    TABLE_NAME
   ,COLUMN_ID;

-- �������� 3) �ٸ������ EMP_INSERT(�ӽ� �������̺�) ���̺� SYSDATE�� �̿��Ͽ�
-- �Ի����� ������ �Է��ϼ���
INSERT INTO EMP_INSERT VALUES (
    21
   ,'ȫ�浿'
   ,'PROGRAMER'
   ,NULL
   ,SYSDATE - 1
   ,10000
   ,1000
   ,10
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
    ( JOB
    ,SALARY ) = (
        SELECT
            JOB
           ,SALARY
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
    DNO IN ( 10,40 );
    
-- �������� 10) DEPT_COPY ���̺��� �μ�����(DNAME)�� 'SALES'�̸�
-- ������(LOC)�� 'SEOUL'�̶�� �����ϰ�, �ƴϸ�, 'BUSAN'���� �����Ͻÿ�.
UPDATE DEPT_COPY
SET
    LOC = DECODE(DNAME,'SALES','SEOUL','BUSAN');
    
    -- 2022-05-04 �����͹��Ἲ(PK/FK) �ǽ�
-- ��������(Constraint)
-- ���̺��� �÷��� ��ȿ���� �ʴ� ���� �ɷ����� ���� �ɾ��ִ� ��
-- ���Ἲ ��������

--1) NOT NULL : NULL ���� ���� �� ���� ��
CREATE TABLE CUSTOMER (
    ID      VARCHAR2(20) NOT NULL
    ,PWD     VARCHAR2(20) NOT NULL
    ,NAME    VARCHAR2(20) NOT NULL
    ,PHONE   VARCHAR2(30)
    ,ADDRESS VARCHAR2(100)
);

-- NOT NULL INSERT �׽�Ʈ
INSERT INTO CUSTOMER VALUES (
    NULL
   ,NULL
   ,NULL
   ,'010-1111-1111'
   ,'BUSAN'
); -- ������������ ���� ������ �Ͼ, ���������� NOT NULL�� �۵�

-- 2) UNIQUE : ���̺��� �÷��� �����Ͱ� ������ ������ ���� �� �� �ְ� ��
-- ��, �����Ͱ� �ߺ� �Ұ�(��, NULL�� �������ǿ� ���ݵ��� ����)
CREATE TABLE CUSTOMER2 (
    ID      VARCHAR2(20) UNIQUE
    ,PWD     VARCHAR2(20) NOT NULL
    ,NAME    VARCHAR2(20) NOT NULL
    ,PHONE   VARCHAR2(30)
    ,ADDRESS VARCHAR2(100)
);

-- UNIQUE �׽�Ʈ
INSERT INTO CUSTOMER2 VALUES (
    '1'
   ,'1111'
   ,'ȫ�浿'
   ,'010-1111-1111'
   ,'BUSAN'
);

INSERT INTO CUSTOMER2 VALUES (
    '1'
   ,'1111'
   ,'ȫ�浿'
   ,'010-1111-1111'
   ,'BUSAN'
); -- ������ �����ͷ� ���Ἲ ���� ���ǿ� ����ȴٴ� ������ ��

-- 3) CONSTRAINT : �������ǿ� �̸��� ������ �� ����
-- �ַ� ������������ ���
CREATE TABLE CUSTOMER3 (
    ID      VARCHAR2(20)
        CONSTRAINT UK_ID UNIQUE
    ,PWD     VARCHAR2(20) NOT NULL
    ,NAME    VARCHAR2(20) NOT NULL
    ,PHONE   VARCHAR2(30)
    ,ADDRESS VARCHAR2(100)
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
    ID      VARCHAR2(20)
    ,PWD     VARCHAR2(20) NOT NULL
    ,NAME    VARCHAR2(20) NOT NULL
    ,PHONE   VARCHAR2(30)
    ,ADDRESS VARCHAR2(100)
    ,CONSTRAINT PK_ID PRIMARY KEY ( ID )
);

-- PRIMARY KEY �׽�Ʈ
INSERT INTO CUSTOMER4 VALUES (
    NULL
   ,'1111'
   ,'ȫ�浿'
   ,'010-1111-1111'
   ,'BUSAN'
);

INSERT INTO CUSTOMER4 VALUES (
    '1'
   ,'1111'
   ,'ȫ�浿'
   ,'010-1111-1111'
   ,'BUSAN'
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
        CONSTRAINT PK_ENO PRIMARY KEY
    ,ENAME VARCHAR2(10)
    ,JOB   VARCHAR2(9)
    ,DNO   NUMBER(2)
        CONSTRAINT FK_DNO2
            REFERENCES DEPARTMENT
);
-- FK �׽�Ʈ
INSERT INTO EMP_SECOND (
    ENO
    ,ENAME
    ,DNO
) VALUES (
    0000
   ,'�̼���'
   ,50
);

-- 6) DEFAULT ��������
-- �÷��� �����Ͱ� �ƹ��� ���� �Էµ��� �ʾ��� �� ����Ʈ�� ������ ���� �Էµ�
CREATE TABLE EMP_THIRD (
    ENO    NUMBER(4)
        CONSTRAINT PK_ENO2 PRIMARY KEY
    ,ENAME  VARCHAR2(10)
    ,SALARY NUMBER(7,2) DEFAULT 1000
);

-- DEFAULT �׽�Ʈ
INSERT INTO EMP_THIRD (
    ENO
    ,ENAME
) VALUES (
    8000
   ,'ȫ�浿'
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
    B.TABLE_NAME
   ,A.COLUMN_NAME
   ,B.CONSTRAINT_TYPE
FROM
    USER_CONS_COLUMNS A
   ,USER_CONSTRAINTS  B
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
        ENO
       ,ENAME
       ,DNO
       ,JOB
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
        ENO
       ,ENAME
       ,JOB
       ,MANAGER
       ,DNO
    FROM
        EMPLOYEE;
        
-- �������) ������ ������ �� ����� ���� ������ ��ȸ�ϴ� ��ųʸ�
SELECT
    VIEW_NAME
   ,TEXT
FROM
    USER_VIEWS;
    
-- �׷��Լ��� �� SELECT ���� ��(VIEW)�� �����
CREATE OR REPLACE VIEW VW_EMP_SALARY AS
    SELECT
        DNO
       ,SUM(SALARY)        AS "�ѱ޿�"
       ,TRUNC(AVG(SALARY)) AS "��ձ޿�"
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
        ENO
       ,ENAME
       ,DNO
    FROM
        EMPLOYEE
    WHERE
        DNO = 20;
-- 2) �̹� �����Ǿ� �ִ� ��� �信 ���� �޿� ���� ����ϵ��� ����
-- �׳� ����� �� ����
CREATE OR REPLACE VIEW VW_TEST_EMP AS
    SELECT
        ENO
       ,ENAME
       ,DNO
       ,SALARY
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
    SQ_DEPT.NEXTVAL
   , -- 1���� �����ϸ鼭 �����ϸ� ��� 1�� �����Ͽ� ��
   'ACCOUNTING'
   ,'NEW YORK'
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
        DNAME
    ,LOC
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
    EMPNO    NUMBER(4) PRIMARY KEY
    ,ENAME    VARCHAR2(10)
    ,HIREDATE DATE
);
-- INSERT���� �̿��ؼ� EMPNO�� ���������� �߰� �Ͻÿ�.
INSERT INTO EMP01 VALUES (
    SQ_EMP.NEXTVAL
   ,'ȫ�浿'
   ,SYSDATE
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
CREATE USER KBS IDENTIFIED BY 1234 DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE
TEMP;
-- �������� 02) 1������ ������ ������ CONNECT, RESOURCE ����(��)�� �ο�
GRANT CONNECT,RESOURCE TO KBS;

-- 2022-05-06
-- ��������(SUBQUERY) ****
-- SELECT �ȿ� �Ǵٸ� SELECT�� ���Ե� ����
-- ����) SELECT �÷�����Ʈ
--       FROM  ���̺��
--       WHERE �÷��� = (SELECT ��)
-- ��) SCOTT�� ������ �μ����� �ٹ��ϴ� ��� ����ϱ�
-- �������� : ������ 1�Ǹ� ���ؾ���
SELECT
    ENAME
   ,DNO
FROM
    EMPLOYEE
WHERE
    DNO = (
        SELECT
            DNO
        FROM
            EMPLOYEE
        WHERE
            ENAME = 'SCOTT'
    );
    
-- ���� 1) �ּ� �޿��� �޴� ����� �̸�, ������, �޿� ����ϱ�
SELECT
    ENAME
   ,JOB
   ,SALARY
FROM
    EMPLOYEE
WHERE
    SALARY = (
        SELECT
            MIN(SALARY)
        FROM
            EMPLOYEE
    );
    
-- ���� ������ HAVING �� ����ϱ�
SELECT
    DNO
   ,MIN(SALARY) AS �ּұ޿�
FROM
    EMPLOYEE
GROUP BY
    DNO
HAVING
    MIN(SALARY) > (
        SELECT
            MIN(SALARY)
        FROM
            EMPLOYEE
        WHERE
            DNO = 30
    );
    
-- ������ SUBQUERY
-- IN / EXISTS ������ ��
-- ������ �����
-- ���� : EXISTS �ξ� ����
-- ( ��ȸ���� : �������� ���� ���� -> ���������� ���� ���ϴٰ� �����ϸ� BREAK ��������)

-- ���� �� ��������
-- ��)
-- IN ��� ��
SELECT
    ENO
   ,ENAME
FROM
    EMPLOYEE
WHERE
    SALARY IN (
        SELECT
            MIN(SALARY)
        FROM
            EMPLOYEE
        GROUP BY
            DNO
    );

-- EXISTS ��� ��
SELECT
    ENO
   ,ENAME
   ,SALARY
   ,DNO
FROM
    EMPLOYEE A
WHERE
    EXISTS (
        SELECT
            1 -- ������ �� ������ �Ǵ��ϹǷ� ���� �÷��� �ȳְ� ���� 1�� �־��൵ ������
        FROM
            EMPLOYEE
        GROUP BY
            DNO
        HAVING
            A.SALARY = MIN(SALARY)
    );
    
-- ���� 1) �����ȣ�� 7788�� ����� ��� ������ ���� ����� ǥ���Ͻÿ�.
SELECT
    ENAME
   ,ENO
   ,JOB
FROM
    EMPLOYEE
WHERE
        JOB = (
            SELECT
                JOB
            FROM
                EMPLOYEE
            WHERE
                ENO = '7788'
        )
    AND ENO NOT LIKE '7788';
    
-- ���� 2) �ּ� �޿��� �޴� ����� �̸�, ��� ���� �� �޿��� ǥ���Ͻÿ�
-- (�׷��Լ� ���)
SELECT
    ENAME
   ,JOB
   ,SALARY
FROM
    EMPLOYEE
WHERE
    SALARY = (
        SELECT
            MIN(SALARY)
        FROM
            EMPLOYEE
    );
    
-- ���� 3) ��� �޿��� ���� ���� ����� ��� ������ ã�� ���ް� ��� �޿��� ǥ���Ͻÿ�
-- ����� ����
SELECT
    JOB
   ,ROUND(AVG(SALARY))
FROM
    EMPLOYEE
GROUP BY
    JOB
HAVING
    ROUND(AVG(SALARY)) = (
        SELECT
            ROUND(MIN(AVG(SALARY)))
        FROM
            EMPLOYEE
        GROUP BY
            JOB
    );

-- 2022-05-06 ��������
-- ���� 5) �� �μ��� �ּ� �޿��� �޴� ����� �̸�, �޿�, �μ���ȣ�� ǥ���Ͻÿ�.
-- ��Ʈ : IN ��������
SELECT
    ENAME
   ,SALARY
   ,DNO
FROM
    EMPLOYEE
WHERE
    SALARY IN (
        SELECT
            MIN(SALARY)
        FROM
            EMPLOYEE
        GROUP BY
            DNO
    );

-- ���� 6) ���������� ���� ����� �̸��� ǥ���Ͻÿ�.
SELECT
    ENAME
FROM
    EMPLOYEE
WHERE
    ENO NOT IN (
        SELECT DISTINCT
            MANAGER
        FROM
            EMPLOYEE
        WHERE
            MANAGER IS NOT NULL -- NULL ���� ���ԵǸ� �� �� �ȵ�
    );

-- ���� 7) ���������� �ִ� ����� �̸��� ǥ���Ͻÿ�.
SELECT
    ENAME
FROM
    EMPLOYEE
WHERE
    ENO IN (
        SELECT DISTINCT
            MANAGER
        FROM
            EMPLOYEE
    );

-- ���� 8) BLAKE�� ������ �μ��� ���� ����� �̸��� �Ի����� ǥ���ϴ� ���Ǹ�
-- �ۼ��Ͻÿ�.( ��, BLAKE�� �����Ͻÿ�. )

SELECT
    ENAME
   ,HIREDATE
   ,DNO
FROM
    EMPLOYEE
WHERE
        DNO = (
            SELECT
                DNO
            FROM
                EMPLOYEE
            WHERE
                ENAME = 'BLAKE'
        )
    AND ENAME NOT LIKE 'BLAKE';
    
-- ���ν��� ȣ��(���ν����� ���ǵ� �־����)
CALL PL_TEST('�ؿܺ�','���굿');
    
-- �Լ� ȣ��(�Լ��� ���ǵ� �־����)
SELECT
    FN_TEST02(50)
FROM
    DUAL;
    
    -- 2022-05-06 SQL Ʃ��
-- SQL Ʃ��
-- SQL ����Ǵ� ����
-- 1��) FROM EMPLOYEE
-- 2��) WHERE ENO = 7788 ( �̰��� ������ �Ŵ°� �ӵ��� ���� )
-- 3��) GROUP BY DNO
-- 4��) HAVING�� ( 
-- 5��) SELECT DNO
-- 6��) ORDER BY ( ��ȸ �ӵ� ���� )
SELECT
    *
FROM
    EMPLOYEE
WHERE
    ENO = 7788
GROUP BY
    DNO
ORDER BY
    DNO;
    
-- �ǻ� �÷� : ROWNUM
SELECT
    ROWNUM
FROM
    EMPLOYEE;