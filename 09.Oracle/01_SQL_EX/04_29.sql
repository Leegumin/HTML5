--2022-04-29 �ǽ�
--DESC ���̺��
--���̺��� ������ �����ִ� ��ɾ�
--NUMBER : ����, �Ǽ��� ǥ���ϴ� �ڷ���
--NUMBER(4) : 4�� ���� 4�ڸ�
--NUMBER(7,2) : 7�� �����ڸ���, 2�� �Ҽ��ڸ��� 2�ڸ�
--VARCHAR2 : ���ڿ��� ǥ���ϴ� �ڷ���(*)
--VARCHAR2(10) : 10 �ڸ��� 
--UTF8 ���� : ����(�ѱ���) 1BYTE, �ѱ�(�ѱ���) 3BYTE
--DATE : ��¥�� ǥ���ϴ� �ڷ���
DESC EMPLOYEE;

--SELECT ���� �÷� * 12 ��Ģ������ ����
SELECT
    ename,
    salary,
    salary * 12
FROM
    employee;

--SELECT ���� �÷� + �ٸ� �÷� => ��� ����
--�÷� + �ٸ��÷�(NULL���� ������) = NULL(�ش� ������)
--SALARY : ����
--SALARY*12 : ����
--COMMISSION : ���ʽ�
--SALARY*12 + COMMISSION(���ʽ�) : ���� 1��ġ ����
--������) ��� ��(COMMISSION)�� NULL�� �־ ����� ���� 1��ġ ������ ������ ����
SELECT
    ename,
    salary,
    job,
    dno,
    commission,
    salary * 12,
    salary * 12 + commission
FROM
    employee;
       
--������) ��� ��(COMMISSION)�� NULL�� �־ ����� ���� 1��ġ ������ ������ ����
--��������) ��� ��(COMMISSION)�� NVL(COMMISSION, 0)�� ����
--NVL(COMMISSION, 0) : NULL�� ���� 0���� ��ȯ
--NVL(�÷���, ���氪) : �÷����� NULL���� ���氪���� ��ȯ�ϴ� �����Լ�
--AS ��Ī(ALIAS) : ��µǴ� �÷��� ���氡��
SELECT
    ename                            AS �̸�,
    salary                           AS ����,
    job                              AS ����,
    dno,
    nvl(commission, 0)               AS ���ʽ�,
    salary * 12                      AS ����,
    salary * 12 + nvl(commission, 0) AS ��������
FROM
    employee;
--�÷��� ��Ī(ALIAS)�ֱ�       
--""�ȿ� �����ϸ� Ư������, ���� ����
SELECT
    ename                            AS "��       ��",
    salary                           AS "��$%��",
    job                              AS ����,
    dno,
    nvl(commission, 0)               AS ���ʽ�,
    salary * 12                      AS "��       ��",
    salary * 12 + nvl(commission, 0) AS ��������
FROM
    employee;

--DISTINCT : ��°������ �ߺ��� �����ϴ� ��ɾ�
SELECT DISTINCT
    dno AS �μ���ȣ
FROM
    employee;

--�׽�Ʈ��, ���� ���� ���� ���̺� �Ұ�
--���̺�� : DUAL
DESC DUAL;

SELECT
    10 * 4 / 3
FROM
    dual;

--���� �ð�, ¥ ����ϴ� �����Լ�
--DEPARTMENT�� ������ �ִ� ������ ������ŭ ����
SELECT
    sysdate
FROM
    department;
--DUAL : �ѰǸ� �̰� ������ ���
SELECT
    sysdate
FROM
    dual;

--���� : ���� �˻�
--1500 �̻��� SALARY�� �޴� ������� �˻�
-- = : ����, > : ~���� ŭ, < : ~���� ����, <> : ���� ����
SELECT
    *
FROM
    employee
WHERE
    salary >= 1500;

--���� 1) ����(EMPLOYEE) ���̺��� �μ���ȣ�� 20���� ū ������ ��� ����ϼ���
SELECT
    *
FROM
    employee
WHERE
    dno >= 20;

--���ڿ� �˻�
SELECT
    *
FROM
    employee
WHERE
    ename = 'SCOTT';

--��¥ ������ �˻�
SELECT
    *
FROM
    employee
WHERE
    hiredate <= '1981/01/01';

--��¥ ������ �����ؼ� ���ڿ��� ����ϴ� ���� �Լ�
--TO_CHAR(�÷���, ��������)
--TO_CHAR(SYSDATE, 'YYYY-MM-DD') : SYSDATE�� 'YYYY-MM-DD' �������� ��ȯ
SELECT
    to_char(sysdate, 'YYYY-MM-DD')
FROM
    dual;
--'YYYYMMDD' �������� ��ȯ
SELECT
    to_char(sysdate, 'YYYYMMDD')
FROM
    dual;
--'YYYY/MM/DD' �������� ��ȯ
SELECT
    to_char(sysdate, 'YYYY/MM/DD')
FROM
    dual;

--���ڿ��� ��¥ ������ �������� �����ϴ� ���� �Լ�
--TO_DATE(�÷���, ��������)
SELECT
    TO_DATE('2022-04-29 17:10:01', 'YYYY-MM-DD HH24:MI:SS')
FROM
    dual;

SELECT
    TO_DATE('2017-05-12 23:59:59', 'YYYY-MM-DD HH24:MI:SS')
FROM
    dual;

--�������� :  AND(���ÿ� ��), OR(�� �� �ϳ��� ��), NOT(�ݴ�)
--���� 2) �μ���ȣ�� 10�̰� ������ 'MANAGER'�� ����� ����ϱ�
--DNO : �μ���ȣ
--JOB : ����
--������̺� : EMPLOYEE
SELECT
    *
FROM
    employee
WHERE
        dno = 10
    AND job = 'MANAGER';

--���� 3) �μ���ȣ�� 10�̰ų� ������ 'MANAGER'�� ����� ����ϱ�
SELECT
    *
FROM
    employee
WHERE
    dno = 10
    OR job = 'MANAGER';

--���� 4) 10�� �μ��� �Ҽӵ� ����� �����ϰ� ������ ��� ���
SELECT
    *
FROM
    employee
WHERE
    NOT dno = 10;

--������ 'MANAGER'�� ����� �����ϰ� ���
SELECT
    *
FROM
    employee
WHERE
    NOT job = 'MANAGER';

--���� 5) �޿��� 1000���� 1500������ ����� ����ϼ���
SELECT
    *
FROM
    employee
WHERE
        1000 <= salary
    AND salary <= 1500;

--���� 6) �޿��� 1000�̸��̰ų� 1500 �ʰ��� ����� ����ϼ���
SELECT
    *
FROM
    employee
WHERE
    NOT ( 1000 <= salary
          AND salary <= 1500 );
    --WHERE SALARY < 1000 OR SALARY > 1500;

--���� 7) COMMISSION�� 300�̰ų�, 500�̰ų�, 1400�� ����� ����ϼ���
SELECT
    *
FROM
    employee
WHERE
    commission = 300
    OR commission = 500
    OR commission = 1400;

--���� �˻�2
SELECT
    *
FROM
    employee
WHERE
        salary >= 1000
    AND salary <= 1500;
--���� ������ ����
SELECT
    *
FROM
    employee
WHERE
    salary BETWEEN 1000 AND 1500;

SELECT
    *
FROM
    employee
WHERE
    salary < 1000
    OR salary > 1500;
--���� ������ ����
SELECT
    *
FROM
    employee
WHERE
    salary NOT BETWEEN 1000 AND 1500;

--���� 8) 1982�⿡ �Ի��� ��� ����ϱ�
--BETWEEN AND �Ἥ ���
SELECT
    *
FROM
    employee
WHERE
    hiredate BETWEEN '1982/01/01' AND '1982/12/31';
    --WHERE HIREDATE BETWEEN '82/01/01' AND '82/12/31';

SELECT
    *
FROM
    employee
WHERE
    commission = 300
    OR commission = 500
    OR commission = 1400;
--���� ������ ����
SELECT
    *
FROM
    employee
WHERE
    commission IN ( 300, 500, 1400 );

--COMMISSION(���ʽ�) 300�� �ƴϰ� 500�� �ƴϰ� 1400�� �ƴ� ���� ���
SELECT
    *
FROM
    employee
WHERE
        commission <> 300
    AND commission <> 500
    AND commission <> 1400;
--���� ������ ����
SELECT
    *
FROM
    employee
WHERE
    commission NOT IN ( 300, 500, 1400 );

--LIKE ��� �����ؼ� ����
--LIKE 'F%' : F�� �����ϴ� ��� ���ڿ��� ���
SELECT
    *
FROM
    employee
WHERE
    ename LIKE 'F%';

--LIKE '%M%' : M�� �����ϴ� ��� ���ڿ��� ���
SELECT
    *
FROM
    employee
WHERE
    ename LIKE '%M%';

--LIKE '_A%' : �տ��� �ι�° A�� �����ϴ� ��� ���ڿ��� ���
SELECT
    *
FROM
    employee
WHERE
    ename LIKE '_A%';

--���� 9) �̸��� 'N'���� ������ ��� �˻��ϱ�
SELECT
    *
FROM
    employee
WHERE
    ename LIKE '%N';

--���� 10) �̸��� ����° ���ڰ� A�� ��� ����ϱ�
SELECT
    *
FROM
    employee
WHERE
    ename LIKE '__A%';

--�̸��� 'A'�� ���Ե��� �ʴ� ��� ����� ������ ���
SELECT
    *
FROM
    employee
WHERE
    ename NOT LIKE '%A%';

--NULL : �ƹ� ���� ����, ������ ���� ��
--NULL �� ������ �ϸ� NULL�� ��
--IS NULL : NULL�� �����͸� �̱�
SELECT
    *
FROM
    employee
WHERE
    commission IS NULL;
--IS NOT NULL : NULL�� �ƴ� �����͸� �̱�
SELECT
    *
FROM
    employee
WHERE
    commission IS NOT NULL;

--���� 11) COMMISSION�� NULL�� �߿��� SALARY�� 1000���� ū ������ ������ ���
SELECT
    *
FROM
    employee
WHERE
    commission IS NULL
    AND salary >= 1000;

--���� 12) ���� ���̺��� ��¥ ������ ������������ �����Ͽ� ����ϼ���
SELECT
    *
FROM
    employee
ORDER BY
    hiredate DESC;

--���� 13) ������ �޿��� �޴� ����� ���ؼ� �̸��� ������ ���� ������� ����� �ּ���
SELECT
    *
FROM
    employee
ORDER BY
    salary,
    ename;

--����Ŭ ���� �Լ�
--���갡��
SELECT
    10 * 2
FROM
    dual;
--�����Է°���
SELECT
    '�����󳭳�'
FROM
    dual;

--�����Լ� 1) UPPER(���ڿ�)/LOWER(���ڿ�)/INITCAP(���ڿ�)
SELECT
    'Oracle mania',
    upper('Oracle mania')   AS �빮��,
    lower('Oracle mania')   AS �ҹ���,
    initcap('Oracle mania') AS "ù���� �빮��"
FROM
    dual;
    
--���� ���̺�
SELECT
    ename,
    lower(ename),
    job,
    initcap(job)
FROM
    employee;
    
--SCOTT ��� �˻��ϱ�
--�÷��� �����͸� �ϰ� ��(��)���ڷ� �����Ͽ� �� ����
--�㳪 ���� ������
SELECT
    eno,
    ename,
    dno
FROM
    employee
WHERE
    upper(ename) = 'SCOTT';
    --LOWER(ename) = 'scott';
    --INITCAP(ename) = 'Scott';
    
--�����Լ� 2) ���ڱ��̸� ��ȯ�ϴ� �Լ�
--LENGTH(���ڿ�) : �ѱ�/���� ��� ���� ���ڰ����� ��� ��ȯ
SELECT
    length('OrAcleMania'),
    length('����Ŭ�ŴϾ�')
FROM
    dual;
    
--�����Լ� 3) ���� ���� �Լ�
--CONCAT : ������ ���� �����ϴ� �Լ�
--���ڿ� || ���ڿ� : ������ ���� ����
SELECT
    'Oracle',
    'mania',
    concat('Oracle', 'mania'),
    'Oracle' || 'mania'
FROM
    dual;
    
--�����Լ� 4) ���� ���� �Լ�
--���ڿ� �ڸ���
--substr(����÷�(����), ������ġ, ����) : �ε����� 1���� ����
--������ġ�� -1�� �� ��� ���������� ����
SELECT
    substr('Oracle mania', 4, 3),
    substr('Oracle mania', - 1, 1)
FROM
    dual;
    
--���� 14) �̸��� N���� ������ ��� ǥ���ϱ�
--��� ���̺� : employee
--substr() ����
SELECT
    *
FROM
    employee
WHERE
    substr(ename, - 1, 1) = 'N';
    
--���� 15) 87�⵵�� �Ի��� ��� ǥ���ϱ�
--��� ���̺� : employee
--substr() ����
SELECT
    *
FROM
    employee
WHERE
    substr(hiredate, 1, 2) = '87';
    
--substrb(����÷�(����), ������ġ, ����) : ���� byte �������� ���
--����(1byte) : substr/substrb ��� ����
--�ѱ�(3byte) : substr/substrb ��� �ٸ�

--�����Լ� 5) ���ڿ����� ��� ���� ã�Ƽ� �ε��� ��ȣ ��ȯ
--����Ŭ������ �ε�����ȣ�� 1���� ������
--instr(����÷�(����), ã������, ������ġ, ���° �߰�)
SELECT
    instr('Oracle mania', 'a')
FROM
    dual;

SELECT
    instr('Oracle mania', 'a', 5, 2) --5��°���� �����Ͽ� 2��° �߰ߵ� 'a'�ε����� ��ȯ
FROM
    dual;
    
--���� 16) ��� �������� ename �� ��° �ڸ��� 'R'�� ����� �˻��ϴ� �������� �ۼ��ϼ���
--��, instr�� ����ϼ���
SELECT
    *
FROM
    employee
WHERE
    instr(ename, 'R', 3, 1) = 3;