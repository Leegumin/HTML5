-- 2022-05-04 데이터무결성(PK/FK) 실습
-- 제약조건(Constraint)
-- 테이블의 컬럼에 유효하지 않는 값을 걸러내기 위해 걸어주는 것
-- 무결성 제약조건

--1) NOT NULL : NULL 값이 들어올 수 없게 함
CREATE TABLE CUSTOMER (
    ID      VARCHAR2(20) NOT NULL,
    PWD     VARCHAR2(20) NOT NULL,
    NAME    VARCHAR2(20) NOT NULL,
    PHONE   VARCHAR2(30),
    ADDRESS VARCHAR2(100)
);

-- NOT NULL INSERT 테스트
INSERT INTO CUSTOMER VALUES (
    NULL,
    NULL,
    NULL,
    '010-1111-1111',
    'BUSAN'
); -- 제약조건으로 인해 에러가 일어남, 정상적으로 NOT NULL이 작동

-- 2) UNIQUE : 테이블의 컬럼에 데이터가 무조건 유일한 값만 들어갈 수 있게 함
-- 즉, 데이터값 중복 불가(단, NULL은 제약조건에 위반되지 않음)
CREATE TABLE CUSTOMER2 (
    ID      VARCHAR2(20) UNIQUE,
    PWD     VARCHAR2(20) NOT NULL,
    NAME    VARCHAR2(20) NOT NULL,
    PHONE   VARCHAR2(30),
    ADDRESS VARCHAR2(100)
);

-- UNIQUE 테스트
INSERT INTO CUSTOMER2 VALUES (
    '1',
    '1111',
    '홍길동',
    '010-1111-1111',
    'BUSAN'
);

INSERT INTO CUSTOMER2 VALUES (
    '1',
    '1111',
    '홍길동',
    '010-1111-1111',
    'BUSAN'
); -- 증복된 데이터로 무결성 제약 조건에 위배된다는 오류가 뜸

-- 3) CONSTRAINT : 제약조건에 이름을 지정할 수 있음
-- 주로 관리목적으로 사용
CREATE TABLE CUSTOMER3 (
    ID      VARCHAR2(20)
        CONSTRAINT UK_ID UNIQUE,
    PWD     VARCHAR2(20) NOT NULL,
    NAME    VARCHAR2(20) NOT NULL,
    PHONE   VARCHAR2(30),
    ADDRESS VARCHAR2(100)
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
    ID      VARCHAR2(20),
    PWD     VARCHAR2(20) NOT NULL,
    NAME    VARCHAR2(20) NOT NULL,
    PHONE   VARCHAR2(30),
    ADDRESS VARCHAR2(100),
    CONSTRAINT PK_ID PRIMARY KEY ( ID )
);

-- PRIMARY KEY 테스트
INSERT INTO CUSTOMER4 VALUES (
    NULL,
    '1111',
    '홍길동',
    '010-1111-1111',
    'BUSAN'
);

INSERT INTO CUSTOMER4 VALUES (
    '1',
    '1111',
    '홍길동',
    '010-1111-1111',
    'BUSAN'
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
        CONSTRAINT PK_ENO PRIMARY KEY,
    ENAME VARCHAR2(10),
    JOB   VARCHAR2(9),
    DNO   NUMBER(2)
        CONSTRAINT FK_DNO2
            REFERENCES DEPARTMENT
);
-- FK 테스트
INSERT INTO EMP_SECOND (
    ENO,
    ENAME,
    DNO
) VALUES (
    0000,
    '이순신',
    50
);

-- 6) DEFAULT 제약조건
-- 컬럼에 데이터가 아무런 값이 입력되지 않았을 때 디폴트로 지정된 값이 입력됨
CREATE TABLE EMP_THIRD (
    ENO    NUMBER(4)
        CONSTRAINT PK_ENO2 PRIMARY KEY,
    ENAME  VARCHAR2(10),
    SALARY NUMBER(7, 2) DEFAULT 1000
);

-- DEFAULT 테스트
INSERT INTO EMP_THIRD (
    ENO,
    ENAME
) VALUES (
    8000,
    '홍길동'
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
    B.TABLE_NAME,
    A.COLUMN_NAME,
    B.CONSTRAINT_TYPE
FROM
    USER_CONS_COLUMNS A,
    USER_CONSTRAINTS  B
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
    
