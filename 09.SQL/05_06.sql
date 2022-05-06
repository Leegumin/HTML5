-- 2022-05-06
-- 서브쿼리(SUBQUERY) ****
-- SELECT 안에 또다른 SELECT가 포함된 형태
-- 문법) SELECT 컬럼리스트
--       FROM  테이블명
--       WHERE 컬럼명 = (SELECT 문)
-- 예) SCOTT와 동일한 부서에서 근무하는 사원 출력하기
-- 서브쿼리 : 데이터 1건만 비교해야함
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
    
-- 문제 1) 최소 급여를 받는 사원의 이름, 담당업무, 급여 출력하기
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
    
-- 메인 쿼리에 HAVING 절 사용하기
SELECT
    DNO,
    MIN(SALARY) AS 최소급여
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
    
-- 여러건 SUBQUERY
-- IN / EXISTS 연산자 비교
-- 역할은 비슷함
-- 성능 : EXISTS 훨씬 좋음
-- ( 조회순서 : 메인쿼리 먼저 실행 -> 서브쿼리를 조건 비교하다가 만족하면 BREAK 빠져나옴)

-- 다중 행 서브쿼리
-- 예)
-- IN 사용 예
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

-- EXISTS 사용 예
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
            1 -- 어차피 참 거짓만 판단하므로 굳이 컬럼명 안넣고 숫자 1만 넣어줘도 괜찮음
        FROM
            EMPLOYEE
        GROUP BY
            DNO
        HAVING
            A.SALARY = MIN(SALARY)
    );
    
-- 문제 1) 사원번호가 7788인 사원과 담당 업무가 같은 사원을 표시하시오.
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
    
-- 문제 2) 최소 급여를 받는 사원의 이름, 담당 업무 및 급여를 표시하시오
-- (그룹함수 사용)
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
    
-- 문제 3) 평균 급여가 가장 적은 사원의 담당 업무를 찾아 직급과 평균 급여를 표시하시오
-- 어려운 문제
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

-- 2022-05-06 연습문제
-- 문제 5) 각 부서의 최소 급여를 받는 사원의 이름, 급여, 부서번호를 표기하시오.
-- 힌트 : IN 서브쿼리
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

-- 문제 6) 부하직원이 없는 사원의 이름을 표기하시오.
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
            MANAGER IS NOT NULL -- NULL 값이 포함되면 값 비교 안됨
    );

-- 문제 7) 부하직원이 있는 사원의 이름을 표기하시오.
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

-- 문제 8) BLAKE와 동일한 부서에 속한 사원의 이름과 입사일을 표기하는 질의를
-- 작성하시오.( 단, BLAKE는 제외하시오. )

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
    
-- 프로시저 호출(프로시저가 정의돼 있어야함)
    CALL PL_TEST('해외부', '연산동');
    
-- 함수 호출(함수가 정의돼 있어야함)
    SELECT FN_TEST02(50) FROM DUAL;