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
    
--LIKE '_A%' : �տ��� �ι�° A�� �����ϴ� ��� ���ڿ��� ���
--LIKE '__A%' : �տ��� ����° A�� �����ϴ� ��� ���ڿ��� ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
    ENAME LIKE '_A%';

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

--��Ģ����
--SELECT ���� �÷� * ���� ��Ģ������ ����
SELECT
    ENAME,
    SALARY,
    SALARY * 12
FROM
    EMPLOYEE;

--SELECT ���� �÷� + �ٸ� �÷� => ��� ����
--�÷� + �ٸ��÷�(NULL���� ������) = NULL(�ش� ������)
--SALARY : ����
--SALARY*12 : ����
--COMMISSION : ���ʽ�
--SALARY*12 + COMMISSION(���ʽ�) : ���� 1��ġ ����
--������) ��� ��(COMMISSION)�� NULL�� �־ ����� ���� 1��ġ ������ ������ ����
SELECT
    ENAME,
    SALARY,
    JOB,
    DNO,
    COMMISSION,
    SALARY * 12,
    SALARY * 12 + COMMISSION
FROM
    EMPLOYEE;
       
--������) ��� ��(COMMISSION)�� NULL�� �־ ����� ���� 1��ġ ������ ������ ����
--��������) ��� ��(COMMISSION)�� NVL(COMMISSION, 0)�� ����
--NVL(COMMISSION, 0) : NULL�� ���� 0���� ��ȯ
--NVL(�÷���, ���氪) : �÷����� NULL���� ���氪���� ��ȯ�ϴ� �����Լ�
--AS ��Ī(ALIAS) : ��µǴ� �÷��� ���氡��
SELECT
    ENAME,
    SALARY,
    JOB,
    DNO,
    NVL(COMMISSION, 0),
    SALARY * 12,
    SALARY * 12 + NVL(COMMISSION, 0)
FROM
    EMPLOYEE;
    
--�÷��� ��Ī(ALIAS)�ֱ�       
--""�ȿ� �����ϸ� Ư������, ���� ����
SELECT
    ENAME                            AS "��       ��",
    SALARY                           AS "��$%��",
    JOB                              AS ����,
    DNO,
    NVL(COMMISSION, 0)               AS ���ʽ�,
    SALARY * 12                      AS "��       ��",
    SALARY * 12 + NVL(COMMISSION, 0) AS ��������
FROM
    EMPLOYEE;
-----------------------------------------------------------------
--DISTINCT : ��°������ �ߺ��� �����ϴ� ��ɾ�
SELECT DISTINCT
    DEPTNO AS �μ���ȣ
FROM
    EMP;

-------------------------------------------------------------------
--���� �ð�, ��¥ ����ϴ� �����Լ�
--���̺��� ������ �ִ� ������ ������ŭ ����
SELECT
    SYSDATE
FROM
    DEPARTMENT;

--���� : ���� �˻�
--1500 �̻��� SALARY�� �޴� ������� �˻�
-- = : ����, > : ~���� ŭ, < : ~���� ����, <> : ���� ����
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SALARY >= 1500;

--���ڿ� �˻�
SELECT
    *
FROM
    EMPLOYEE
WHERE
    ENAME = 'SCOTT';

--��¥ ������ �˻�
SELECT
    *
FROM
    EMPLOYEE
WHERE
    HIREDATE <= '1981/01/01';
--------------------------------------------------------------------
--��¥ ������ �����ؼ� ���ڿ��� ����ϴ� ���� �Լ�
--TO_CHAR(�÷���, ��������)
--TO_CHAR(SYSDATE, 'YYYY-MM-DD') : SYSDATE�� 'YYYY-MM-DD' �������� ��ȯ
SELECT
    TO_CHAR(SYSDATE, 'YYYY-MM-DD')
FROM
    DUAL;
    
--'YYYYMMDD' �������� ��ȯ
SELECT
    TO_CHAR(SYSDATE, 'YYYYMMDD')
FROM
    DUAL;
    
--'YYYY/MM/DD' �������� ��ȯ
SELECT
    TO_CHAR(SYSDATE, 'YYYY/MM/DD')
FROM
    DUAL;

--���ڿ��� ��¥ ������ �������� �����ϴ� ���� �Լ�
--TO_DATE(�÷���, ��������)
SELECT
    TO_DATE('2022-04-29 17:10:01', 'YYYY-MM-DD HH24:MI:SS')
FROM
    DUAL;

SELECT
    TO_DATE('2017-05-12 23:59:59', 'YYYY-MM-DD HH24:MI:SS')
FROM
    DUAL;

--�������� :  AND(���ÿ� ��), OR(�� �� �ϳ��� ��), NOT(�ݴ�)
--���� 2) �μ���ȣ�� 10�̰� ������ 'MANAGER'�� ����� ����ϱ�
--DNO : �μ���ȣ
--JOB : ����
--������̺� : EMPLOYEE
SELECT
    *
FROM
    EMPLOYEE
WHERE
        DNO = 10
    AND JOB = 'MANAGER';

--���� 3) �μ���ȣ�� 10�̰ų� ������ 'MANAGER'�� ����� ����ϱ�
SELECT
    *
FROM
    EMPLOYEE
WHERE
    DNO = 10
    OR JOB = 'MANAGER';

--���� 4) 10�� �μ��� �Ҽӵ� ����� �����ϰ� ������ ��� ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
    NOT DNO = 10;

--���� �˻�2
--BETWEEN
SELECT
    *
FROM
    EMPLOYEE
WHERE
        SALARY >= 1000
    AND SALARY <= 1500;
    
--���� ������ ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SALARY BETWEEN 1000 AND 1500;
--NOT BETWEEN
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SALARY < 1000
    OR SALARY > 1500;
    
--���� ������ ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SALARY NOT BETWEEN 1000 AND 1500;
--IN
SELECT
    *
FROM
    EMPLOYEE
WHERE
    COMMISSION = 300
    OR COMMISSION = 500
    OR COMMISSION = 1400;
--���� ������ ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
    COMMISSION IN ( 300, 500, 1400 );

--NOT IN
SELECT
    *
FROM
    EMPLOYEE
WHERE
        COMMISSION <> 300
    AND COMMISSION <> 500
    AND COMMISSION <> 1400;
--���� ������ ����
SELECT
    *
FROM
    EMPLOYEE
WHERE
    COMMISSION NOT IN ( 300, 500, 1400 );
-----------------------------------------------------------
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


-------------------------------------------------------------------
--����Ŭ ���� �Լ�
--�׽�Ʈ��, ���� ���� ���� ���̺� �Ұ�
--���̺�� : DUAL

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
    'Oracle mania',
    UPPER('Oracle mania')   AS �빮��,
    LOWER('Oracle mania')   AS �ҹ���,
    INITCAP('Oracle mania') AS "ù���� �빮��"
FROM
    DUAL;
    
--���� ���̺�
SELECT
    ENAME,
    LOWER(ENAME),
    JOB,
    INITCAP(JOB)
FROM
    EMPLOYEE;
    
--SCOTT ��� �˻��ϱ�
--�÷��� �����͸� �ϰ� ��(��)���ڷ� �����Ͽ� �� ����
--�㳪 ���� ������
SELECT
    ENO,
    ENAME,
    DNO
FROM
    EMPLOYEE
WHERE
    UPPER(ENAME) = 'SCOTT';
    --LOWER(ename) = 'scott';
    --INITCAP(ename) = 'Scott';
    
--�����Լ� 2) ���ڱ��̸� ��ȯ�ϴ� �Լ�
--LENGTH(���ڿ�) : �ѱ�/���� ��� ���� ���ڰ����� ��� ��ȯ
SELECT
    LENGTH('OrAcleMania'),
    LENGTH('����Ŭ�ŴϾ�')
FROM
    DUAL;
    
--�����Լ� 3) ���� ���� �Լ�
--CONCAT : ������ ���� �����ϴ� �Լ�
--���ڿ� || ���ڿ� : ������ ���� ����
SELECT
    'Oracle',
    'mania',
    CONCAT('Oracle', 'mania'),
    'Oracle' || 'mania'
FROM
    DUAL;
    
--�����Լ� 4) ���� ���� �Լ�
--���ڿ� �ڸ���
--substr(����÷�(����), ������ġ, ����) : �ε����� 1���� ����
--������ġ�� -1�� �� ��� ���������� ����
--substrb(����÷�(����), ������ġ, ����) : ���� byte �������� ���
--����(1byte) : substr/substrb ��� ����
--�ѱ�(3byte) : substr/substrb ��� �ٸ�
SELECT
    SUBSTR('Oracle mania', 4, 3),
    SUBSTR('Oracle mania', - 1, 1)
FROM
    DUAL;
    
--�����Լ� 5) ���ڿ����� ��� ���� ã�Ƽ� �ε��� ��ȣ ��ȯ
--����Ŭ������ �ε�����ȣ�� 1���� ������
--instr(����÷�(����), ã������, ������ġ, ���° �߰�)
SELECT
    INSTR('Oracle mania', 'a')
FROM
    DUAL;
    
--5��°���� �����Ͽ� 2��° �߰ߵ� 'a'�ε����� ��ȯ
SELECT
    INSTR('Oracle mania', 'a', 5, 2) 
FROM
    DUAL;
    
--WHERE ��� ����
-- ENAME �÷��� ������ 3��ġ���� �����Ͽ� 1��°�� �߰ߵ� 'R'�� ���Ե� ��ġ�� 3�� �����͸� ��ȯ
SELECT
    *
FROM
    EMP
WHERE
    INSTR(ENAME, 'R', 3, 1) = 3; 