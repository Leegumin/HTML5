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
        ENO,
        ENAME,
        DNO,
        JOB
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
        ENO,
        ENAME,
        JOB,
        MANAGER,
        DNO
    FROM
        EMPLOYEE;
        
-- 참고사항) 접속한 유저의 뷰 목록을 보고 싶을때 조회하는 딕셔너리
SELECT
    VIEW_NAME,
    TEXT
FROM
    USER_VIEWS;
    
-- 그룹함수를 쓴 SELECT 문을 뷰(VIEW)로 만들기
CREATE OR REPLACE VIEW VW_EMP_SALARY AS
    SELECT
        DNO,
        SUM(SALARY)        AS "총급여",
        TRUNC(AVG(SALARY)) AS "평균급여"
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
        ENO,
        ENAME,
        DNO
    FROM
        EMPLOYEE
    WHERE
        DNO = 20;
-- 2) 이미 생성되어 있는 상기 뷰에 대해 급여 역시 출력하도록 수정
-- 그냥 덮어씌울 수 있음
CREATE OR REPLACE VIEW VW_TEST_EMP AS
    SELECT
        ENO,
        ENAME,
        DNO,
        SALARY
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
    SQ_DEPT.NEXTVAL, -- 1부터 시작하면서 실행하면 계속 1씩 증가하여 들어감
    'ACCOUNTING',
    'NEW YORK'
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
        DNAME,
        LOC
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
    EMPNO    NUMBER(4) PRIMARY KEY,
    ENAME    VARCHAR2(10),
    HIREDATE DATE
);
-- INSERT문을 이용해서 EMPNO에 시퀀스값을 추가 하시오.
INSERT INTO EMP01 VALUES (
    SQ_EMP.NEXTVAL,
    '홍길동',
    SYSDATE
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
CREATE USER KBS IDENTIFIED BY 1234 DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE TEMP;
-- 연습문제 02) 1번에서 생성한 유저에 CONNECT, RESOURCE 권한(롤)을 부여
GRANT CONNECT, RESOURCE TO KBS;