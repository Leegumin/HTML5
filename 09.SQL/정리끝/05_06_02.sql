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
SELECT ROWNUM
FROM EMPLOYEE;