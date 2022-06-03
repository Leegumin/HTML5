--2022-04-29 실습
--DESC 테이블명
--테이블의 구조를 보여주는 명령어
--NUMBER : 정수, 실수를 표기하는 자료형
--NUMBER(4) : 4는 숫자 4자리
--NUMBER(7,2) : 7은 정수자리수, 2는 소수자리수 2자리
--VARCHAR2 : 문자열을 표기하는 자료형(*)
--VARCHAR2(10) : 10 자리수 
--UTF8 설정 : 영어(한글자) 1BYTE, 한글(한글자) 3BYTE
--DATE : 날짜를 표기하는 자료형
DESC EMPLOYEE;

--SELECT 절에 컬럼 * 12 사칙연산이 가능
SELECT
    ename,
    salary,
    salary * 12
FROM
    employee;

--SELECT 절에 컬럼 + 다른 컬럼 => 계산 가능
--컬럼 + 다른컬럼(NULL값이 있으면) = NULL(해당 데이터)
--SALARY : 월급
--SALARY*12 : 연봉
--COMMISSION : 보너스
--SALARY*12 + COMMISSION(보너스) : 최종 1년치 연봉
--문제점) 상기 값(COMMISSION)에 NULL이 있어서 제대로 최종 1년치 연봉이 나오지 않음
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
       
--문제점) 상기 값(COMMISSION)에 NULL이 있어서 제대로 최종 1년치 연봉이 나오지 않음
--문제수정) 상기 값(COMMISSION)을 NVL(COMMISSION, 0)로 수정
--NVL(COMMISSION, 0) : NULL의 값을 0으로 변환
--NVL(컬럼명, 변경값) : 컬럼명의 NULL값을 변경값으로 변환하는 내장함수
--AS 별칭(ALIAS) : 출력되는 컬럼명 변경가능
SELECT
    ename                            AS 이름,
    salary                           AS 월급,
    job                              AS 직업,
    dno,
    nvl(commission, 0)               AS 보너스,
    salary * 12                      AS 연봉,
    salary * 12 + nvl(commission, 0) AS 최종연봉
FROM
    employee;
--컬럼에 별칭(ALIAS)주기       
--""안에 기입하면 특수문자, 띄어쓰기 가능
SELECT
    ename                            AS "이       름",
    salary                           AS "월$%급",
    job                              AS 직업,
    dno,
    nvl(commission, 0)               AS 보너스,
    salary * 12                      AS "연       봉",
    salary * 12 + nvl(commission, 0) AS 최종연봉
FROM
    employee;

--DISTINCT : 출력결과에서 중복을 제거하는 명령어
SELECT DISTINCT
    dno AS 부서번호
FROM
    employee;

--테스트용, 간이 계산용 내장 테이블 소개
--테이블명 : DUAL
DESC DUAL;

SELECT
    10 * 4 / 3
FROM
    dual;

--현재 시간, 짜 출력하는 내장함수
--DEPARTMENT가 가지고 있는 데이터 개수만큼 나옴
SELECT
    sysdate
FROM
    department;
--DUAL : 한건만 뽑고 싶으면 사용
SELECT
    sysdate
FROM
    dual;

--조건 : 범위 검색
--1500 이상의 SALARY를 받는 사람들을 검색
-- = : 같음, > : ~보다 큼, < : ~보다 작음, <> : 같지 않음
SELECT
    *
FROM
    employee
WHERE
    salary >= 1500;

--문제 1) 직원(EMPLOYEE) 테이블에서 부서번호가 20보다 큰 직원을 모두 출력하세요
SELECT
    *
FROM
    employee
WHERE
    dno >= 20;

--문자열 검색
SELECT
    *
FROM
    employee
WHERE
    ename = 'SCOTT';

--날짜 데이터 검색
SELECT
    *
FROM
    employee
WHERE
    hiredate <= '1981/01/01';

--날짜 포맷을 변경해서 문자열로 출력하는 내장 함수
--TO_CHAR(컬럼명, 변경포맷)
--TO_CHAR(SYSDATE, 'YYYY-MM-DD') : SYSDATE를 'YYYY-MM-DD' 형식으로 변환
SELECT
    to_char(sysdate, 'YYYY-MM-DD')
FROM
    dual;
--'YYYYMMDD' 형식으로 변환
SELECT
    to_char(sysdate, 'YYYYMMDD')
FROM
    dual;
--'YYYY/MM/DD' 형식으로 변환
SELECT
    to_char(sysdate, 'YYYY/MM/DD')
FROM
    dual;

--문자열을 날짜 데이터 형식으로 변경하는 내장 함수
--TO_DATE(컬럼명, 변경포맷)
SELECT
    TO_DATE('2022-04-29 17:10:01', 'YYYY-MM-DD HH24:MI:SS')
FROM
    dual;

SELECT
    TO_DATE('2017-05-12 23:59:59', 'YYYY-MM-DD HH24:MI:SS')
FROM
    dual;

--논리연산자 :  AND(동시에 참), OR(둘 중 하나가 참), NOT(반대)
--문제 2) 부서번호가 10이고 직급이 'MANAGER'인 사원만 출력하기
--DNO : 부서번호
--JOB : 직급
--대상테이블 : EMPLOYEE
SELECT
    *
FROM
    employee
WHERE
        dno = 10
    AND job = 'MANAGER';

--문제 3) 부서번호가 10이거나 직급이 'MANAGER'인 사원만 출력하기
SELECT
    *
FROM
    employee
WHERE
    dno = 10
    OR job = 'MANAGER';

--문제 4) 10번 부서에 소속된 사원만 제외하고 나머지 사원 출력
SELECT
    *
FROM
    employee
WHERE
    NOT dno = 10;

--직급이 'MANAGER'인 사원만 제외하고 출력
SELECT
    *
FROM
    employee
WHERE
    NOT job = 'MANAGER';

--문제 5) 급여가 1000에서 1500사이의 사원을 출력하세요
SELECT
    *
FROM
    employee
WHERE
        1000 <= salary
    AND salary <= 1500;

--문제 6) 급여가 1000미만이거나 1500 초과인 사원을 출력하세요
SELECT
    *
FROM
    employee
WHERE
    NOT ( 1000 <= salary
          AND salary <= 1500 );
    --WHERE SALARY < 1000 OR SALARY > 1500;

--문제 7) COMMISSION이 300이거나, 500이거나, 1400인 사원을 출력하세요
SELECT
    *
FROM
    employee
WHERE
    commission = 300
    OR commission = 500
    OR commission = 1400;

--범위 검색2
SELECT
    *
FROM
    employee
WHERE
        salary >= 1000
    AND salary <= 1500;
--위랑 동일한 문법
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
--위랑 동일한 문법
SELECT
    *
FROM
    employee
WHERE
    salary NOT BETWEEN 1000 AND 1500;

--문제 8) 1982년에 입사한 사원 출력하기
--BETWEEN AND 써서 출력
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
--위랑 동일한 문법
SELECT
    *
FROM
    employee
WHERE
    commission IN ( 300, 500, 1400 );

--COMMISSION(보너스) 300이 아니고 500도 아니고 1400도 아닌 직원 출력
SELECT
    *
FROM
    employee
WHERE
        commission <> 300
    AND commission <> 500
    AND commission <> 1400;
--위랑 동일한 문법
SELECT
    *
FROM
    employee
WHERE
    commission NOT IN ( 300, 500, 1400 );

--LIKE 용법 심층해서 검토
--LIKE 'F%' : F로 시작하는 모든 문자열을 출력
SELECT
    *
FROM
    employee
WHERE
    ename LIKE 'F%';

--LIKE '%M%' : M을 포함하는 모든 문자열을 출력
SELECT
    *
FROM
    employee
WHERE
    ename LIKE '%M%';

--LIKE '_A%' : 앞에서 두번째 A를 포함하는 모든 문자열을 출력
SELECT
    *
FROM
    employee
WHERE
    ename LIKE '_A%';

--문제 9) 이름이 'N'으로 끝나는 사원 검색하기
SELECT
    *
FROM
    employee
WHERE
    ename LIKE '%N';

--문제 10) 이름의 세번째 글자가 A인 사원 출력하기
SELECT
    *
FROM
    employee
WHERE
    ename LIKE '__A%';

--이름에 'A'가 포함되지 않는 모든 사람의 정보를 출력
SELECT
    *
FROM
    employee
WHERE
    ename NOT LIKE '%A%';

--NULL : 아무 값도 없고, 공간도 없는 것
--NULL 과 연산을 하면 NULL이 됨
--IS NULL : NULL인 데이터만 뽑기
SELECT
    *
FROM
    employee
WHERE
    commission IS NULL;
--IS NOT NULL : NULL이 아닌 데이터만 뽑기
SELECT
    *
FROM
    employee
WHERE
    commission IS NOT NULL;

--문제 11) COMMISSION이 NULL값 중에서 SALARY가 1000보다 큰 직원의 정보를 출력
SELECT
    *
FROM
    employee
WHERE
    commission IS NULL
    AND salary >= 1000;

--문제 12) 직원 테이블에서 날짜 정보를 내림차순으로 정렬하여 출력하세요
SELECT
    *
FROM
    employee
ORDER BY
    hiredate DESC;

--문제 13) 동일한 급여를 받는 사원에 대해서 이름의 순서가 빠른 사람부터 출력해 주세요
SELECT
    *
FROM
    employee
ORDER BY
    salary,
    ename;

--오라클 내장 함수
--연산가능
SELECT
    10 * 2
FROM
    dual;
--글자입력가능
SELECT
    '난나라난나'
FROM
    dual;

--내장함수 1) UPPER(문자열)/LOWER(문자열)/INITCAP(문자열)
SELECT
    'Oracle mania',
    upper('Oracle mania')   AS 대문자,
    lower('Oracle mania')   AS 소문자,
    initcap('Oracle mania') AS "첫글자 대문자"
FROM
    dual;
    
--직원 테이블
SELECT
    ename,
    lower(ename),
    job,
    initcap(job)
FROM
    employee;
    
--SCOTT 사원 검색하기
--컬럼의 데이터를 일괄 소(대)문자로 변경하여 비교 가능
--허나 성능 떨어짐
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
    
--내장함수 2) 문자길이를 반환하는 함수
--LENGTH(문자열) : 한글/영어 상관 없이 문자개수를 세어서 반환
SELECT
    length('OrAcleMania'),
    length('오라클매니아')
FROM
    dual;
    
--내장함수 3) 문자 조작 함수
--CONCAT : 문자의 값을 연결하는 함수
--문자열 || 문자열 : 문자의 값을 연결
SELECT
    'Oracle',
    'mania',
    concat('Oracle', 'mania'),
    'Oracle' || 'mania'
FROM
    dual;
    
--내장함수 4) 문자 조작 함수
--문자열 자르기
--substr(대상컬럼(문자), 시작위치, 개수) : 인덱스가 1부터 시작
--시작위치를 -1로 줄 경우 끝에서부터 시작
SELECT
    substr('Oracle mania', 4, 3),
    substr('Oracle mania', - 1, 1)
FROM
    dual;
    
--문제 14) 이름이 N으로 끝나는 사원 표시하기
--대상 테이블 : employee
--substr() 쓰기
SELECT
    *
FROM
    employee
WHERE
    substr(ename, - 1, 1) = 'N';
    
--문제 15) 87년도에 입사한 사원 표시하기
--대상 테이블 : employee
--substr() 쓰기
SELECT
    *
FROM
    employee
WHERE
    substr(hiredate, 1, 2) = '87';
    
--substrb(대상컬럼(문자), 시작위치, 개수) : 문자 byte 기준으로 출력
--영문(1byte) : substr/substrb 결과 동일
--한글(3byte) : substr/substrb 결과 다름

--내장함수 5) 문자열에서 대상 문자 찾아서 인덱스 번호 반환
--오라클에서는 인덱스번호가 1부터 시작함
--instr(대상컬럼(문자), 찾을문자, 시작위치, 몇번째 발견)
SELECT
    instr('Oracle mania', 'a')
FROM
    dual;

SELECT
    instr('Oracle mania', 'a', 5, 2) --5번째부터 시작하여 2번째 발견된 'a'인덱스를 반환
FROM
    dual;
    
--문제 16) 사원 정보에서 ename 세 번째 자리가 'R'인 사원을 검색하는 퀴리문을 작성하세요
--단, instr을 사용하세요
SELECT
    *
FROM
    employee
WHERE
    instr(ename, 'R', 3, 1) = 3;