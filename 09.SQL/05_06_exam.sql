--2022-05-06 시험
--문제 1)
    -- 유저 생성
CREATE USER GUEST03 IDENTIFIED BY 1234
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE
TEMP;
    -- 접속, 리소스 권한 설정
GRANT CONNECT, RESOURCE TO GUEST03;

--문제 2)
    -- DEPT03 테이블 생성
CREATE TABLE DEPT03 (
    DEPTNO VARCHAR2(3),
    DNAME  VARCHAR2(7)
);
    -- COMMENT 작성
COMMENT ON TABLE DEPT03 IS
    '부서';

COMMENT ON COLUMN DEPT03.DEPTNO IS
    '부서번호';

COMMENT ON COLUMN DEPT03.DNAME IS
    '부서명';

--문제 3)
    -- AREA(지역) 추가
ALTER TABLE DEPT03 ADD (
    AREA VARCHAR2(20)
);

COMMENT ON COLUMN DEPT03.AREA IS
    '지역';

--문제 4)
    --문자길이 변경
ALTER TABLE DEPT03 MODIFY
    DNAME VARCHAR2(20);
    
--문제 5)
    --기본키 제약조건 추가
ALTER TABLE DEPT03 ADD CONSTRAINT PK_DEPTNO PRIMARY KEY ( DEPTNO );

--문제 6)
    --NOT NULL 추가
ALTER TABLE DEPT03 MODIFY (DNAME NOT NULL);
    --UNIQUE 추가
ALTER TABLE DEPT03 ADD CONSTRAINT UK_DEPTNO UNIQUE( DNAME );

--문제 7)
    --테이블 생성
CREATE TABLE EMP03(
    EMPNO VARCHAR2(4) CONSTRAINT PK_EMPNO PRIMARY KEY,
    NAME VARCHAR2(20),
    DEPTNO VARCHAR2(3) NOT NULL,
    PEMPNO VARCHAR2(4),
    PAY NUMBER NOT NULL,
    POSITION VARCHAR2(20),
    REGDATE VARCHAR2(20)
);

    --코멘트 생성
COMMENT ON TABLE EMP03 IS
    '사원';

COMMENT ON COLUMN EMP03.DEPTNO IS
    '부서번호';

COMMENT ON COLUMN EMP03.EMPNO IS
    '사원코드';

COMMENT ON COLUMN EMP03.NAME IS
    '사원이름';

COMMENT ON COLUMN EMP03.DEPTNO IS
    '부서코드';

COMMENT ON COLUMN EMP03.PEMPNO IS
    '상사코드';

COMMENT ON COLUMN EMP03.PAY IS
    '급여';

COMMENT ON COLUMN EMP03.POSITION IS
    '직급';

COMMENT ON COLUMN EMP03.REGDATE IS
    '등록일';
    
-- 문제8)
    -- 외래키 생성
ALTER TABLE EMP03
    ADD FOREIGN KEY ( DEPTNO )
        REFERENCES DEPT03 ( DEPTNO );
        
-- 문제9)
    -- SEQUENCE 생성
CREATE SEQUENCE SEQ_EMP03_EMPNO INCREMENT BY 1 START WITH 1001;

-- 문제10)
    --DEPT03
INSERT INTO DEPT03 (
    DEPTNO,
    DNAME
) VALUES (
    '101',
    '영업부'
);

INSERT INTO DEPT03 (
    DEPTNO,
    DNAME
) VALUES (
    '102',
    '총무부'
);

INSERT INTO DEPT03 (
    DEPTNO,
    DNAME
) VALUES (
    '103',
    '기획부'
);

INSERT INTO DEPT03 (
    DEPTNO,
    DNAME
) VALUES (
    '104',
    '홍보부'
);

    --EMP03
INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '가가가',
    '101',
    NULL,
    450,
    '부장',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '나나나',
    '102',
    NULL,
    400,
    '부장',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '다다다',
    '101',
    '1001',
    350,
    '과장',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '라라라',
    '103',
    NULL,
    410,
    '과장',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '마마마',
    '101',
    '1003',
    300,
    '대리',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '바바바',
    '103',
    '1004',
    400,
    '대리',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '가나다',
    '102',
    '1002',
    320,
    '대리',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '홍길동',
    '102',
    '1007',
    380,
    '사원',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '강감찬',
    '103',
    '1006',
    250,
    '사원',
    SYSDATE
);

INSERT INTO EMP03 (
    EMPNO,
    NAME,
    DEPTNO,
    PEMPNO,
    PAY,
    POSITION,
    REGDATE
) VALUES (
    SEQ_EMP03_EMPNO.NEXTVAL,
    '이순신',
    '101',
    '1005',
    200,
    '사원',
    SYSDATE
);

-- 문제 11)
UPDATE DEPT03
SET
    AREA = DECODE(DNAME, '영업부', '서울', '부산');

-- 문제 12)
DELETE EMP03
WHERE
    DEPTNO = 101;

ROLLBACK;

-- 문제 13)
SELECT
    NAME AS 사원이름,
    POSITION AS 직급
FROM
    EMP03
    WHERE DEPTNO IN('101', '102')
ORDER BY
    EMPNO;
    
-- 문제 14)
SELECT EMPNO AS 사원코드, NAME FROM
EMP03;

-- 문제 15)

-- 문제 16)
SELECT
    DEPTNO          AS 부서번호,
    ROUND(AVG(PAY)) AS 급여평균,
    COUNT(EMPNO)    AS 인원수
FROM
    EMP03
GROUP BY
    DEPTNO;
    
-- 문제 17)
SELECT
    A.DEPTNO AS 부서번호,
    A.DNAME AS 부서명,
FROM
    DEPT03 A,
    EMP03  B
WHERE
        B.DEPTNO = A.DEPTNO
    AND B.PAY > 350;
    
-- 문제 18)
CREATE INDEX IDX_EMP03 ON
    EMP03 (
        NAME
    );