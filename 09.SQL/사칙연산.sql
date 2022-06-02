--��Ģ����
--SELECT ���� �÷� * 12 ��Ģ������ ����
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
    ENAME                            AS �̸�,
    SALARY                           AS ����,
    JOB                              AS ����,
    DNO,
    NVL(COMMISSION, 0)               AS ���ʽ�,
    SALARY * 12                      AS ����,
    SALARY * 12 + NVL(COMMISSION, 0) AS ��������
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

--DISTINCT : ��°������ �ߺ��� �����ϴ� ��ɾ�
SELECT DISTINCT
    DNO AS �μ���ȣ
FROM
    EMPLOYEE;

--�׽�Ʈ��, ���� ���� ���� ���̺� �Ұ�
--���̺�� : DUAL
DESC DUAL;

SELECT
    10 * 4 / 3
FROM
    DUAL;

--���� �ð�, ��¥ ����ϴ� �����Լ�
--DEPARTMENT�� ������ �ִ� ������ ������ŭ ����
SELECT
    SYSDATE
FROM
    DEPARTMENT;
--DUAL : �ѰǸ� �̰� ������ ���
SELECT
    SYSDATE
FROM
    DUAL;

--���� : ���� �˻�
--1500 �̻��� SALARY�� �޴� ������� �˻�
-- = : ����, > : ~���� ŭ, < : ~���� ����, <> : ���� ����
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SALARY >= 1500;

--���� 1) ����(EMPLOYEE) ���̺��� �μ���ȣ�� 20���� ū ������ ��� ����ϼ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
    DNO >= 20;

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

--������ 'MANAGER'�� ����� �����ϰ� ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
    NOT JOB = 'MANAGER';

--���� 5) �޿��� 1000���� 1500������ ����� ����ϼ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
        1000 <= SALARY
    AND SALARY <= 1500;

--���� 6) �޿��� 1000�̸��̰ų� 1500 �ʰ��� ����� ����ϼ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
    NOT ( 1000 <= SALARY
          AND SALARY <= 1500 );
    --WHERE SALARY < 1000 OR SALARY > 1500;

--���� 7) COMMISSION�� 300�̰ų�, 500�̰ų�, 1400�� ����� ����ϼ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
    COMMISSION = 300
    OR COMMISSION = 500
    OR COMMISSION = 1400;

--���� �˻�2
SELECT
    *
FROM
    EMPLOYEE
WHERE
        SALARY >= 1000
    AND SALARY <= 1500;
--���� ������ ����
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SALARY BETWEEN 1000 AND 1500;

SELECT
    *
FROM
    EMPLOYEE
WHERE
    SALARY < 1000
    OR SALARY > 1500;
--���� ������ ����
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SALARY NOT BETWEEN 1000 AND 1500;

--���� 8) 1982�⿡ �Ի��� ��� ����ϱ�
--BETWEEN AND �Ἥ ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
    HIREDATE BETWEEN '1982/01/01' AND '1982/12/31';
    --WHERE HIREDATE BETWEEN '82/01/01' AND '82/12/31';

SELECT
    *
FROM
    EMPLOYEE
WHERE
    COMMISSION = 300
    OR COMMISSION = 500
    OR COMMISSION = 1400;
--���� ������ ����
SELECT
    *
FROM
    EMPLOYEE
WHERE
    COMMISSION IN ( 300, 500, 1400 );

--COMMISSION(���ʽ�) 300�� �ƴϰ� 500�� �ƴϰ� 1400�� �ƴ� ���� ���
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

--LIKE ��� �����ؼ� ����
--LIKE 'F%' : F�� �����ϴ� ��� ���ڿ��� ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
    ENAME LIKE 'F%';

--LIKE '%M%' : M�� �����ϴ� ��� ���ڿ��� ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
    ENAME LIKE '%M%';

--LIKE '_A%' : �տ��� �ι�° A�� �����ϴ� ��� ���ڿ��� ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
    ENAME LIKE '_A%';

--���� 9) �̸��� 'N'���� ������ ��� �˻��ϱ�
SELECT
    *
FROM
    EMPLOYEE
WHERE
    ENAME LIKE '%N';

--���� 10) �̸��� ����° ���ڰ� A�� ��� ����ϱ�
SELECT
    *
FROM
    EMPLOYEE
WHERE
    ENAME LIKE '__A%';

--�̸��� 'A'�� ���Ե��� �ʴ� ��� ����� ������ ���
SELECT
    *
FROM
    EMPLOYEE
WHERE
    ENAME NOT LIKE '%A%';

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
    SALARY,
    ENAME;

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
SELECT
    SUBSTR('Oracle mania', 4, 3),
    SUBSTR('Oracle mania', - 1, 1)
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
    SUBSTR(ENAME, - 1, 1) = 'N';
    
--���� 15) 87�⵵�� �Ի��� ��� ǥ���ϱ�
--��� ���̺� : employee
--substr() ����
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SUBSTR(HIREDATE, 1, 2) = '87';
    
--substrb(����÷�(����), ������ġ, ����) : ���� byte �������� ���
--����(1byte) : substr/substrb ��� ����
--�ѱ�(3byte) : substr/substrb ��� �ٸ�

--�����Լ� 5) ���ڿ����� ��� ���� ã�Ƽ� �ε��� ��ȣ ��ȯ
--����Ŭ������ �ε�����ȣ�� 1���� ������
--instr(����÷�(����), ã������, ������ġ, ���° �߰�)
SELECT
    INSTR('Oracle mania', 'a')
FROM
    DUAL;

SELECT
    INSTR('Oracle mania', 'a', 5, 2) --5��°���� �����Ͽ� 2��° �߰ߵ� 'a'�ε����� ��ȯ
FROM
    DUAL;
    
--WHERE ��� ����
SELECT
    *
FROM
    EMP
WHERE
    INSTR(ENAME, 'R', 3, 1) = 3; -- ENAME �÷��� ������ 3��ġ���� �����Ͽ� 1��°�� �߰ߵ� 'R'�� ���Ե� ��ġ�� 3�� �����͸� ��ȯ