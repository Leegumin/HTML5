-- 검색(R)

-- 한 컬럼만 보기>
SELECT
    DEPTNO -- 컬럼명
FROM
    DEPT; -- 테이블명

-- * : ALL COLUMN (DEPTNO, DNAME, LOC)
SELECT
    *
FROM
    DEPT;

--조건에 맞는 데이터 가져오기>
--WHERE [조건절]  : 조건 문법
--DEPT 테이블에 DNAME(부서이름)이 'SALES'인 데이터를 가져오세요
SELECT
    DNAME
FROM
    DEPT
WHERE
    DNAME = 'SALES'; -- 조건

--WHERE [조건컬럼] LIKE 'S%'>
--조건컬럼에 'S'로 시작되는 문자열은 모두 가져옴
--LIKE '%S' : 조건컬럼에 'S'로 끝나는 문자열은 모두 가져옴
--LIKE '%S%' : 조건컬럼에 'S'가 포함되는 문자열은 모두 가져옴
SELECT
    ENAME
FROM
    EMP
WHERE
    ENAME LIKE 'S%';
    
--LIKE '_A%' : 앞에서 두번째 A를 포함하는 모든 문자열을 출력
--LIKE '__A%' : 앞에서 세번째 A를 포함하는 모든 문자열을 출력
SELECT
    *
FROM
    EMPLOYEE
WHERE
    ENAME LIKE '_A%';

--내장함수 UPPER(문자열) : 대문자로 바꾸기
--내장함수 LOWER(문자열) : 소문자로 바꾸기
--DB 테이블 데이터는 대소문자를 별개의 문자열로 인식함
SELECT
    JOB,
    ENAME
FROM
    EMP
WHERE
    JOB = UPPER('manager');

--정렬 : 오름차순
--ORDER BY (컬럼명) ASC(ASCENDING)
SELECT
    *
FROM
    DEPT
ORDER BY
    DNAME ASC;

--정렬 : 내림차순
--ORDER BY (컬럼명) DESC(DESCENDING)
SELECT
    *
FROM
    DEPT
ORDER BY
    DNAME DESC;


--복수 정렬은 각각의 컬럼에 대해 DESC/ASC를 각각 걸어주어야하며 처음 진행 컬럼을 기준으로 다시 진행됨
SELECT
    ENAME,
    EMPNO
FROM
    EMP
WHERE
    JOB = 'CLERK'
--ENAME가 먼저 내림차순된 후 고정되고 증복값이 있다면 EMPNO가 ASC로 오름차순 됨
ORDER BY
    ENAME DESC,
    EMPNO; --오름차순 ASC는 생략 가능
--ORDER BY 2 DESC, 1; --컬럼ID(숫자)로도 사용 가능

--DESC 테이블명
--테이블의 구조를 보여주는 명령어
--NUMBER : 정수, 실수를 표기하는 자료형
--NUMBER(4) : 4는 숫자 4자리
--NUMBER(7,2) : 7은 정수자리수, 2는 소수자리수 2자리
--VARCHAR2 : 문자열을 표기하는 자료형(*)
--VARCHAR2(10) : 10 자리수 
--UTF8 설정 : 영어(한글자) 1BYTE, 한글(한글자) 3BYTE
--DATE : 날짜를 표기하는 자료형
DESC DEPT;

--사칙연산
--SELECT 절에 컬럼 * 숫자 사칙연산이 가능
SELECT
    ENAME,
    SALARY,
    SALARY * 12
FROM
    EMPLOYEE;

--SELECT 절에 컬럼 + 다른 컬럼 => 계산 가능
--컬럼 + 다른컬럼(NULL값이 있으면) = NULL(해당 데이터)
--SALARY : 월급
--SALARY*12 : 연봉
--COMMISSION : 보너스
--SALARY*12 + COMMISSION(보너스) : 최종 1년치 연봉
--문제점) 상기 값(COMMISSION)에 NULL이 있어서 제대로 최종 1년치 연봉이 나오지 않음
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
       
--문제점) 상기 값(COMMISSION)에 NULL이 있어서 제대로 최종 1년치 연봉이 나오지 않음
--문제수정) 상기 값(COMMISSION)을 NVL(COMMISSION, 0)로 수정
--NVL(COMMISSION, 0) : NULL의 값을 0으로 변환
--NVL(컬럼명, 변경값) : 컬럼명의 NULL값을 변경값으로 변환하는 내장함수
--AS 별칭(ALIAS) : 출력되는 컬럼명 변경가능
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
    
--컬럼에 별칭(ALIAS)주기       
--""안에 기입하면 특수문자, 띄어쓰기 가능
SELECT
    ENAME                            AS "이       름",
    SALARY                           AS "월$%급",
    JOB                              AS 직업,
    DNO,
    NVL(COMMISSION, 0)               AS 보너스,
    SALARY * 12                      AS "연       봉",
    SALARY * 12 + NVL(COMMISSION, 0) AS 최종연봉
FROM
    EMPLOYEE;
-----------------------------------------------------------------
--DISTINCT : 출력결과에서 중복을 제거하는 명령어
SELECT DISTINCT
    DEPTNO AS 부서번호
FROM
    EMP;

-------------------------------------------------------------------
--현재 시간, 날짜 출력하는 내장함수
--테이블이 가지고 있는 데이터 개수만큼 나옴
SELECT
    SYSDATE
FROM
    DEPARTMENT;

--조건 : 범위 검색
--1500 이상의 SALARY를 받는 사람들을 검색
-- = : 같음, > : ~보다 큼, < : ~보다 작음, <> : 같지 않음
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SALARY >= 1500;

--문자열 검색
SELECT
    *
FROM
    EMPLOYEE
WHERE
    ENAME = 'SCOTT';

--날짜 데이터 검색
SELECT
    *
FROM
    EMPLOYEE
WHERE
    HIREDATE <= '1981/01/01';
--------------------------------------------------------------------
--날짜 포맷을 변경해서 문자열로 출력하는 내장 함수
--TO_CHAR(컬럼명, 변경포맷)
--TO_CHAR(SYSDATE, 'YYYY-MM-DD') : SYSDATE를 'YYYY-MM-DD' 형식으로 변환
SELECT
    TO_CHAR(SYSDATE, 'YYYY-MM-DD')
FROM
    DUAL;
    
--'YYYYMMDD' 형식으로 변환
SELECT
    TO_CHAR(SYSDATE, 'YYYYMMDD')
FROM
    DUAL;
    
--'YYYY/MM/DD' 형식으로 변환
SELECT
    TO_CHAR(SYSDATE, 'YYYY/MM/DD')
FROM
    DUAL;

--문자열을 날짜 데이터 형식으로 변경하는 내장 함수
--TO_DATE(컬럼명, 변경포맷)
SELECT
    TO_DATE('2022-04-29 17:10:01', 'YYYY-MM-DD HH24:MI:SS')
FROM
    DUAL;

SELECT
    TO_DATE('2017-05-12 23:59:59', 'YYYY-MM-DD HH24:MI:SS')
FROM
    DUAL;

--논리연산자 :  AND(동시에 참), OR(둘 중 하나가 참), NOT(반대)
--문제 2) 부서번호가 10이고 직급이 'MANAGER'인 사원만 출력하기
--DNO : 부서번호
--JOB : 직급
--대상테이블 : EMPLOYEE
SELECT
    *
FROM
    EMPLOYEE
WHERE
        DNO = 10
    AND JOB = 'MANAGER';

--문제 3) 부서번호가 10이거나 직급이 'MANAGER'인 사원만 출력하기
SELECT
    *
FROM
    EMPLOYEE
WHERE
    DNO = 10
    OR JOB = 'MANAGER';

--문제 4) 10번 부서에 소속된 사원만 제외하고 나머지 사원 출력
SELECT
    *
FROM
    EMPLOYEE
WHERE
    NOT DNO = 10;

--범위 검색2
--BETWEEN
SELECT
    *
FROM
    EMPLOYEE
WHERE
        SALARY >= 1000
    AND SALARY <= 1500;
    
--위와 동일한 결과
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
    
--위와 동일한 결과
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
--위와 동일한 결과
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
--위랑 동일한 문법
SELECT
    *
FROM
    EMPLOYEE
WHERE
    COMMISSION NOT IN ( 300, 500, 1400 );
-----------------------------------------------------------
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


-------------------------------------------------------------------
--오라클 내장 함수
--테스트용, 간이 계산용 내장 테이블 소개
--테이블명 : DUAL

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
    'Oracle mania',
    UPPER('Oracle mania')   AS 대문자,
    LOWER('Oracle mania')   AS 소문자,
    INITCAP('Oracle mania') AS "첫글자 대문자"
FROM
    DUAL;
    
--직원 테이블
SELECT
    ENAME,
    LOWER(ENAME),
    JOB,
    INITCAP(JOB)
FROM
    EMPLOYEE;
    
--SCOTT 사원 검색하기
--컬럼의 데이터를 일괄 소(대)문자로 변경하여 비교 가능
--허나 성능 떨어짐
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
    
--내장함수 2) 문자길이를 반환하는 함수
--LENGTH(문자열) : 한글/영어 상관 없이 문자개수를 세어서 반환
SELECT
    LENGTH('OrAcleMania'),
    LENGTH('오라클매니아')
FROM
    DUAL;
    
--내장함수 3) 문자 조작 함수
--CONCAT : 문자의 값을 연결하는 함수
--문자열 || 문자열 : 문자의 값을 연결
SELECT
    'Oracle',
    'mania',
    CONCAT('Oracle', 'mania'),
    'Oracle' || 'mania'
FROM
    DUAL;
    
--내장함수 4) 문자 조작 함수
--문자열 자르기
--substr(대상컬럼(문자), 시작위치, 개수) : 인덱스가 1부터 시작
--시작위치를 -1로 줄 경우 끝에서부터 시작
--substrb(대상컬럼(문자), 시작위치, 개수) : 문자 byte 기준으로 출력
--영문(1byte) : substr/substrb 결과 동일
--한글(3byte) : substr/substrb 결과 다름
SELECT
    SUBSTR('Oracle mania', 4, 3),
    SUBSTR('Oracle mania', - 1, 1)
FROM
    DUAL;
    
--내장함수 5) 문자열에서 대상 문자 찾아서 인덱스 번호 반환
--오라클에서는 인덱스번호가 1부터 시작함
--instr(대상컬럼(문자), 찾을문자, 시작위치, 몇번째 발견)
SELECT
    INSTR('Oracle mania', 'a')
FROM
    DUAL;
    
--5번째부터 시작하여 2번째 발견된 'a'인덱스를 반환
SELECT
    INSTR('Oracle mania', 'a', 5, 2) 
FROM
    DUAL;
    
--WHERE 사용 가능
-- ENAME 컬럼의 데이터 3위치부터 시작하여 1번째로 발견된 'R'이 포함된 위치가 3인 데이터를 반환
SELECT
    *
FROM
    EMP
WHERE
    INSTR(ENAME, 'R', 3, 1) = 3; 