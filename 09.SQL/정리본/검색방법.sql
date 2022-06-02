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