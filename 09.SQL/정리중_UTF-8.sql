------------------ 검색(R)
---- 한 컬럼만 보기
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
----조건에 맞는 데이터 가져오기
----WHERE [조건절]  : 조건 문법
----DEPT 테이블에 DNAME(부서이름)이 'SALES'인 데이터를 가져오세요
--SELECT
--    DNAME
--FROM
--    DEPT
--WHERE
--    DNAME = 'SALES';
--
----[조건컬럼] LIKE 'S%' : 조건컬럼에 'S'로 시작되는 문자열은 모두 가져옴
----[조건컬럼] LIKE '%S' : 조건컬럼에 'S'로 시작되는 문자열은 모두 가져옴
----[조건컬럼] LIKE '%S%' : 조건컬럼에 'S'가 포함된 문자열은 모두 가져옴
----[조건컬럼] LIKE '_A%' : 앞에서 두번째 A를 포함하는 모든 문자열을 출력
----[조건컬럼] LIKE '__A%' : 앞에서 세번째 A를 포함하는 모든 문자열을 출력
--SELECT
--    ENAME
--FROM
--    EMP
--WHERE
--    ENAME LIKE 'S%';
--    
----내장함수 UPPER(문자열) : 대문자로 바꾸기
----내장함수 LOWER(문자열) : 소문자로 바꾸기
----DB 테이블 데이터는 대소문자를 별개의 문자열로 인식함
--SELECT
--    JOB
--   ,ENAME
--FROM
--    EMP
--WHERE
--    JOB = UPPER('manager');
--
----정렬 : 오름차순
----ORDER BY (컬럼명) ASC(ASCENDING)
--SELECT
--    *
--FROM
--    DEPT
--ORDER BY
--    DNAME ASC;
--
----정렬 : 내림차순
----ORDER BY (컬럼명) DESC(DESCENDING)
--SELECT
--    *
--FROM
--    DEPT
--ORDER BY
--    DNAME DESC;
--
----EMP테이블에서 JOB이 'CLERK'인 데이터를 뽑아서 ENAME(직원이름), EMPNO(직원번호)대상으로 내림차순 정리해주세요
----복수 정렬은 각각의 컬럼에 대해 DESC/ASC를 각각 걸어주어야하며 처음 진행 컬럼을 기준으로 다시 진행됨
--SELECT
--    ENAME
--   ,EMPNO
--FROM
--    EMP
--WHERE
--    JOB = 'CLERK'
----ENAME가 먼저 내림차순된 후 고정되고 증복값이 있다면 EMPNO가 ASC로 오름차순 됨
--ORDER BY
--    ENAME DESC
--   ,EMPNO; --오름차순 ASC는 생략 가능
----ORDER BY 2 DESC, 1; --컬럼ID(숫자)로도 사용 가능
--
----DESC 테이블명 : 테이블의 구조를 보여주는 명령어
----NUMBER : 정수, 실수를 표기하는 자료형
----NUMBER(4) : 4는 숫자 4자리
----NUMBER(7,2) : 7은 정수자리수, 2는 소수자리수 2자리
----VARCHAR2 : 문자열을 표기하는 자료형(*)
----VARCHAR2(10) : 10 자리수 
----UTF8 설정 : 영어(한글자) 1BYTE, 한글(한글자) 3BYTE
----DATE : 날짜를 표기하는 자료형
--DESC EMPLOYEE;
--
----SELECT 절에 컬럼 * 12 사칙연산이 가능
--SELECT
--    ENAME
--   ,SALARY
--   ,SALARY * 12
--FROM
--    EMPLOYEE;
--
----SELECT 절에 컬럼 + 다른 컬럼 => 계산 가능
----컬럼 + 다른컬럼(NULL값이 있으면) = NULL(해당 데이터)
----SALARY : 월급
----SALARY*12 : 연봉
----COMMISSION : 보너스
----SALARY*12 + COMMISSION(보너스) : 최종 1년치 연봉
----문제점) 상기 값(COMMISSION)에 NULL이 있어서 제대로 최종 1년치 연봉이 나오지 않음
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
----문제수정) 상기 값(COMMISSION)을 NVL(COMMISSION, 0)로 수정
----NVL(COMMISSION, 0) : NULL의 값을 0으로 변환
----NVL(컬럼명, 변경값) : 컬럼명의 NULL값을 변경값으로 변환하는 내장함수
----AS 별칭(ALIAS) : 출력되는 컬럼명 변경가능
--SELECT
--    ENAME                           AS 이름
--   ,SALARY                          AS 월급
--   ,JOB                             AS 직업
--   ,DNO
--   ,NVL(COMMISSION,0)               AS 보너스
--   ,SALARY * 12                     AS 연봉
--   ,SALARY * 12 + NVL(COMMISSION,0) AS 최종연봉
--FROM
--    EMPLOYEE;
--    
----컬럼에 별칭(ALIAS)주기       
----""안에 기입하면 특수문자, 띄어쓰기 가능
--SELECT
--    ENAME                           AS "이       름"
--   ,SALARY                          AS "월$%급"
--   ,JOB                             AS 직업
--   ,DNO
--   ,NVL(COMMISSION,0)               AS 보너스
--   ,SALARY * 12                     AS "연       봉"
--   ,SALARY * 12 + NVL(COMMISSION,0) AS 최종연봉
--FROM
--    EMPLOYEE;
--
----DISTINCT : 출력결과에서 중복을 제거하는 명령어
--SELECT DISTINCT
--    DNO AS 부서번호
--FROM
--    EMPLOYEE;
--
----DUAL : 테스트용, 간이 계산용 내장 테이블
--DESC DUAL;
--
--SELECT
--    10 * 4 / 3
--FROM
--    DUAL;
--
----현재 시간, 날짜 출력하는 내장함수
----DEPARTMENT가 가지고 있는 데이터 개수만큼 나옴
--SELECT
--    SYSDATE
--FROM
--    DEPARTMENT;
--    
----DUAL : 테스트용으로 한건만 뽑고 싶으면 사용
--SELECT
--    SYSDATE
--FROM
--    DUAL;
--
----조건 : 범위 검색
----1500 이상의 SALARY를 받는 사람들을 검색
---- = : 같음, > : ~보다 큼, < : ~보다 작음, <> : 같지 않음
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--    SALARY >= 1500;
--
----문자열 검색
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--    ENAME = 'SCOTT';
--
----날짜 데이터 검색
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--    HIREDATE <= '1981/01/01';
--
----TO_CHAR(컬럼명, 변경포맷) : 날짜 포맷을 변경해서 문자열로 출력하는 내장 함수
----TO_CHAR(SYSDATE, 'YYYY-MM-DD') : SYSDATE를 'YYYY-MM-DD' 형식으로 변환
--SELECT
--    TO_CHAR(SYSDATE,'YYYY-MM-DD')
--FROM
--    DUAL;
----'YYYYMMDD' 형식으로 변환
--SELECT
--    TO_CHAR(SYSDATE,'YYYYMMDD')
--FROM
--    DUAL;
----'YYYY/MM/DD' 형식으로 변환
--SELECT
--    TO_CHAR(SYSDATE,'YYYY/MM/DD')
--FROM
--    DUAL;
--
----TO_DATE(컬럼명, 변경포맷) : 문자열을 날짜 데이터 형식으로 변경하는 내장 함수
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
----논리연산자 :  AND(동시에 참), OR(둘 중 하나가 참), NOT(반대)
----AND
----부서번호가 10이고 직급이 'MANAGER'인 사원만 출력하기
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--        DNO = 10
--    AND JOB = 'MANAGER';
--
----OR
----부서번호가 10이거나 직급이 'MANAGER'인 사원만 출력하기
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--    DNO = 10
--    OR JOB = 'MANAGER';
--
----NOT
----10번 부서에 소속된 사원만 제외하고 나머지 사원 출력
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--    NOT DNO = 10;
--
----직급이 'MANAGER'인 사원만 제외하고 출력
--SELECT
--    *
--FROM
--    EMPLOYEE
--WHERE
--    NOT JOB = 'MANAGER';
--
----논리연산자2 : BETWEEN, IN
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

--NULL : 아무 값도 없고, 공간도 없는 것
--NULL 과 연산을 하면 NULL이 됨
--IS NULL : NULL인 데이터만 뽑기
SELECT
    *
FROM
    EMPLOYEE
WHERE
    COMMISSION IS NULL;
--IS NOT NULL : NULL이 아닌 데이터만 뽑기
SELECT
    *
FROM
    EMPLOYEE
WHERE
    COMMISSION IS NOT NULL;

--문제 11) COMMISSION이 NULL값 중에서 SALARY가 1000보다 큰 직원의 정보를 출력
SELECT
    *
FROM
    EMPLOYEE
WHERE
    COMMISSION IS NULL
    AND SALARY >= 1000;

--문제 12) 직원 테이블에서 날짜 정보를 내림차순으로 정렬하여 출력하세요
SELECT
    *
FROM
    EMPLOYEE
ORDER BY
    HIREDATE DESC;

--문제 13) 동일한 급여를 받는 사원에 대해서 이름의 순서가 빠른 사람부터 출력해 주세요
SELECT
    *
FROM
    EMPLOYEE
ORDER BY
    SALARY
   ,ENAME;

--오라클 내장 함수
--연산가능
SELECT
    10 * 2
FROM
    DUAL;
--글자입력가능
SELECT
    '난나라난나'
FROM
    DUAL;

--내장함수 1) UPPER(문자열)/LOWER(문자열)/INITCAP(문자열)
SELECT
    'Oracle mania'
   ,UPPER('Oracle mania')   AS 대문자
   ,LOWER('Oracle mania')   AS 소문자
   ,INITCAP('Oracle mania') AS "첫글자 대문자"
FROM
    DUAL;
    
--직원 테이블
SELECT
    ENAME
   ,LOWER(ENAME)
   ,JOB
   ,INITCAP(JOB)
FROM
    EMPLOYEE;
    
--SCOTT 사원 검색하기
--컬럼의 데이터를 일괄 소(대)문자로 변경하여 비교 가능
--허나 성능 떨어짐
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
    
--내장함수 2) 문자길이를 반환하는 함수
--LENGTH(문자열) : 한글/영어 상관 없이 문자개수를 세어서 반환
SELECT
    LENGTH('OrAcleMania')
   ,LENGTH('오라클매니아')
FROM
    DUAL;
    
--내장함수 3) 문자 조작 함수
--CONCAT : 문자의 값을 연결하는 함수
--문자열 || 문자열 : 문자의 값을 연결
SELECT
    'Oracle'
   ,'mania'
   ,CONCAT('Oracle','mania')
   ,'Oracle' || 'mania'
FROM
    DUAL;
    
--내장함수 4) 문자 조작 함수
--문자열 자르기
--substr(대상컬럼(문자), 시작위치, 개수) : 인덱스가 1부터 시작
--시작위치를 -1로 줄 경우 끝에서부터 시작
SELECT
    SUBSTR('Oracle mania',4,3)
   ,SUBSTR('Oracle mania',- 1,1)
FROM
    DUAL;
    
--문제 14) 이름이 N으로 끝나는 사원 표시하기
--대상 테이블 : employee
--substr() 쓰기
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SUBSTR(ENAME,- 1,1) = 'N';
    
--문제 15) 87년도에 입사한 사원 표시하기
--대상 테이블 : employee
--substr() 쓰기
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SUBSTR(HIREDATE,1,2) = '87';
    
--substrb(대상컬럼(문자), 시작위치, 개수) : 문자 byte 기준으로 출력
--영문(1byte) : substr/substrb 결과 동일
--한글(3byte) : substr/substrb 결과 다름

--내장함수 5) 문자열에서 대상 문자 찾아서 인덱스 번호 반환
--오라클에서는 인덱스번호가 1부터 시작함
--instr(대상컬럼(문자), 찾을문자, 시작위치, 몇번째 발견)
SELECT
    INSTR('Oracle mania','a')
FROM
    DUAL;

SELECT
    INSTR('Oracle mania','a',5,2) --5번째부터 시작하여 2번째 발견된 'a'인덱스를 반환
FROM
    DUAL;
    
--문제 16) 사원 정보에서 ename 세 번째 자리가 'R'인 사원을 검색하는 퀴리문을 작성하세요
--단, instr을 사용하세요
SELECT
    *
FROM
    EMPLOYEE
WHERE
    INSTR(ENAME,'R',3,1) = 3;
    
    --연습문제 1)
--덧셈 연산자를 사용하여 모든 사원에 대해서 $300의 급여 인상을 계산한 후
--사원의 이름, 급여, 인상된 급여를 출력하세요.
SELECT
    ENAME        AS 이름
   ,SALARY       AS 급여
   ,SALARY + 300 AS 인상된급여
FROM
    EMPLOYEE;

--연습문제 2)
--사원의 이름, 급여, 연간 총수입을 총 수입이 많은 것부터 작은 순으로 출력하세요.
--(연간 총 수입은 월급에 12를 곱한 후 $100의 상여금을 더해서 계산하세요)
SELECT
    ENAME                 AS 이름
   ,SALARY                AS 급여
   ,( SALARY * 12 ) + 100 AS 연간총수입
FROM
    EMPLOYEE
ORDER BY
    ( SALARY * 12 ) + 100 DESC;

--연습문제 3)
--급여가 2000을 넘는 사원의 이름과 급여를 급여가 많은 것부터 작은 순으로 출력하세요
SELECT
    ENAME  AS 이름
   ,SALARY AS 급여
FROM
    EMPLOYEE
WHERE
    SALARY >= 2000
ORDER BY
    SALARY DESC;

--연습문제 4)
--사원번호가 7788인 사원의 이름과 부서번호를 출력하세요
SELECT
    ENO   AS 사원번호
   ,ENAME AS 이름
   ,DNO   AS 부서번호
FROM
    EMPLOYEE
WHERE
    ENO = '7788';
    
--연습문제 5)
--급여가 2000에서 3000사이에 포함되지 않는 사원의 이름과 급여를 출력하세요.
SELECT
    ENAME  AS 이름
   ,SALARY AS 급여
FROM
    EMPLOYEE
WHERE
    SALARY NOT BETWEEN 2000 AND 3000;

--연습문제 6)
--1981년 2월 20일부터 1981년 5월 1일 사이에 입사한 사원의
--이름, 담당업무, 입사일을 출력하세요
SELECT
    ENAME    AS 이름
   ,JOB      AS 담당업무
   ,HIREDATE AS 입사일
FROM
    EMPLOYEE
WHERE
    HIREDATE BETWEEN '81/02/20' AND '81/05/01';

--연습문제 7)
--부서번호가 20 및 30에 속한 사원의 이름과 부서번호를 출력하되
--이름을 기준으로 내림차순 출력하세요
SELECT
    ENAME AS 이름
   ,DNO   AS 부서번호
FROM
    EMPLOYEE
WHERE
    DNO IN ( 20,30 )
ORDER BY
    ENAME DESC;

--연습문제 8)
--사원의 급여가 2000에서 3000사이에 포함되고 부서번호가 20 또는 30인
--사원의 이름, 급여와 부서번호를 출력하되 이름순(오름차순)으로 출력하세요
SELECT
    ENAME  AS 이름
   ,SALARY AS 급여
   ,DNO    AS 부서번호
FROM
    EMPLOYEE
WHERE
    SALARY BETWEEN 2000 AND 3000
    AND DNO IN ( 20,30 )
ORDER BY
    ENAME;

--연습문제 9)
--1981년도에 입사한 사원의 이름과 입사일을 출력하세요
--단, LIKE 연산자와 와일드카드(%, _ 등)를 사용하세요
SELECT
    ENAME    AS 이름
   ,HIREDATE AS 입사일
FROM
    EMPLOYEE
WHERE
    HIREDATE LIKE '81%';


--연습문제 10)
--관리자가 없는 사원의 이름과 담당 업무를 출력하세요
SELECT
    ENAME AS 이름
   ,JOB   AS 담당업무
FROM
    EMPLOYEE
WHERE
    MANAGER IS NULL;

--연습문제 11)
--COMMITION을 받을 수 있는 자격이 되는 사원의 이름, 급여, 커미션을 출력하되
--급여 및 커미션을 기준으로 내림차순 정렬하여 출력하세요
SELECT
    ENAME      AS 이름
   ,SALARY     AS 급여
   ,COMMISSION AS 커미션
FROM
    EMPLOYEE
WHERE
    COMMISSION IS NOT NULL
ORDER BY
    SALARY DESC
   ,COMMISSION DESC;
    
--연습문제 12)
--이름의 세번째 문자가 R인 사원의 이름을 표시하세요.
SELECT
    ENAME AS 이름
FROM
    EMPLOYEE
WHERE
    ENAME LIKE '__R%';

--연습문제 13)
--이름에 A와 E를 모두 포함하고 있는 사원의 이름을 표시하세요.
SELECT
    ENAME AS 이름
FROM
    EMPLOYEE
WHERE
    ENAME LIKE '%A%'
    AND ENAME LIKE '%E%';

--연습문제 14)
--담당업무(JOB컬럼)가 사무원(CLERK) 또는 영업사원(SALESMAN)이면서
--급여가 $1600, $950 또는 $1300이 아닌
--사원의 이름, 담당업무, 급여를 출력하세요
SELECT
    ENAME  AS 이름
   ,JOB    AS 직업
   ,SALARY AS 급여
FROM
    EMPLOYEE
WHERE
    JOB IN ( 'CLERK','SALESMAN' )
    AND SALARY NOT IN ( '1600','950','1300' );

--연습문제 15)
--커미션(상여금)이 $500 이상인 사원의 이름과 급여 및 커미션(상여금)을 출력하세요
SELECT
    ENAME      AS 이름
   ,SALARY     AS 급여
   ,COMMISSION AS 커미션
FROM
    EMPLOYEE
WHERE
    COMMISSION >= 500;
    
    -- 2022-05-02 실습
-- 왼쪽 자리를 특정 기호로 채우는 내장함수
-- lpad(컬럼명, 자리수, 채울 기호) : leftpad, 해당컬럼을 10자리에 맞춰서 빈 공간을 기호로 채워라
SELECT
    LPAD(SALARY,10,'*')
FROM
    EMPLOYEE;
    
-- rpad(컬럼명, 자리수, 채울 기호) : rightpad, 해당컬럼을 10자리에 맞춰서 빈 공간을 기호로 채워라
SELECT
    RPAD(SALARY,10,'*')
FROM
    EMPLOYEE;

-- ltrim(컬럼) : 왼쪽 공백 제거
-- rtrim(컬럼) : 오른쪽 공백 제거
-- trim : 양쪽공백 제거
SELECT
    ' Oracle mania '
   ,LTRIM(' Oracle mania ')
   ,RTRIM(' Oracle mania ')
   ,TRIM(' Oracle mania ')
FROM
    DUAL;
    
-- 숫자 함수
-- round : 특정자리수에서 반올림하는 내장 함수
SELECT
    98.7654
   ,ROUND(98.7654)
   , -- 첫째자리 반올림
   ROUND(98.7654,2)
   , -- 둘째자리 반올림(매개변수에 2째 자리 지정)
   ROUND(98.7654,- 1) -- 정수 1자리 반올림
FROM
    DUAL;
    
-- TRUNC : 특정 자리수에서 버림
SELECT
    98.7654
   ,TRUNC(98.7654)
   , -- 소수점 첫째자리에서 버림
   TRUNC(98.7654,2)
   , -- 소수점 둘째자리에서 버림
   TRUNC(98.7654,- 1) -- 정수 1자리 버림
FROM
    DUAL;
    
-- MOD : 첫번째 값을 두번째 값으로 나눈 나머지를 반환(자바의 나머지 연산자 '%'와 동일)
SELECT
    MOD(31,2)
   ,MOD(31,8)
FROM
    DUAL;
    
-- 연습문제 1) 모든 사원의 급여를 500으로 나눈 나머지를 계산해서 출력해보세요
SELECT
    ENAME
   ,SALARY
   ,MOD(SALARY,500)
FROM
    EMPLOYEE;
    
-- 날짜 함수
-- sysdate : 시스템에 저장된 현재 날짜를 반환하는 내장 함수
SELECT
    SYSDATE
   ,TO_CHAR(SYSDATE,'yyyy-mm-dd hh24:mi:ss')
FROM
    DUAL;
    
-- 날짜 연산
SELECT
    SYSDATE - 1 AS 어제
   , -- 어제 출력
   SYSDATE     AS 오늘
   , -- 오늘 출력
   SYSDATE + 1 AS 내일 -- 내일 출력
FROM
    DUAL;
    
-- 도전과제) 사원들의 현재까지의 근무일수 구하기
-- 단, 실수로 나오면 반올림하기
SELECT
    ENAME
   ,HIREDATE
   ,SYSDATE - HIREDATE AS 근무일수
   ,ROUND(SYSDATE - HIREDATE)
FROM
    EMPLOYEE;
    
-- 날짜와 날짜 사이의 개월 수를 구하는 내장 함수
-- months_between(sysdate, 날짜컬럼)
SELECT
    ENAME
   ,SYSDATE
   ,HIREDATE
   ,TRUNC(MONTHS_BETWEEN(SYSDATE,HIREDATE)) AS 개월수
FROM
    EMPLOYEE;
    
-- 입사한지 특정개월 지난 날짜를 구하고 싶을 때
-- add_between(날짜컬럼, 더하고 싶은 개월 수)
SELECT
    ENAME
   ,HIREDATE
   ,ADD_MONTHS(HIREDATE,6) AS "6개월 후"
FROM
    EMPLOYEE;
    
-- 오늘을 기준으로 최초로 도래하는 토요일 구하기
-- NEXT_DAY(SYSDATE, '원하는 요일(숫자도 가능)')
SELECT
    SYSDATE
   ,NEXT_DAY(SYSDATE,'토요일') AS "이번 주 토요일"
   ,NEXT_DAY(SYSDATE,7)     AS "이번 주 토요일(숫자)"
FROM
    DUAL;
    
-- 입사한 날의 마지막 날 구하기
-- LAST_DAY(날짜컬럼)
SELECT
    ENAME
   ,HIREDATE
   ,LAST_DAY(HIREDATE) AS "입사달의 마지막 날짜"
FROM
    EMPLOYEE;
    
-- 자료형 변환 함수
-- TO_CHAR(컬럼, 변환형식) : 날짜형 또는 숫자형을 문자형으로 변환하는 내장함수
-- TO_CHAR(날짜컬럼, 지정포맷) : 날짜를 지정된 포맷을 가진 문자열로 변환
SELECT
    ENAME
   ,HIREDATE
   ,TO_CHAR(HIREDATE,'YY-MM')                 AS "년도(2자리)-월"
   ,TO_CHAR(HIREDATE,'YYYY/MM/DD DAY')        AS "년도(4자리)/월/일 요일"
   ,TO_CHAR(HIREDATE,'YYYY/MM/DD HH24:MI:SS') AS "자주쓰는 포맷"
FROM
    EMPLOYEE;
    
-- TO_CHAR(숫자컬럼, 지정포맷) : 숫자를 지정된 포맷을 가진 문자열로 변환
-- L : 각 지역별 통화기호를 앞에 표시
-- 999,999 : 자리수를 나타냄, 자리수가 맞지 않으면 공간을 채우지 않음
-- 000,000 : 자리수를 나타냄, 자리수가 맞지 않으면 0으로 채움
-- , : 천 단위 자리 구분을 위해 표시
SELECT
    ENAME
   ,SALARY
   ,TO_CHAR(SALARY,'L999,999') AS "돈 표시"
   ,TO_CHAR(SALARY,'L000,000') AS "돈 표시2"
FROM
    EMPLOYEE;
    
-- TO_DATE : 문자를 날짜로 변환하는 내장 함수
-- 도전과제) 1981년 2월 20일에 입사한 사원 검색하기
SELECT
    ENAME
   ,HIREDATE
FROM
    EMPLOYEE
WHERE
    HIREDATE = TO_DATE('19810220','YYYYMMDD'); -- 데이터형을 숫자로 변환
    
-- 문자를 숫자로 바꾸는 내장 함수
-- TO_NUMBER(문자열숫자, 지정포맷) : 문자열을 지정된 포맷의 숫자로 바꾸기
SELECT
    TO_NUMBER('100,000','999,999') - TO_NUMBER('50,000','999,999')
FROM
    DUAL;

-- 연습문제 2) SUBSTR함수를 사용하여 사원들의 입사한 년도와 입사한 달만 출력하세요
-- SUBSTR(자료컬럼, 시작인덱스, 자를 개수)
SELECT
    ENAME
   ,HIREDATE
   ,SUBSTR(HIREDATE,1,2) AS 년도
   ,SUBSTR(HIREDATE,4,2) AS 달
FROM
    EMPLOYEE;
    
-- 연습문제 3) SUBSTR 함수를 사용하여 4월에 입사한 사원을 출력하세요
SELECT
    ENAME
   ,HIREDATE
FROM
    EMPLOYEE
WHERE
    SUBSTR(HIREDATE,4,2) = 04;
    
-- 연습문제 4) 사번이 짝수인 사원 출력하기
SELECT
    ENAME
   ,ENO
FROM
    EMPLOYEE
WHERE
    MOD(ENO,2) = 0;
    
-- 연습문제 5) 올해 며칠이 지났는지 출력하시오.
-- 현재 날짜에서 올해 1월 1일을 뺀 결과를 출력하시오
-- 단, TO_DATE함수를 사용해서 형을 일치시켜 계산하시오
SELECT
    TRUNC(SYSDATE - TO_DATE('20220101','YYYYMMDD')) AS "지난 날짜"
FROM
    DUAL;
    
-- 일반 함수
-- NVL(NULL이 포함된 컬럼, 바꿀 값) : NULL 이면 0 또는 다른 값으로 바꾸는 내장 함수
SELECT
    ENAME
   ,SALARY
   ,COMMISSION
   ,COMMISSION                      AS "보너스"
   ,SALARY * 12 + NVL(COMMISSION,0) AS "연봉"
FROM
    EMPLOYEE
ORDER BY
    JOB;
    
-- NVL2(NULL이 포함된 컬럼, 값이 NULL이 아닐 때 출력 값, 값이 NULL일때 출력 값)
SELECT
    ENAME
   ,SALARY
   ,COMMISSION
   ,NVL2(COMMISSION,SALARY * 12 + COMMISSION,SALARY * 12)
FROM
    EMPLOYEE
ORDER BY
    JOB;
    
-- NULLIF(값1, 값2) : 값1, 2가 동일하면 NULL 출력, 아니면 값1 출력
SELECT
    NULLIF('A','A')
   ,NULLIF('A','B')
FROM
    DUAL;
    
-- 오라클에서 IF/ELSE 방법
-- DECODE(대상컬럼, 조건값, 출력값, 조건값, 출력값,.....DEFAULT)
-- DEFAULT : 아무것도 아닐때 디폴트를 출력하라는 표현
SELECT
    ENAME
   ,DNO
   ,DECODE(DNO,10,'회계부',20,'연구소'
           ,30,'영업부',40,'운영팀','DEFAULT') AS "부서이름"
FROM
    EMPLOYEE
ORDER BY
    DNO;
    
-- 또 다른 IF / ELSE IF/ ELSE 방식
SELECT
    ENAME
   ,DNO
   ,CASE
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
    ENAME
   ,ENO
   ,NVL(MANAGER,0)
FROM
    EMPLOYEE;
    
-- 연습문제 7) DECODE 혹은 CASE WHEN 함수로 직급에 따라 급여를 인상하도록 하시오.
-- 직급이 'ANALYST'인 사원은 200
-- 직급이 'SALESMAN'인 사원은 180
-- 직급이 'MANAGER'인 사원은 150
-- 직급이 'CLERK'인 사원은 100
SELECT
    JOB
   ,SALARY
   ,NVL(DECODE(JOB,'ANALYST',SALARY + 200,'SALESMAN',SALARY + 180
               ,'MANAGER',SALARY + 150,'CLERK',SALARY + 100,'DEFAULT'
               ,SALARY),SALARY) AS 변동급여
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
       ,SALARY) AS 변동급여
FROM
    EMPLOYEE
ORDER BY
    JOB;
    
-- 최대, 최소 함수
-- MAX : 그룹의 최대값을 반환
-- MIN : 그룹의 최소값을 반환
SELECT
    SUM(SALARY)        AS "급여 총액"
   ,TRUNC(AVG(SALARY)) AS "급여 평균"
   ,MAX(SALARY)        AS "최대 급여"
   ,MIN(SALARY)        AS "최소 급여"
FROM
    EMPLOYEE;
    
-- 연습문제 8) 최근에 입사한 사원과 가장 오래전에 입사한 사원의 입사일 출력하기
SELECT
    MAX(HIREDATE) AS "최근 입사일"
   ,MIN(HIREDATE) AS "가장 오래전 입사일"
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
    COUNT(ENO)
   ,MIN(SALARY)
   ,MAX(SALARY) -- 그룹함수 사용시 한 건으로 축약시키기 때문에
--    ENAME, -- 일반 컬럼을 넣으면 오류가 남

FROM
    EMPLOYEE;
    
-- GROUP BY 컬럼명 : 그룹별 결과를 보여줌
-- GROUP BY 컬럼명  => SELECT 컬럼명 : GROUP BY 뒤에 포함된 컬럼명만 SELECT 가능
-- 그룹함수 : 하나의 결과값을 보여줌(COUNT, MAX, SUM)
-- 예시) 부서별로 평균 급여를 알고 싶을 때
SELECT
    DNO                AS "부서번호"
   ,TRUNC(AVG(SALARY)) AS "평균 급여"
FROM
    EMPLOYEE
GROUP BY
    DNO; -- 부서번호로 그룹핑
    
-- 도전과제) 부서별, 직급별 총급여를 계산하여 출력해 주세요
-- 단, 부서별, 직급별로 오름차순 정렬
SELECT
    DNO
   ,JOB
   ,SUM(SALARY) AS "총 급여"
FROM
    EMPLOYEE
GROUP BY
    DNO
   ,JOB
ORDER BY
    DNO
   ,JOB;
    
-- GOURP BY 절에 조건 걸기
-- HAVING 조건
-- 부서별로 최대급여를 구하는데 3000이상 되는 것만 출력해 주세요
SELECT
    DNO
   ,MAX(SALARY) AS "최대 급여"
FROM
    EMPLOYEE
GROUP BY
    DNO
HAVING
    MAX(SALARY) > 3000;
    
-- 도전과제) MANAGER를 제외하고 급여 총액이 5000 이상인 직급별 급여 총액(SUM) 구하기
-- 단, 급여 총액을 기준으로 오름차순으로 정렬하세요
SELECT
    JOB         AS 직업
   ,SUM(SALARY) AS 급여총액
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
    MAX(SALARY)        AS 최고액
   ,MIN(SALARY)        AS 최저액
   ,SUM(SALARY)        AS 총액
   ,TRUNC(AVG(SALARY)) AS 평균급여
FROM
    EMPLOYEE;
    
-- 연습문제 10) 각 담당 업무 유형별로 급여 최고액, 최저액, 총액 및 평균액을 출력하세요.
-- 컬럼의 별칭 : 최고액, 최저액, 총액, 평균급여
SELECT
    JOB
   ,MAX(SALARY)        AS 최고액
   ,MIN(SALARY)        AS 최저액
   ,SUM(SALARY)        AS 총액
   ,TRUNC(AVG(SALARY)) AS 평균급여
FROM
    EMPLOYEE
GROUP BY
    JOB;
    
-- 연습문제 11) COUNT(*) 함수를 이용하여 담당 업무가 동일한 사원 수를 출력하세요.
SELECT
    JOB
   ,COUNT(*)
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
    MAX(SALARY)               AS 급여최고액
   ,MIN(SALARY)               AS 급여최저액
   ,MAX(SALARY) - MIN(SALARY) AS 차액
FROM
    EMPLOYEE;
    
-- 연습문제 14) 직급별 사원의 최저 급여를 출력하세요.
-- 관리자를 알 수 없는 사원 및 최저 급여가 2000 미만인 그룹은 제외시키고
-- 결과를 급여에 대한 내림차순으로 정렬하여 출력하세요
SELECT
    JOB
   ,MIN(SALARY) AS 급여최저액
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
    DNO                  AS 부서번호
   ,COUNT(*)             AS 사원수
   ,ROUND(AVG(SALARY),2) AS 평균급여
FROM
    EMPLOYEE
GROUP BY
    DNO;
    
-- 연습문제 8) 각 부서에 대해 부서이름, 지역명, 사원수
-- 부서별 사원의 평균 급여를 출력하세요(DECODE, CASE WHEN)
-- 컬럼별칭 부서이름, 지역명, 사원수, 평균급여
SELECT
    DNO
   ,DECODE(DNO,10,'ACCOUNTING',20,'RESEARCH'
           ,30,'SALES',40,'OPERATIONS','DEFAULT') AS 부서이름
   ,DECODE(DNO,10,'NEW YORK',20,'DALLAS'
           ,30,'CHICAGO',40,'BOSTON','DEFAULT')   AS 지역명
   ,COUNT(*)                               AS 사원수
   ,ROUND(AVG(SALARY))                     AS 평균급여
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
     END                AS 부서이름
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
     END                AS 지역명
   ,COUNT(*)           AS 사원수
   ,ROUND(AVG(SALARY)) AS 평균급여
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
    A.DNO
   ,A.DNAME
   ,A.LOC
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
        B.DNO = A.DNO
    AND B.ENO = 7788;
    
    -- 2022-05-03 실습
-- 곱 조인(Cartesian Product) : 카르테시안 곱 *****
-- DEPARTMENT 건수 : 4건 X EMPLOYEE 건수 : 14건 => 4 X 14 = 56
-- 10만 * 100만 = 1000만 => 효율이 거지같음 혹은 컴퓨터 터짐
SELECT
    *
FROM
    DEPARTMENT A
   ,EMPLOYEE   B;
    
-- Equal Join ( = Join )
-- 조인 대상 테이블에서 공통컬럼 = 비교 를 통해
-- 같은 값을 가지는 행을 연결하여 결과를 생성
-- 성능 향상 팁 : 항상 작은 건수 테이블을 먼저 처리되게 만드는게 좋음
-- SELECT 테이블1.컬럼, 테이블2. 컬럼
-- FROM 테이블1, 테이블2
-- WHERE 테이블.2컬럼 = 테이블1.컬럼

-- 문제 1)
-- 각 사원들이 소속된 부서정보 모두 출력
-- 단, = 조인 사용
SELECT
    B.ENAME AS 직원
   ,A.DNO   AS 부서번호
   ,A.DNAME AS 부서이름
   ,A.LOC   AS 부서위치
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
    A.DNO = B.DNO;
    
-- 문제 2) 사원번호가 7499, 7900인 사원들의 소속된 부서정보 모두 출력
SELECT
    *
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
        B.DNO = A.DNO
    AND B.ENO IN ( 7499,7900 );
    
-- 문제 3) 사원번호가 7500 ~ 7700 사이에 있는 사원들의 소속된 부서정보를 출력하되
-- 부서이름이 SALES인 파트만 출력하세요

SELECT
    *
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
        B.DNO = A.DNO
    AND B.ENO BETWEEN 7500 AND 7700
    AND DNAME = 'SALES';
    
-- 테이블 주석 및 컬럼 주석 넣기
-- 테이블주석
COMMENT ON TABLE DEPARTMENT IS
    '부서정보';
-- 컬럼 주석
COMMENT ON COLUMN DEPARTMENT.DNAME IS
    '부서이름';

COMMENT ON COLUMN DEPARTMENT.DNO IS
    '부서번호';

COMMENT ON COLUMN DEPARTMENT.LOC IS
    '지역이름';

-- 테이블 주석
COMMENT ON TABLE EMPLOYEE IS
    '직원정보';

-- 테이블 주석
COMMENT ON TABLE BONUS IS
    '보너스정보';
-- 컬럼 주석    
COMMENT ON COLUMN BONUS.ENAME IS
    '사원이름';

COMMENT ON COLUMN BONUS.JOB IS
    '직급';

COMMENT ON COLUMN BONUS.SAL IS
    '월급';

COMMENT ON COLUMN BONUS.COMM IS
    '보너스';
    
-- 테이블 주석
COMMENT ON TABLE SALGRADE IS
    '월급정보';

COMMENT ON COLUMN SALGRADE.GRADE IS
    '등급';

COMMENT ON COLUMN SALGRADE.LOSAL IS
    '최저월급';

COMMENT ON COLUMN SALGRADE.HISAL IS
    '최고월급';
    
-- NOT EQUAL 조인
-- 특수용례) 범위 조인
-- = 조인이 아닌 범위 조인
-- 월급등급(SALGRADE) 테이블
-- 1등급 : 700~1200
-- ...
-- 5등급 : 3001~9999
-- 급여 등급을 기준으로 사원의 급여가 몇 등급에 속하는지 알아보고 싶은 1인
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
    
-- 특수용례) SELF 조인
-- 사원테이블의 MANAGER컬럼(그 사원의 매니저의 사번)
SELECT
    MAN.ENO   AS "직원번호"
   ,MAN.ENAME AS "직원"
   ,EMP.ENAME AS "매니저"
   ,EMP.ENO   AS "매니저 사원번호"
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
    
-- 특수용례) OUTER 조인
-- = 조인 공통 컬럼을 연결해서 데이터를 보여주는데
-- NULL값은 = 연산이 안되기 때문에 데이터에서 제외됨
-- NULL값에 해당하는 다른 컬럼을 보여줘야 할 때도 있음
SELECT
    EMP.ENAME AS 직원
   ,EMP.ENO
   ,MAN.ENAME AS 매니저
   ,MAN.ENO
FROM
    EMPLOYEE EMP
   ,EMPLOYEE MAN
WHERE
    EMP.MANAGER = MAN.ENO (+); -- (+)NULL 값도 같이 출력됨
    
-- 연습문제 1)
-- 조인을 이용해서 SCOTT 사원의 부서번호와 부서이름을 출력하시오.
SELECT
    B.ENAME AS 이름
   ,A.DNO   AS 부서번호
   ,A.DNAME AS 부서이름
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
        B.DNO = A.DNO
    AND B.ENAME = 'SCOTT';
    
-- 연습문제 2)
-- 모든 사원의 사원이름과 그 사원이 소속된 부서이름과 지역명을 출력하시오
SELECT
    B.ENAME AS 이름
   ,A.DNAME AS 부서이름
   ,A.LOC   AS 지역
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
    A.DNO = B.DNO;
    
-- 연습문제 3) 10번 부서에 속하는 사원에 대해 직급과 지역명을 출력하시오.
SELECT
    B.ENAME AS 이름
   ,B.JOB   AS 직급
   ,B.DNO   AS 부서번호
   ,A.LOC   AS 지역
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
        A.DNO = B.DNO
    AND B.DNO = 10;
    
-- 연습문제 4) 커미션을 받는 모든 사원의 이름, 부서이름, 지역명을 출력하시오.
SELECT
    B.ENAME      AS 이름
   ,B.COMMISSION AS 커미션
   ,A.DNAME      AS 부서이름
   ,A.LOC        AS 지역
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
        A.DNO = B.DNO
    AND B.COMMISSION > 0;
    
-- 연습문제 5) = 조인과 와일드카드(%)를 사용하여 이름에 A가 포함된 모든 사원의
-- 이름과 부서명을 출력하시오
SELECT
    B.ENAME AS 이름
   ,A.DNAME AS 부서이름
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
        A.DNO = B.DNO
    AND B.ENAME LIKE '%A%';
    
-- 연습문제 6) NEW YORK에 근문하는 모든 사원의 이름, 업무, 부서번호, 부서명을 출력
SELECT
    B.ENAME AS 이름
   ,B.JOB   AS 업무
   ,B.DNO   AS 부서번호
   ,A.DNAME AS 부서이름
   ,A.LOC   AS 지역
FROM
    DEPARTMENT A
   ,EMPLOYEE   B
WHERE
        A.DNO = B.DNO -- 공통된 부분 매칭을 통해 자료를 재조립
    AND A.LOC LIKE 'NEW YORK';
    
-- DDL (Data Definition Language) : 데이터 정의어
-- 테이블 만들기, 테이블 수정하기, 컬럼 수정하기, 컬럼 추가하기

-- 테이블 만들기
-- 예) 부서정보를 저장하기 위한 테이블 생성하기
-- 테이블명 : TB_DEPARTMENT
CREATE TABLE TB_DEPARTMENT (
    DNO   NUMBER(2)
    ,DNAME VARCHAR2(20)
    ,LOC   VARCHAR2(20)
);
-- 테이블 삭제하기
DROP TABLE TB_DEPARTMENT;

-- 테이블 복사하기

-- 데이터까지 복사 : 값이 참인 경우만 가능
CREATE TABLE TB_DEPARTMENT
    AS
        SELECT
            *
        FROM
            DEPARTMENT;

-- 데이터 빼고 구조만 복사 : 값이 거짓이라서 껍데기만 가져옴
CREATE TABLE TB_DEPARTMENT2
    AS
        SELECT
            *
        FROM
            DEPARTMENT
        WHERE
            1 = 2;
            
-- 20번 부서 소속 사원에 대한 정보를 포함한 DEPT20 테이블 생성하기
-- 테이블 이름 : TB_DEPARTMENT
CREATE TABLE TB_DEPARTMENT
    AS
        SELECT
            *
        FROM
            EMPLOYEE
        WHERE
            DNO = 20;

-- 테이블 구조를 변경하는 명령어
-- ALTER TABLE ~
CREATE TABLE TB_DEPARTMENT
    AS
        SELECT
            *
        FROM
            DEPARTMENT
        WHERE
            1 = 2;
-- TB_DEPARTMENT 테이블에 컬럼 추가
ALTER TABLE TB_DEPARTMENT ADD (
    BIRTH DATE
);

DESC TB_DEPARTMENT;

--TB_DEPARTMENT 테이블에 컬럼 변경
ALTER TABLE TB_DEPARTMENT MODIFY
    DNAME VARCHAR2(20);
    
-- TB_DEPARTMENT 테이블에 컬럼 삭제
-- BIRTH 컬럼 삭제
-- 한번에 하나만 삭제가 가능
ALTER TABLE TB_DEPARTMENT DROP COLUMN BIRTH;

-- TB_DEPARTMENT 테이블 이름을 변경하는 명령어
-- 문법) RENAME A TO B : A 테이블명을 B 테이블명으로 바꾸기
RENAME TB_DEPARTMENT TO TB_DEPARTMENT02;

RENAME TB_DEPARTMENT02 TO TB_DEPARTMENT;

-- 테이블의 모든 데이터를 제거하는 명령어(데이터 + 할당된 공간)
CREATE TABLE TB_DEPARTMENT02
    AS
        SELECT
            *
        FROM
            DEPARTMENT;
-- 데이터 확인
SELECT
    *
FROM
    TB_DEPARTMENT02;
-- 데이터 전부 삭제
TRUNCATE TABLE TB_DEPARTMENT02;

-- 추가로 오라클 DB에서 사용하는
-- 메타 정보(생성된 테이블, 컬럼정보, 유저정보 등)를 볼 수 있는 테이블
-- USER_XXX : 접속된 유저에 대한 여러가지 정보들을 보여줌(컬럼, 테이블 등)
-- ALL_XXX : 접속된 유저 + 다른 유저에 대한 정보들을 보여줌(컬럼, 테이블 등)
-- DBA_XXX : 모든 유저에 대한 정보들을 보여줌(컬럼, 테이블 등)
SELECT
    *
FROM
    USER_TABLES;

SELECT
    *
FROM
    ALL_TABLES;

DROP TABLE TB_DEPARTMENT02;
-- DDL(데이터 정의어) 실습
-- 연습문제 9) 다음 표에 명시된 대로 DEPT 테이블을 생성하시오.
-- 컬럼명 데이터 타입 크기
-- DNO     NUMBER    2
-- DNAME   VARCHAR2  14
-- LOC     VARCHAR2  13
CREATE TABLE DEPT (
    DNO   NUMBER(2)
    ,DNAME VARCHAR2(14)
    ,LOC   VARCHAR2(13)
);

DESC DEPT;
-- 연습문제 10) 다음 표에 명시된 대로 EMP 테이블을 생성하시오.
-- 컬럼명 데이터 타입 크기
-- ENO     NUMBER    4
-- ENAME   VARCHAR2  10
-- DNO     NUMBER    2
CREATE TABLE EMP (
    ENO   NUMBER(4)
    ,ENAME VARCHAR2(10)
    ,DNO   NUMBER(2)
);

DESC EMP;

-- 연습문제 11) 긴 이름을 저장할 수 있도록 EMP 테이블을 수정하시오
-- ENAME VARCHAR2(10) -> VARCHAR2(25) 수정
ALTER TABLE EMP MODIFY
    ENAME VARCHAR2(25);
    
-- 연습문제 12) EMPLOY 테이블을 복사해서 EMPLOYEE2 테이블을 생성하되,
-- 사원번호, 이름, 급여, 부서번호 컬럼만 복사하세요.
CREATE TABLE EMPLOYEE2
    AS
        SELECT
            ENO
           ,ENAME
           ,SALARY
           ,DNO
        FROM
            EMPLOYEE;
-- 추가적으로 컬럼 복사 시 컬럼명 변경가능
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
-- 연습문제 13) EMP 테이블 삭제
DROP TABLE EMP;

-- 연습문제 14) EMPLOYEE2 테이블 이름을 EMP로 변경
RENAME EMPLOYEE2 TO EMP;

-- 연습문제 15) DEPT 테이블에서 DNAME 컬럼 제거
ALTER TABLE DEPT DROP COLUMN DNAME;

DESC DEPT;

-- DML(Data Maniqulation Language) : 데이터 조작 언어
-- INSERT / UPDATE / DELETE

-- 쓸모없는 테이블 검색 및 삭제
SELECT
    *
FROM
    USER_TABLES;

DROP TABLE DEPT;

-- 테스트용 테이블 만들기
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
-- 데이터 삭제
TRUNCATE TABLE DEPT_COPY;
-- 데이터 추가하기 : INSERT
INSERT INTO DEPT_COPY VALUES (
    10
   ,'ACCOUNTING'
   ,'NEW YORK'
);

SELECT
    *
FROM
    DEPT_COPY;
-- 추가한 데이터를 영구반영
COMMIT;

-- DEPT_COPY(데이터 순서) : VALUES(데이터는 DEPT_COPY의 데이터순서에 대응함)
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
-- 추가한 데이터를 영구반영
COMMIT;

-- 데이터 추가
-- 1) NULL인 값은 생략하고 추가
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
-- 2) 명시적으로 NULL 추가
INSERT INTO DEPT_COPY VALUES (
    60
   ,'OPERATIONS'
   ,NULL
);

SELECT
    *
FROM
    DEPT_COPY;

-- 테스트 데이터 및 EMP_COPY 테이블 만들기
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
    
-- EMP_COPY 테이블에 데이터 넣기
-- '2012/05/01' -> TO_DATE('2012/05/01') 와 동일함
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

-- 데이터 잘못 넣었을 때 되돌리기
-- COMMIT 되기 전으로 되돌림(작업 취소)
ROLLBACK;

COMMIT;
-- 다른 테이블의 데이터를 복사해서 INSERT 하기
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
    
-- 데이터 수정하기 : UPDATE
SELECT
    *
FROM
    DEPT_COPY;
    
-- 일반적인 사용 형태 -> UPDATE = WHERE 조건절
-- 문법)
-- UPDATE 테이블명
-- SET 컬럼명 = '수정할값'
-- WHERE 조건
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

-- 문제 1) DEPT_COPY 테이블에 부서명이 'SALES'인 부서만 LOC 컬럼을 'PUSAN'으로 수정
UPDATE DEPT_COPY
SET
    LOC = 'PUSAN'
WHERE
    DNAME = 'SALES';

SELECT
    *
FROM
    DEPT_COPY;
    
-- 응용문제 2) DEPT_COPY 테이블에 부서번호가 20인 부서만
-- 부서 이름을 'JAVA'로 수정, LOC 컬럼을 'SEOUL'로 수정
UPDATE DEPT_COPY
SET
    DNAME = 'JAVA'
,LOC = 'SEOUL'
WHERE
    DNO = 20;
    
-- 특이한 예) DEPT_COPY 테이블에서 부서번호가 10인 LOC 데이터를 가져와서
-- 부서번호가 20인 LOC 데이터로 수정하기
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
    
-- DELETE : 테이블의 내용을 삭제하는 DML 명령어
-- 문법 : 
-- DELETE FROM(생략가능) 테이블명
-- WHERE 조건;
DELETE DEPT_COPY
WHERE
    DNO = 10;

SELECT
    *
FROM
    DEPT_COPY;

ROLLBACK;

-- 문제 2) DEPT_COPY 테이블에서 부서번호(DNO)가 20, 30인 데이터를 삭제하시오.
DELETE DEPT_COPY
WHERE
    DNO IN ( 20,30 );

COMMIT;

-- 참고) DELETE ~ 서브쿼리 사용 가능
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
    
-- 참고) ROLLBACK / COMMIT
-- 트랙잭션(Transaction) 관리
-- ROLLBACK : INSERT / UPDATE / DELETE 실행 취소
-- COMMIT : INSERT / UPDATE / DELETE 실행 영구 반영
-- 예) 트랜잭션 시작
--     INSERT ~
--     UPDATE ~
--     DELETE ~
--     COMMIT(ROLLBACK) : 트랜잭션 종료
-- 참고사항) CUTOCOMMIT : 자동 DB 영구 반영
--          ORACLE DB : AUTOCOMMIT = FALSE
--          MYSQL/MARIADB DB : AUTOCOMMIT = TRUE

-- 연습문제 9 : DML(데이터 조작어) 실습
-- 연습한 임시테이블 정리
SELECT
    *
FROM
    USER_TABLES;

DROP TABLE DEPT_COPY;

-- 연습문제 1) EMP 테이블의 구조만 복사하여 EMP_INSERT 란 이름의 빈 테이블을 만드시오.
CREATE TABLE EMP_INSERT
    AS
        SELECT
            *
        FROM
            EMPLOYEE
        WHERE
            1 = 2;

-- 연습문제 2) 본인을 EMP_INSERT 테이블에 추가하되 SYSDATE를 이용하여
-- 입사일을 오늘로 입력하시오
INSERT INTO EMP_INSERT VALUES (
    33
   ,'이구민'
   ,'PROGRAMER'
   ,NULL
   ,SYSDATE
   ,10000
   ,1000
   ,10
);

-- 컬럼 목록을 보는 딕셔너리
SELECT
    *
FROM
    USER_TAB_COLUMNS
ORDER BY
    TABLE_NAME
   ,COLUMN_ID;

-- 연습문제 3) 다른사람을 EMP_INSERT(임시 직원테이블) 테이블에 SYSDATE를 이용하여
-- 입사일을 어제로 입력하세요
INSERT INTO EMP_INSERT VALUES (
    21
   ,'홍길동'
   ,'PROGRAMER'
   ,NULL
   ,SYSDATE - 1
   ,10000
   ,1000
   ,10
);
-- 연습문제 4) EMPLOYEE 테이블의 구조와 내용을 복사하여 EMP_COPY란 이름의 테이블을 만드시오.
CREATE TABLE EMP_COPY
    AS
        SELECT
            *
        FROM
            EMPLOYEE;
            
            
-- 연습문제 5) 사원번호가 7788인 사원의 부서번호를 10번으로 수정하시오.
UPDATE EMP_COPY
SET
    DNO = 10
WHERE
    ENO = 7788;

-- 6) 사원번호 7788의 담당 업무(JOB) 및 급여(SALARY)를 사원번호 7499의
--    담당 업무 및 급여와 일치하도록 수정하시오.
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
-- 7) DEPARTMENT 테이블의 구조와 내용을 복사하여 DEPT_COPY란 이름의 테이블을
--    만드시오.
CREATE TABLE DEPT_COPY
    AS
        SELECT
            *
        FROM
            DEPARTMENT;

-- 8) DEPT_COPY 테이블에서 부서명(DNAME)이 RESEARCH인 부서를 제거하시오.
DELETE DEPT_COPY
WHERE
    DNAME = 'RESEARCH';

-- 9) DEPT_COPY 테이블에서 부서 번호가 10이거나 40인 부서를 제거하시오.
DELETE DEPT_COPY
WHERE
    DNO IN ( 10,40 );
    
-- 도전과제 10) DEPT_COPY 테이블에서 부서명이(DNAME)이 'SALES'이면
-- 지역명(LOC)에 'SEOUL'이라고 수정하고, 아니면, 'BUSAN'으로 수정하시오.
UPDATE DEPT_COPY
SET
    LOC = DECODE(DNAME,'SALES','SEOUL','BUSAN');
    
    -- 2022-05-04 데이터무결성(PK/FK) 실습
-- 제약조건(Constraint)
-- 테이블의 컬럼에 유효하지 않는 값을 걸러내기 위해 걸어주는 것
-- 무결성 제약조건

--1) NOT NULL : NULL 값이 들어올 수 없게 함
CREATE TABLE CUSTOMER (
    ID      VARCHAR2(20) NOT NULL
    ,PWD     VARCHAR2(20) NOT NULL
    ,NAME    VARCHAR2(20) NOT NULL
    ,PHONE   VARCHAR2(30)
    ,ADDRESS VARCHAR2(100)
);

-- NOT NULL INSERT 테스트
INSERT INTO CUSTOMER VALUES (
    NULL
   ,NULL
   ,NULL
   ,'010-1111-1111'
   ,'BUSAN'
); -- 제약조건으로 인해 에러가 일어남, 정상적으로 NOT NULL이 작동

-- 2) UNIQUE : 테이블의 컬럼에 데이터가 무조건 유일한 값만 들어갈 수 있게 함
-- 즉, 데이터값 중복 불가(단, NULL은 제약조건에 위반되지 않음)
CREATE TABLE CUSTOMER2 (
    ID      VARCHAR2(20) UNIQUE
    ,PWD     VARCHAR2(20) NOT NULL
    ,NAME    VARCHAR2(20) NOT NULL
    ,PHONE   VARCHAR2(30)
    ,ADDRESS VARCHAR2(100)
);

-- UNIQUE 테스트
INSERT INTO CUSTOMER2 VALUES (
    '1'
   ,'1111'
   ,'홍길동'
   ,'010-1111-1111'
   ,'BUSAN'
);

INSERT INTO CUSTOMER2 VALUES (
    '1'
   ,'1111'
   ,'홍길동'
   ,'010-1111-1111'
   ,'BUSAN'
); -- 증복된 데이터로 무결성 제약 조건에 위배된다는 오류가 뜸

-- 3) CONSTRAINT : 제약조건에 이름을 지정할 수 있음
-- 주로 관리목적으로 사용
CREATE TABLE CUSTOMER3 (
    ID      VARCHAR2(20)
        CONSTRAINT UK_ID UNIQUE
    ,PWD     VARCHAR2(20) NOT NULL
    ,NAME    VARCHAR2(20) NOT NULL
    ,PHONE   VARCHAR2(30)
    ,ADDRESS VARCHAR2(100)
);

-- 제약조건을 보는 딕셔너리
SELECT
    *
FROM
    USER_CONSTRAINTS
WHERE
    TABLE_NAME = 'CUSTOMER3';
    
-- 4) PRIMARY KEY : *****
-- UNIQUE + NOT NULL + INDEX 자동생성 효과
CREATE TABLE CUSTOMER4 (
    ID      VARCHAR2(20)
    ,PWD     VARCHAR2(20) NOT NULL
    ,NAME    VARCHAR2(20) NOT NULL
    ,PHONE   VARCHAR2(30)
    ,ADDRESS VARCHAR2(100)
    ,CONSTRAINT PK_ID PRIMARY KEY ( ID )
);

-- PRIMARY KEY 테스트
INSERT INTO CUSTOMER4 VALUES (
    NULL
   ,'1111'
   ,'홍길동'
   ,'010-1111-1111'
   ,'BUSAN'
);

INSERT INTO CUSTOMER4 VALUES (
    '1'
   ,'1111'
   ,'홍길동'
   ,'010-1111-1111'
   ,'BUSAN'
);

ROLLBACK;

-- 5) FOREIGN KEY : 참조되는 테이블에 컬럼 값이 항상 존재해야 함
-- 부모테이블(ID : 1,2,3,) - 자식테이블(ID: 1,2,3, FDSA) => 부모테이블에 없는
-- 'FDSA'값 때문에 에러가 남
-- 예) 부모테이블 : 부서테이블(영업, 기술, 운영), 자식테이블(영업, 기술, 운영) : 직원 => FK(참조 무결성)
SELECT
    *
FROM
    DEPARTMENT;

-- FK 테스트 테이블
CREATE TABLE EMP_SECOND (
    ENO   NUMBER(4)
        CONSTRAINT PK_ENO PRIMARY KEY
    ,ENAME VARCHAR2(10)
    ,JOB   VARCHAR2(9)
    ,DNO   NUMBER(2)
        CONSTRAINT FK_DNO2
            REFERENCES DEPARTMENT
);
-- FK 테스트
INSERT INTO EMP_SECOND (
    ENO
    ,ENAME
    ,DNO
) VALUES (
    0000
   ,'이순신'
   ,50
);

-- 6) DEFAULT 제약조건
-- 컬럼에 데이터가 아무런 값이 입력되지 않았을 때 디폴트로 지정된 값이 입력됨
CREATE TABLE EMP_THIRD (
    ENO    NUMBER(4)
        CONSTRAINT PK_ENO2 PRIMARY KEY
    ,ENAME  VARCHAR2(10)
    ,SALARY NUMBER(7,2) DEFAULT 1000
);

-- DEFAULT 테스트
INSERT INTO EMP_THIRD (
    ENO
    ,ENAME
) VALUES (
    8000
   ,'홍길동'
);

SELECT
    *
FROM
    EMP_THIRD;

--테이블 정리
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

-- EMP_COPY 테이블
CREATE TABLE EMP_COPY
    AS
        SELECT
            *
        FROM
            EMPLOYEE;
            
-- DEPT_COPY 테이블
CREATE TABLE DEPT_COPY
    AS
        SELECT
            *
        FROM
            DEPARTMENT;
            
-- 테이블 생성 후 제약조건 걸기
ALTER TABLE EMP_COPY ADD CONSTRAINT PK_EMP_COPY_ENO PRIMARY KEY ( ENO );

-- 테스트
SELECT
    *
FROM
    USER_CONSTRAINTS
WHERE
    TABLE_NAME = 'EMP_COPY';
    
-- FOREIGN KEY 생성을 위한 PRIMARY KEY 생성
ALTER TABLE DEPT_COPY ADD CONSTRAINT PK_DEPT_COPY_DNO PRIMARY KEY ( DNO );
-- FOREIGN KEY 생성 : EMP_COPY에 DEPT_COPY를 부모 삼아 제약을 생성
ALTER TABLE EMP_COPY
    ADD CONSTRAINT FK_EMP_COPY_DNO FOREIGN KEY ( DNO )
        REFERENCES DEPT_COPY ( DNO );
        
-- 제약조건이 생성된 후 삭제하기
-- 에러) 먼저 자식테이블의 FOREIGN KEY를 제거하고, 부모테이블의 PRIMARY KEY를 제거
ALTER TABLE DEPT_COPY DROP PRIMARY KEY; -- 에러남

-- 알아서 삭제해주는 명령어 CASCADE
-- PRIMARY KEY와 동시에 자식테이블의 FOREING KEY를 찾아서 삭제해줌
ALTER TABLE DEPT_COPY DROP PRIMARY KEY CASCADE;

SELECT
    *
FROM
    USER_CONSTRAINTS
WHERE
    TABLE_NAME = 'EMP_COPY';
    
-- 연습문제 1번 : 제약조건(Constraint) 실습
-- 1) EMPLOYEE 테이블의 구조를 복사하여 EMP_SAMPLE란 이름의 테이블을 만드시오.
CREATE TABLE EMP_SAMPLE
    AS
        SELECT
            *
        FROM
            EMPLOYEE
        WHERE
            1 = 0;
--   사원 테이블의 사원번호 컬럼(ENO)에 테이블 레벨로 PRIMARY KEY 제약조건을 지정하되,
--   제약 조건 이름은 PK_MY_EMP 하시오.
ALTER TABLE EMP_SAMPLE ADD CONSTRAINT PK_MY_EMP PRIMARY KEY ( ENO );

-- 참고) 제약조건에 따른 테이블, 컬럼을 보는 SQL문
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
            
-- 2) DEPARTMENT 테이블의 구조를 복사하여 DEPT_SAMPLE란 이름의 테이블을 만드시오.
CREATE TABLE DEPT_SAMPLE
    AS
        SELECT
            *
        FROM
            DEPARTMENT
        WHERE
            1 = 0;
--   부서번호 컬럼(DNO)에 PRIMARY KEY 제약조건을 지정하되,
--   제약 조건 이름은 PK_MY_DEPT 하시오.
ALTER TABLE DEPT_SAMPLE ADD CONSTRAINT PK_MY_DEPT PRIMARY KEY ( DNO );

SELECT
    *
FROM
    USER_CONSTRAINTS
WHERE
    TABLE_NAME = 'DEPT_SAMPLE';

-- 3) 사원 테이블의 부서번호 컬럼에 존재하지 않는 부서의 사원이 배정되지 않도록
--    외래 키(FOREIGN KEY:FK) 제약조건을 지정하되, FK_MY_DEPT_EMP 로 하시오.
ALTER TABLE EMP_SAMPLE
    ADD CONSTRAINT FK_MY_DEPT_EMP FOREIGN KEY ( DNO )
        REFERENCES DEPARTMENT ( DNO );

SELECT
    *
FROM
    USER_CONSTRAINTS
WHERE
    TABLE_NAME = 'EMP_SAMPLE';
    
-- 2022-05-04 뷰(VIEW) 실습
-- 뷰(VIEW) : 가상 테이블( 공간이 할당되어서 저장하고 있지 않음 )
-- 빠르게 자료상태를 보면서 작업할때 사용
-- 뷰에 저장된 것 : SQL문(SELECT문)
-- 비교) 테이블 : 공간이 할당되어 디스크에 저장되고 있음
-- 예)

--cmd에서 작업
-- GRANT 권한 TO 계정 : 권한 주기
-- REVOKE 권한 FROM 계정 : 권한 뺐기
--*sql 접속
--sqlplus /nolog

--* 최고 관리자 접속
--conn /as sysdba

--* view 생성에 대한 모든 권한 부여
--grant create any view to scott;

--* view 생성에 대한 모든 권한 취소
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
    
-- 사원 테이블에는 급여정보가 포함되어 있습니다.(급여정보 : 비밀)
-- => VIEW를 생성하여 정보제외
CREATE VIEW V_EMP_SAMPLE AS
    SELECT
        ENO
       ,ENAME
       ,JOB
       ,MANAGER
       ,DNO
    FROM
        EMPLOYEE;
        
-- 참고사항) 접속한 유저의 뷰 목록을 보고 싶을때 조회하는 딕셔너리
SELECT
    VIEW_NAME
   ,TEXT
FROM
    USER_VIEWS;
    
-- 그룹함수를 쓴 SELECT 문을 뷰(VIEW)로 만들기
CREATE OR REPLACE VIEW VW_EMP_SALARY AS
    SELECT
        DNO
       ,SUM(SALARY)        AS "총급여"
       ,TRUNC(AVG(SALARY)) AS "평균급여"
    FROM
        EMPLOYEE
    GROUP BY
        DNO; -- SELECT문에 그룹함수가 있는 컬럼에 별칭을 줘야함(안그러면 에러)
        
-- 뷰 삭제하기
SELECT
    *
FROM
    USER_VIEWS;

DROP VIEW VM_EMP_JOB;

DROP VIEW V_EMP_SAMPLE;

DROP VIEW VW_EMP_SALARY;

-- 연습문제 1번 : 뷰(VIEW) 실습
-- 1) 20번 부서에 소속된 사원의 사원번호와 이름과 부서번호를 출력하는 VIEW 정의
CREATE OR REPLACE VIEW VW_TEST_EMP AS
    SELECT
        ENO
       ,ENAME
       ,DNO
    FROM
        EMPLOYEE
    WHERE
        DNO = 20;
-- 2) 이미 생성되어 있는 상기 뷰에 대해 급여 역시 출력하도록 수정
-- 그냥 덮어씌울 수 있음
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
        
-- SEQUENCE 생성
-- 개발할 때 키값(ID) : 자동 증가하는 값을 사용
-- DB에서 자동 증가하는 값을 만들어줄 수 있음(채번) => SEQUENCE
-- 예) 시작 값이 10이고 10씩 증가하는 시퀀스 생성하기(이름: SQ_EMP)

-- CREATE SEQUENCE  시퀀스이름
-- START WITH N : 시퀀스 번호의 시작을 지정
-- INCREMENT BY N : N씩 증가
-- MINVALUE N : N 시퀀스 최소값
-- MAXVALUE N : N 시퀀스 최대값
CREATE SEQUENCE SQ_EMP INCREMENT BY 1 START WITH 10;

-- 시퀀스 목록보기 딕셔너리
SELECT
    *
FROM
    USER_SEQUENCES;

-- 시퀀스 테스트 (증가하는지 보기)
-- NEXTVAL : 다음 값
SELECT
    SQ_EMP.NEXTVAL
FROM
    DUAL;
-- CURRVAL : 현재 값
SELECT
    SQ_EMP.CURRVAL
FROM
    DUAL;

-- 개발 예)
-- 부서번호를 위한 시퀀스 생성
CREATE SEQUENCE SQ_DEPT INCREMENT BY 1 START WITH 1;

-- 테스트용 빈 부서테이블 생성
CREATE TABLE DEPT_COPY2
    AS
        SELECT
            *
        FROM
            DEPARTMENT
        WHERE
            1 = 0;
-- 데이터 추가하기
INSERT INTO DEPT_COPY2 VALUES (
    SQ_DEPT.NEXTVAL
   , -- 1부터 시작하면서 실행하면 계속 1씩 증가하여 들어감
   'ACCOUNTING'
   ,'NEW YORK'
);

SELECT
    *
FROM
    DEPT_COPY2;

-- 시퀀스 제거하기
SELECT
    *
FROM
    USER_SEQUENCES;

DROP SEQUENCE SQ_DEPT;

DROP SEQUENCE SQ_EMP;

-- 2022-05-04 INDEX 생성(*****)
-- 대상 컬럼에 생성을 함
-- 인덱스 목적 : 조회(SELECT) 성능을 높이기 위해서 인덱스를 생성
-- 인덱스 알고리즘 : B * TREE (검색 속도 향상 알고리즘)
-- 인덱스를 걸어야하는 컬럼
-- 1) 테이블에 행의 수가 너무 많을 때 : 10만건 이상
-- 2) WHERE 절에 대상 컬럼이 너무 자주 나올 때
-- 3) 검색 결과 전체의 대략 2~5%를 차지할 때
-- 4) 조인에 사용되는 컬럼은 인덱스를 거는것을 '고려'

-- CREATE INDEX 인덱스이름
-- ON 테이블명(컬럼명)
-- 예)
CREATE INDEX IDX_EMPLOYEE_ENAME ON
    EMPLOYEE (
        ENAME
    );
    
-- 인덱스 생성 확인(인덱스 전용 딕셔너리)
SELECT
    *
FROM
    USER_IND_COLUMNS
WHERE
    TABLE_NAME = 'EMPLOYEE';
    
-- 인덱스 삭제
DROP INDEX IDX_EMPLOYEE_ENAME;

-- 특수) 결합 인덱스 : 투개 이상의 컬럼으로 구성하는 인덱스
CREATE INDEX IDX_DEPT_COM ON
    DEPARTMENT (
        DNAME
    ,LOC
    );
    
-- 특수) 함수 기반 인덱스 : 수식이나 함수를 적용해서 만든 인덱스
CREATE INDEX IDX_EMP_ANNSAL ON
    EMPLOYEE ( SALARY * 12 );
    
    
-- 연습문제 1번 : 시퀀스 & 인덱스 실습
-- 1) 사원 테이블의 사원번호가 자동으로 생성되도록 시퀀스를 생성하시오.
--  시퀀스 이름 : SQ_EMP , 시작번호 : 1, 증가 : 1, 최대값 : 100000
CREATE SEQUENCE SQ_EMP INCREMENT BY 1 START WITH 1 MAXVALUE 100000;

-- 2) 사원번호를 시퀀스로부터 발급받으시오.
-- 임시 사원 테이블 : EMP01
--                  컬럼명 : EMPNO NUMBER(4) PRIMARY KEY,
--                          ENAME VARCHAR2(10),
--                          HIREDATE DATE
CREATE TABLE EMP01 (
    EMPNO    NUMBER(4) PRIMARY KEY
    ,ENAME    VARCHAR2(10)
    ,HIREDATE DATE
);
-- INSERT문을 이용해서 EMPNO에 시퀀스값을 추가 하시오.
INSERT INTO EMP01 VALUES (
    SQ_EMP.NEXTVAL
   ,'홍길동'
   ,SYSDATE
);
-- (단, 이름이나 날짜는 임의로 하시오)

SELECT
    *
FROM
    EMP01;
-- 3) EMP01 테이블에 이름 컬럼에 INDEX를 생성하시오.(인덱스명: IDX_EMP01_ENAME)
CREATE INDEX IDX_EMP01_ENAME ON
    EMP01 (
        ENAME
    );
    
-- 유저만들기
-- CMD에서 실행
--* USER 생성에 대한 권한 부여
--grant create user to scott;
-- SCOTT 유저 권한상승 : 롤(ROLE : 여러 권한들을 모두 모아놓은 것)
-- CONNECT(접속에 관련된 권한 모음집)
-- RESOURCE(테이블, 뷰, 프로시저 생성 권한 모음집)
-- DBA(유저, DB관리 등등 최상위 권한 모음집)

-- CMD에서 실행
-- 유저 생성
-- CREATE USER 유저명
-- INDENTIFIED BY 비밀번호
-- 오라클 공간관리 영역 : TABLESPACE
CREATE USER GUEST03 IDENTIFIED BY 1234
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

-- 권한 종류
-- CREATE TABLE : 테이블 생성 권한
-- CREATE VIEW : 뷰 생성 권한
-- CREATE SEQUENCE : 시퀀스 생성 권한

-- 권한부여 명령어
-- GRANT 권한(롤) TO 유저명

-- 권한취소 명령어
-- REVOKE 권한(롤) FROM 유저명

-- 동의어 : 테이블 : SELECT * FROM SCOTT3.EMPLOYEE
--                  별칭으로 변경해서 이름을 정의해줄 수 있음
-- 허나 관리자만 가능해서 개발자는 몰?루 해도 됨

-- 연습문제 01) KBS라는 사용자를 생성하세요. 암호는 1234
-- DEFAULT TABLESPACE 명은 USERS 사용
-- TEMPORARY TABLESPACE 명은 TEMP 사용
CREATE USER KBS IDENTIFIED BY 1234 DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE
TEMP;
-- 연습문제 02) 1번에서 생성한 유저에 CONNECT, RESOURCE 권한(롤)을 부여
GRANT CONNECT,RESOURCE TO KBS;

-- 2022-05-06
-- 서브쿼리(SUBQUERY) ****
-- SELECT 안에 또다른 SELECT가 포함된 형태
-- 문법) SELECT 컬럼리스트
--       FROM  테이블명
--       WHERE 컬럼명 = (SELECT 문)
-- 예) SCOTT와 동일한 부서에서 근무하는 사원 출력하기
-- 서브쿼리 : 데이터 1건만 비교해야함
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
    
-- 문제 1) 최소 급여를 받는 사원의 이름, 담당업무, 급여 출력하기
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
    
-- 메인 쿼리에 HAVING 절 사용하기
SELECT
    DNO
   ,MIN(SALARY) AS 최소급여
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

-- EXISTS 사용 예
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
    
-- 문제 2) 최소 급여를 받는 사원의 이름, 담당 업무 및 급여를 표시하시오
-- (그룹함수 사용)
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
    
-- 문제 3) 평균 급여가 가장 적은 사원의 담당 업무를 찾아 직급과 평균 급여를 표시하시오
-- 어려운 문제
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

-- 2022-05-06 연습문제
-- 문제 5) 각 부서의 최소 급여를 받는 사원의 이름, 급여, 부서번호를 표기하시오.
-- 힌트 : IN 서브쿼리
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
    
-- 프로시저 호출(프로시저가 정의돼 있어야함)
CALL PL_TEST('해외부','연산동');
    
-- 함수 호출(함수가 정의돼 있어야함)
SELECT
    FN_TEST02(50)
FROM
    DUAL;
    
    -- 2022-05-06 SQL 튜닝
-- SQL 튜닝
-- SQL 실행되는 순서
-- 1번) FROM EMPLOYEE
-- 2번) WHERE ENO = 7788 ( 이곳에 조건을 거는게 속도가 빠름 )
-- 3번) GROUP BY DNO
-- 4번) HAVING절 ( 
-- 5번) SELECT DNO
-- 6번) ORDER BY ( 조회 속도 저하 )
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
    
-- 의사 컬럼 : ROWNUM
SELECT
    ROWNUM
FROM
    EMPLOYEE;