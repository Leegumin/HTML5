-- 2022-05-03 실습
-- 곱 조인(Cartesian Product) : 카르테시안 곱 *****
-- DEPARTMENT 건수 : 4건 X EMPLOYEE 건수 : 14건 => 4 X 14 = 56
-- 10만 * 100만 = 1000만 => 효율이 거지같음 혹은 컴퓨터 터짐
SELECT
    *
FROM
    DEPARTMENT A,
    EMPLOYEE   B;
    
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
    B.ENAME AS 직원,
    A.DNO   AS 부서번호,
    A.DNAME AS 부서이름,
    A.LOC   AS 부서위치
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
    A.DNO = B.DNO;
    
-- 문제 2) 사원번호가 7499, 7900인 사원들의 소속된 부서정보 모두 출력
SELECT
    *
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
        B.DNO = A.DNO
    AND B.ENO IN ( 7499, 7900 );
    
-- 문제 3) 사원번호가 7500 ~ 7700 사이에 있는 사원들의 소속된 부서정보를 출력하되
-- 부서이름이 SALES인 파트만 출력하세요

SELECT
    *
FROM
    DEPARTMENT A,
    EMPLOYEE   B
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
    ENAME,
    DNAME,
    SALARY,
    GRADE
FROM
    SALGRADE   A,
    DEPARTMENT C,
    EMPLOYEE   B
WHERE
        B.DNO = C.DNO
    AND SALARY BETWEEN LOSAL AND HISAL;
    
-- 특수용례) SELF 조인
-- 사원테이블의 MANAGER컬럼(그 사원의 매니저의 사번)
SELECT
    MAN.ENO   AS "직원번호",
    MAN.ENAME AS "직원",
    EMP.ENAME AS "매니저",
    EMP.ENO   AS "매니저 사원번호"
FROM
    EMPLOYEE EMP,
    EMPLOYEE MAN
WHERE
        MAN.MANAGER = EMP.ENO
    AND MAN.ENAME LIKE 'SMITH%';

SELECT
    *
FROM
    EMPLOYEE EMP,
    EMPLOYEE MAN
WHERE
    MAN.MANAGER = EMP.ENO;
    
-- 특수용례) OUTER 조인
-- = 조인 공통 컬럼을 연결해서 데이터를 보여주는데
-- NULL값은 = 연산이 안되기 때문에 데이터에서 제외됨
-- NULL값에 해당하는 다른 컬럼을 보여줘야 할 때도 있음
SELECT
    EMP.ENAME AS 직원,
    EMP.ENO,
    MAN.ENAME AS 매니저,
    MAN.ENO
FROM
    EMPLOYEE EMP,
    EMPLOYEE MAN
WHERE
    EMP.MANAGER = MAN.ENO (+); -- (+)NULL 값도 같이 출력됨
    
-- 연습문제 1)
-- 조인을 이용해서 SCOTT 사원의 부서번호와 부서이름을 출력하시오.
SELECT
    B.ENAME AS 이름,
    A.DNO   AS 부서번호,
    A.DNAME AS 부서이름
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
        B.DNO = A.DNO
    AND B.ENAME = 'SCOTT';
    
-- 연습문제 2)
-- 모든 사원의 사원이름과 그 사원이 소속된 부서이름과 지역명을 출력하시오
SELECT
    B.ENAME AS 이름,
    A.DNAME AS 부서이름,
    A.LOC   AS 지역
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
    A.DNO = B.DNO;
    
-- 연습문제 3) 10번 부서에 속하는 사원에 대해 직급과 지역명을 출력하시오.
SELECT
    B.ENAME AS 이름,
    B.JOB   AS 직급,
    B.DNO   AS 부서번호,
    A.LOC   AS 지역
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
        A.DNO = B.DNO
    AND B.DNO = 10;
    
-- 연습문제 4) 커미션을 받는 모든 사원의 이름, 부서이름, 지역명을 출력하시오.
SELECT
    B.ENAME      AS 이름,
    B.COMMISSION AS 커미션,
    A.DNAME      AS 부서이름,
    A.LOC        AS 지역
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
        A.DNO = B.DNO
    AND B.COMMISSION > 0;
    
-- 연습문제 5) = 조인과 와일드카드(%)를 사용하여 이름에 A가 포함된 모든 사원의
-- 이름과 부서명을 출력하시오
SELECT
    B.ENAME AS 이름,
    A.DNAME AS 부서이름
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
        A.DNO = B.DNO
    AND B.ENAME LIKE '%A%';
    
-- 연습문제 6) NEW YORK에 근문하는 모든 사원의 이름, 업무, 부서번호, 부서명을 출력
SELECT
    B.ENAME AS 이름,
    B.JOB   AS 업무,
    B.DNO   AS 부서번호,
    A.DNAME AS 부서이름,
    A.LOC   AS 지역
FROM
    DEPARTMENT A,
    EMPLOYEE   B
WHERE
        A.DNO = B.DNO -- 공통된 부분 매칭을 통해 자료를 재조립
    AND A.LOC LIKE 'NEW YORK';
    
-- DDL (Data Definition Language) : 데이터 정의어
-- 테이블 만들기, 테이블 수정하기, 컬럼 수정하기, 컬럼 추가하기

-- 테이블 만들기
-- 예) 부서정보를 저장하기 위한 테이블 생성하기
-- 테이블명 : TB_DEPARTMENT
CREATE TABLE TB_DEPARTMENT (
    DNO   NUMBER(2),
    DNAME VARCHAR2(20),
    LOC   VARCHAR2(20)
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
    DNO   NUMBER(2),
    DNAME VARCHAR2(14),
    LOC   VARCHAR2(13)
);

DESC DEPT;
-- 연습문제 10) 다음 표에 명시된 대로 EMP 테이블을 생성하시오.
-- 컬럼명 데이터 타입 크기
-- ENO     NUMBER    4
-- ENAME   VARCHAR2  10
-- DNO     NUMBER    2
CREATE TABLE EMP (
    ENO   NUMBER(4),
    ENAME VARCHAR2(10),
    DNO   NUMBER(2)
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
            ENO,
            ENAME,
            SALARY,
            DNO
        FROM
            EMPLOYEE;
-- 추가적으로 컬럼 복사 시 컬럼명 변경가능
CREATE TABLE EMPLOYEE2 (
    ENO_ID,
    NAME,
    SAL,
    DEPT_ID
)
    AS
        SELECT
            ENO,
            ENAME,
            SALARY,
            DNO
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
    10,
    'ACCOUNTING',
    'NEW YORK'
);

SELECT
    *
FROM
    DEPT_COPY;
-- 추가한 데이터를 영구반영
COMMIT;

-- DEPT_COPY(데이터 순서) : VALUES(데이터는 DEPT_COPY의 데이터순서에 대응함)
INSERT INTO DEPT_COPY (
    DNO,
    LOC,
    DNAME
) VALUES (
    20,
    'DALLAS',
    'RESEARCH'
);

INSERT INTO DEPT_COPY (
    DNO,
    LOC,
    DNAME
) VALUES (
    30,
    'SALES',
    'CHICAGO'
);

INSERT INTO DEPT_COPY (
    DNO,
    LOC,
    DNAME
) VALUES (
    40,
    'OPERATIONS',
    'BOSTION'
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
    DNO,
    DNAME
) VALUES (
    50,
    'SALES'
);

SELECT
    *
FROM
    DEPT_COPY;
-- 2) 명시적으로 NULL 추가
INSERT INTO DEPT_COPY VALUES (
    60,
    'OPERATIONS',
    NULL
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
    ENO,
    ENAME,
    JOB,
    HIREDATE,
    DNO
) VALUES (
    7000,
    'CANDY',
    'MANAGER',
    SYSDATE,
    10
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
    DNAME = 'JAVA',
    LOC = 'SEOUL'
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
    DNO IN ( 20, 30 );

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
    33,
    '이구민',
    'PROGRAMER',
    NULL,
    SYSDATE,
    10000,
    1000,
    10
);

-- 컬럼 목록을 보는 딕셔너리
SELECT
    *
FROM
    USER_TAB_COLUMNS
ORDER BY
    TABLE_NAME,
    COLUMN_ID;

-- 연습문제 3) 다른사람을 EMP_INSERT(임시 직원테이블) 테이블에 SYSDATE를 이용하여
-- 입사일을 어제로 입력하세요
INSERT INTO EMP_INSERT VALUES (
    21,
    '홍길동',
    'PROGRAMER',
    NULL,
    SYSDATE - 1,
    10000,
    1000,
    10
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
    ( JOB,
      SALARY ) = (
        SELECT
            JOB,
            SALARY
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
    DNO IN ( 10, 40 );
    
-- 도전과제 10) DEPT_COPY 테이블에서 부서명이(DNAME)이 'SALES'이면
-- 지역명(LOC)에 'SEOUL'이라고 수정하고, 아니면, 'BUSAN'으로 수정하시오.
UPDATE DEPT_COPY
SET
    LOC = DECODE(DNAME, 'SALES', 'SEOUL', 'BUSAN');