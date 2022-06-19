-- 2022-05-02 실습
-- 왼쪽 자리를 특정 기호로 채우는 내장함수
-- lpad(컬럼명, 자리수, 채울 기호) : leftpad, 해당컬럼을 10자리에 맞춰서 빈 공간을 기호로 채워라
SELECT
    LPAD(SALARY, 10, '*')
FROM
    EMPLOYEE;
    
-- rpad(컬럼명, 자리수, 채울 기호) : rightpad, 해당컬럼을 10자리에 맞춰서 빈 공간을 기호로 채워라
SELECT
    RPAD(SALARY, 10, '*')
FROM
    EMPLOYEE;

-- ltrim(컬럼) : 왼쪽 공백 제거
-- rtrim(컬럼) : 오른쪽 공백 제거
-- trim : 양쪽공백 제거
SELECT
    ' Oracle mania ',
    LTRIM(' Oracle mania '),
    RTRIM(' Oracle mania '),
    TRIM(' Oracle mania ')
FROM
    DUAL;
    
-- 숫자 함수
-- round : 특정자리수에서 반올림하는 내장 함수
SELECT
    98.7654,
    ROUND(98.7654), -- 첫째자리 반올림
    ROUND(98.7654, 2), -- 둘째자리 반올림(매개변수에 2째 자리 지정)
    ROUND(98.7654, - 1) -- 정수 1자리 반올림
FROM
    DUAL;
    
-- TRUNC : 특정 자리수에서 버림
SELECT
    98.7654,
    TRUNC(98.7654), -- 소수점 첫째자리에서 버림
    TRUNC(98.7654, 2), -- 소수점 둘째자리에서 버림
    TRUNC(98.7654, - 1) -- 정수 1자리 버림
FROM
    DUAL;
    
-- MOD : 첫번째 값을 두번째 값으로 나눈 나머지를 반환(자바의 나머지 연산자 '%'와 동일)
SELECT
    MOD(31, 2),
    MOD(31, 8)
FROM
    DUAL;
    
-- 연습문제 1) 모든 사원의 급여를 500으로 나눈 나머지를 계산해서 출력해보세요
SELECT
    ENAME,
    SALARY,
    MOD(SALARY, 500)
FROM
    EMPLOYEE;
    
-- 날짜 함수
-- sysdate : 시스템에 저장된 현재 날짜를 반환하는 내장 함수
SELECT
    SYSDATE,
    TO_CHAR(SYSDATE, 'yyyy-mm-dd hh24:mi:ss')
FROM
    DUAL;
    
-- 날짜 연산
SELECT
    SYSDATE - 1 AS 어제, -- 어제 출력
    SYSDATE     AS 오늘, -- 오늘 출력
    SYSDATE + 1 AS 내일 -- 내일 출력
FROM
    DUAL;
    
-- 도전과제) 사원들의 현재까지의 근무일수 구하기
-- 단, 실수로 나오면 반올림하기
SELECT
    ENAME,
    HIREDATE,
    SYSDATE - HIREDATE AS 근무일수,
    ROUND(SYSDATE - HIREDATE)
FROM
    EMPLOYEE;
    
-- 날짜와 날짜 사이의 개월 수를 구하는 내장 함수
-- months_between(sysdate, 날짜컬럼)
SELECT
    ENAME,
    SYSDATE,
    HIREDATE,
    TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE)) AS 개월수
FROM
    EMPLOYEE;
    
-- 입사한지 특정개월 지난 날짜를 구하고 싶을 때
-- add_between(날짜컬럼, 더하고 싶은 개월 수)
SELECT
    ENAME,
    HIREDATE,
    ADD_MONTHS(HIREDATE, 6) AS "6개월 후"
FROM
    EMPLOYEE;
    
-- 오늘을 기준으로 최초로 도래하는 토요일 구하기
-- NEXT_DAY(SYSDATE, '원하는 요일(숫자도 가능)')
SELECT
    SYSDATE,
    NEXT_DAY(SYSDATE, '토요일') AS "이번 주 토요일",
    NEXT_DAY(SYSDATE, 7)     AS "이번 주 토요일(숫자)"
FROM
    DUAL;
    
-- 입사한 날의 마지막 날 구하기
-- LAST_DAY(날짜컬럼)
SELECT
    ENAME,
    HIREDATE,
    LAST_DAY(HIREDATE) AS "입사달의 마지막 날짜"
FROM
    EMPLOYEE;
    
-- 자료형 변환 함수
-- TO_CHAR(컬럼, 변환형식) : 날짜형 또는 숫자형을 문자형으로 변환하는 내장함수
-- TO_CHAR(날짜컬럼, 지정포맷) : 날짜를 지정된 포맷을 가진 문자열로 변환
SELECT
    ENAME,
    HIREDATE,
    TO_CHAR(HIREDATE, 'YY-MM')                 AS "년도(2자리)-월",
    TO_CHAR(HIREDATE, 'YYYY/MM/DD DAY')        AS "년도(4자리)/월/일 요일",
    TO_CHAR(HIREDATE, 'YYYY/MM/DD HH24:MI:SS') AS "자주쓰는 포맷"
FROM
    EMPLOYEE;
    
-- TO_CHAR(숫자컬럼, 지정포맷) : 숫자를 지정된 포맷을 가진 문자열로 변환
-- L : 각 지역별 통화기호를 앞에 표시
-- 999,999 : 자리수를 나타냄, 자리수가 맞지 않으면 공간을 채우지 않음
-- 000,000 : 자리수를 나타냄, 자리수가 맞지 않으면 0으로 채움
-- , : 천 단위 자리 구분을 위해 표시
SELECT
    ENAME,
    SALARY,
    TO_CHAR(SALARY, 'L999,999') AS "돈 표시",
    TO_CHAR(SALARY, 'L000,000') AS "돈 표시2"
FROM
    EMPLOYEE;
    
-- TO_DATE : 문자를 날짜로 변환하는 내장 함수
-- 도전과제) 1981년 2월 20일에 입사한 사원 검색하기
SELECT
    ENAME,
    HIREDATE
FROM
    EMPLOYEE
WHERE
    HIREDATE = TO_DATE('19810220', 'YYYYMMDD'); -- 데이터형을 숫자로 변환
    
-- 문자를 숫자로 바꾸는 내장 함수
-- TO_NUMBER(문자열숫자, 지정포맷) : 문자열을 지정된 포맷의 숫자로 바꾸기
SELECT
    TO_NUMBER('100,000', '999,999') - TO_NUMBER('50,000', '999,999')
FROM
    DUAL;

-- 연습문제 2) SUBSTR함수를 사용하여 사원들의 입사한 년도와 입사한 달만 출력하세요
-- SUBSTR(자료컬럼, 시작인덱스, 자를 개수)
SELECT
    ENAME,
    HIREDATE,
    SUBSTR(HIREDATE, 1, 2) AS 년도,
    SUBSTR(HIREDATE, 4, 2) AS 달
FROM
    EMPLOYEE;
    
-- 연습문제 3) SUBSTR 함수를 사용하여 4월에 입사한 사원을 출력하세요
SELECT
    ENAME,
    HIREDATE
FROM
    EMPLOYEE
WHERE
    SUBSTR(HIREDATE, 4, 2) = 04;
    
-- 연습문제 4) 사번이 짝수인 사원 출력하기
SELECT
    ENAME,
    ENO
FROM
    EMPLOYEE
WHERE
    MOD(ENO, 2) = 0;
    
-- 연습문제 5) 올해 며칠이 지났는지 출력하시오.
-- 현재 날짜에서 올해 1월 1일을 뺀 결과를 출력하시오
-- 단, TO_DATE함수를 사용해서 형을 일치시켜 계산하시오
SELECT
    TRUNC(SYSDATE - TO_DATE('20220101', 'YYYYMMDD')) AS "지난 날짜"
FROM
    DUAL;
    
-- 일반 함수
-- NVL(NULL이 포함된 컬럼, 바꿀 값) : NULL 이면 0 또는 다른 값으로 바꾸는 내장 함수
SELECT
    ENAME,
    SALARY,
    COMMISSION,
    COMMISSION                       AS "보너스",
    SALARY * 12 + NVL(COMMISSION, 0) AS "연봉"
FROM
    EMPLOYEE
ORDER BY
    JOB;
    
-- NVL2(NULL이 포함된 컬럼, 값이 NULL이 아닐 때 출력 값, 값이 NULL일때 출력 값)
SELECT
    ENAME,
    SALARY,
    COMMISSION,
    NVL2(COMMISSION, SALARY * 12 + COMMISSION, SALARY * 12)
FROM
    EMPLOYEE
ORDER BY
    JOB;
    
-- NULLIF(값1, 값2) : 값1, 2가 동일하면 NULL 출력, 아니면 값1 출력
SELECT
    NULLIF('A', 'A'),
    NULLIF('A', 'B')
FROM
    DUAL;
    
-- 오라클에서 IF/ELSE 방법
-- DECODE(대상컬럼, 조건값, 출력값, 조건값, 출력값,.....DEFAULT)
-- DEFAULT : 아무것도 아닐때 디폴트를 출력하라는 표현
SELECT
    ENAME,
    DNO,
    DECODE(DNO, 10, '회계부', 20, '연구소',
           30, '영업부', 40, '운영팀', 'DEFAULT') AS "부서이름"
FROM
    EMPLOYEE
ORDER BY
    DNO;
    
-- 또 다른 IF / ELSE IF/ ELSE 방식
SELECT
    ENAME,
    DNO,
    CASE
        WHEN DNO = 10
        THEN '회계부'
        WHEN DNO = 20
        THEN '연구소'
        WHEN DNO = 30
        THEN '영업부'
        WHEN DNO = 40
        THEN '운영팀'
        ELSE 'DEFAULT'
    END AS 부서이름
FROM
    EMPLOYEE
ORDER BY
    DNO;
    
-- 연습문제 6) 사원들의 상관 사번을 출력하되 상관이 없는 사원에 대해서는 NULL 값 대신
-- 0을 출력하시오
-- 사원 테이블 : EMPLOYEE
-- 상관 컬럼 : MANAGER
SELECT
    ENAME,
    ENO,
    NVL(MANAGER, 0)
FROM
    EMPLOYEE;
    
-- 연습문제 7) DECODE 혹은 CASE WHEN 함수로 직급에 따라 급여를 인상하도록 하시오.
-- 직급이 'ANALYST'인 사원은 200
-- 직급이 'SALESMAN'인 사원은 180
-- 직급이 'MANAGER'인 사원은 150
-- 직급이 'CLERK'인 사원은 100
SELECT
    JOB,
    SALARY,
    NVL(DECODE(JOB, 'ANALYST', SALARY + 200, 'SALESMAN', SALARY + 180,
               'MANAGER', SALARY + 150, 'CLERK', SALARY + 100, 'DEFAULT',
               SALARY), SALARY) AS 변동급여
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
        END, SALARY) AS 변동급여
FROM
    EMPLOYEE
ORDER BY
    JOB;
    
-- 최대, 최소 함수
-- MAX : 그룹의 최대값을 반환
-- MIN : 그룹의 최소값을 반환
SELECT
    SUM(SALARY)        AS "급여 총액",
    TRUNC(AVG(SALARY)) AS "급여 평균",
    MAX(SALARY)        AS "최대 급여",
    MIN(SALARY)        AS "최소 급여"
FROM
    EMPLOYEE;
    
-- 연습문제 8) 최근에 입사한 사원과 가장 오래전에 입사한 사원의 입사일 출력하기
SELECT
    MAX(HIREDATE) AS "최근 입사일",
    MIN(HIREDATE) AS "가장 오래전 입사일"
FROM
    EMPLOYEE;
    
-- 그룹함수 VS NULL : 그룹함수는 NULL을 내부적으로 제외하고 계산함
SELECT
    SUM(COMMISSION) AS "커미션 총액"
FROM
    EMPLOYEE;
    
-- COUNT : 건수 세기
SELECT
    COUNT(*)
FROM
    EMPLOYEE;
    
-- COUNT는 그룹함수이므로 NULL을 제외하고 처리
-- COMMISSION을 받는 사원의 수를 알고 싶은 1인
SELECT
    COUNT(COMMISSION)
FROM
    EMPLOYEE;

-- 찜찜하면 아래 조건을 추가해도 됨
SELECT
    COUNT(COMMISSION)
FROM
    EMPLOYEE
WHERE
    COMMISSION IS NOT NULL;
    
-- 활용 예)
-- 중복에 제거되지 않은 건수 세기
SELECT
    COUNT(JOB) AS "직업의 개수"
FROM
    EMPLOYEE;
-- 중복을 제거하는 작업 -> DISTINCT : 중복값 제거
SELECT
    COUNT(DISTINCT JOB) AS "직업의 개수(중복제거)"
FROM
    EMPLOYEE;
    
-- 그룹함수를 쓸 때 조심해야할 것
SELECT
    COUNT(ENO),
    MIN(SALARY),
    MAX(SALARY) -- 그룹함수 사용시 한 건으로 축약시키기 때문에
--    ENAME, -- 일반 컬럼을 넣으면 오류가 남

FROM
    EMPLOYEE;
    
-- GROUP BY 컬럼명 : 그룹별 결과를 보여줌
-- GROUP BY 컬럼명  => SELECT 컬럼명 : GROUP BY 뒤에 포함된 컬럼명만 SELECT 가능
-- 그룹함수 : 하나의 결과값을 보여줌(COUNT, MAX, SUM)
-- 예시) 부서별로 평균 급여를 알고 싶을 때
SELECT
    DNO                AS "부서번호",
    TRUNC(AVG(SALARY)) AS "평균 급여"
FROM
    EMPLOYEE
GROUP BY
    DNO; -- 부서번호로 그룹핑
    
-- 도전과제) 부서별, 직급별 총급여를 계산하여 출력해 주세요
-- 단, 부서별, 직급별로 오름차순 정렬
SELECT
    DNO,
    JOB,
    SUM(SALARY) AS "총 급여"
FROM
    EMPLOYEE
GROUP BY
    DNO,
    JOB
ORDER BY
    DNO,
    JOB;
    
-- GOURP BY 절에 조건 걸기
-- HAVING 조건
-- 부서별로 최대급여를 구하는데 3000이상 되는 것만 출력해 주세요
SELECT
    DNO,
    MAX(SALARY) AS "최대 급여"
FROM
    EMPLOYEE
GROUP BY
    DNO
HAVING
    MAX(SALARY) > 3000;
    
-- 도전과제) MANAGER를 제외하고 급여 총액이 5000 이상인 직급별 급여 총액(SUM) 구하기
-- 단, 급여 총액을 기준으로 오름차순으로 정렬하세요
SELECT
    JOB         AS 직업,
    SUM(SALARY) AS 급여총액
FROM
    EMPLOYEE
GROUP BY
    JOB
HAVING JOB != 'MANAGER'
       AND
--위와 동일
--HAVING JOB NOT LIKE '%MANAGER' AND
        SUM(SALARY) >= 5000
ORDER BY
    SUM(SALARY);
    
-- 연습문제 9) 모든 사원의 급여 최고액, 최저액, 총액 및 평균 급여를 출력하세요.
-- 컬럼의 별칭 : 최고액, 최저액, 총액, 평균급여
SELECT
    MAX(SALARY)        AS 최고액,
    MIN(SALARY)        AS 최저액,
    SUM(SALARY)        AS 총액,
    TRUNC(AVG(SALARY)) AS 평균급여
FROM
    EMPLOYEE;
    
-- 연습문제 10) 각 담당 업무 유형별로 급여 최고액, 최저액, 총액 및 평균액을 출력하세요.
-- 컬럼의 별칭 : 최고액, 최저액, 총액, 평균급여
SELECT
    JOB,
    MAX(SALARY)        AS 최고액,
    MIN(SALARY)        AS 최저액,
    SUM(SALARY)        AS 총액,
    TRUNC(AVG(SALARY)) AS 평균급여
FROM
    EMPLOYEE
GROUP BY
    JOB;
    
-- 연습문제 11) COUNT(*) 함수를 이용하여 담당 업무가 동일한 사원 수를 출력하세요.
SELECT
    JOB,
    COUNT(*)
FROM
    EMPLOYEE
GROUP BY
    JOB;
    
-- 연습문제 12) 관리자 수를 나열하시오.
SELECT
    COUNT(DISTINCT MANAGER)
FROM
    EMPLOYEE;

SELECT
    COUNT(MANAGER)
FROM
    EMPLOYEE;
    
-- 연습문제 13) 급여 최고액, 급여 최저액의 차액을 출력하세요.
-- 컬럼의 별칭은 "차액"으로 표기하세요
SELECT
    MAX(SALARY)               AS 급여최고액,
    MIN(SALARY)               AS 급여최저액,
    MAX(SALARY) - MIN(SALARY) AS 차액
FROM
    EMPLOYEE;
    
-- 연습문제 14) 직급별 사원의 최저 급여를 출력하세요.
-- 관리자를 알 수 없는 사원 및 최저 급여가 2000 미만인 그룹은 제외시키고
-- 결과를 급여에 대한 내림차순으로 정렬하여 출력하세요
SELECT
    JOB,
    MIN(SALARY) AS 급여최저액
FROM
    EMPLOYEE
WHERE
    MANAGER IS NOT NULL
GROUP BY
    JOB
HAVING NOT MIN(SALARY) < 2000
ORDER BY
    MIN(SALARY) DESC;
    
-- 연습문제 15) 각 부서에 대한 부서번호, 사원수, 부서 내의 모든 사원의 평균 급여를
-- 출력하세요
-- 컬럼명칭 부서번호, 사원수, 평균급여
-- 평균급여는 소수점 2째자리에서 반올림하세요
SELECT
    DNO                   AS 부서번호,
    COUNT(*)              AS 사원수,
    ROUND(AVG(SALARY), 2) AS 평균급여
FROM
    EMPLOYEE
GROUP BY
    DNO;
    
-- 연습문제 8) 각 부서에 대해 부서이름, 지역명, 사원수
-- 부서별 사원의 평균 급여를 출력하세요(DECODE, CASE WHEN)
-- 컬럼별칭 부서이름, 지역명, 사원수, 평균급여
SELECT
    DNO,
    DECODE(DNO, 10, 'ACCOUNTING', 20, 'RESEARCH',
           30, 'SALES', 40, 'OPERATIONS', 'DEFAULT') AS 부서이름,
    DECODE(DNO, 10, 'NEW YORK', 20, 'DALLAS',
           30, 'CHICAGO', 40, 'BOSTON', 'DEFAULT')   AS 지역명,
    COUNT(*)                                         AS 사원수,
    ROUND(AVG(SALARY))                               AS 평균급여
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
    END                AS 부서이름,
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
    END                AS 지역명,
    COUNT(*)           AS 사원수,
    ROUND(AVG(SALARY)) AS 평균급여
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
    
-- 조인 *****
-- 사원테이블에 사원번호가 7788인 직원의 부서명은?
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
    
-- 교집합을 구하기
-- 데이터 건수가 작은 것을 앞으로
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