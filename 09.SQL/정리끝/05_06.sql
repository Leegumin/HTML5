-- 2022-05-06
-- ��������(SUBQUERY) ****
-- SELECT �ȿ� �Ǵٸ� SELECT�� ���Ե� ����
-- ����) SELECT �÷�����Ʈ
--       FROM  ���̺��
--       WHERE �÷��� = (SELECT ��)
-- ��) SCOTT�� ������ �μ����� �ٹ��ϴ� ��� ����ϱ�
-- �������� : ������ 1�Ǹ� ���ؾ���
SELECT
    ENAME,
    DNO
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
    ENAME,
    JOB,
    SALARY
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
    DNO,
    MIN(SALARY) AS �ּұ޿�
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
    ENO,
    ENAME
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
    ENO,
    ENAME,
    SALARY,
    DNO
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
    ENAME,
    ENO,
    JOB
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
    ENAME,
    JOB,
    SALARY
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
    JOB,
    ROUND(AVG(SALARY))
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
    ENAME,
    SALARY,
    DNO
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
    ENAME,
    HIREDATE,
    DNO
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
    CALL PL_TEST('�ؿܺ�', '���굿');
    
-- �Լ� ȣ��(�Լ��� ���ǵ� �־����)
    SELECT FN_TEST02(50) FROM DUAL;