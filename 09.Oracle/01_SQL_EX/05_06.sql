-- 2022-05-06
-- �������� ****
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