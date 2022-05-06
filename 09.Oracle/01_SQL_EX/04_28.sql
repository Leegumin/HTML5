-- 검색(R)
-- 한 컬럼만 보기
SELECT DEPTNO FROM DEPT;
SELECT DNAME FROM DEPT;
SELECT LOC FROM DEPT;
-- * : ALL COLUMN (DEPTNO, DNAME, LOC)
SELECT * FROM DEPT;

--조건에 맞는 데이터 가져오기
--WHERE [조건절]  : 조건 문법
--DEPT 테이블에 DNAME(부서이름)이 'SALES'인 데이터를 가져오세요
select dname from dept where dname = 'SALES';

--연습문제 1
--DEPT 테이블에 DEPTNO(부서넘버)가 10인 데이터를 가져오세요
select DEPTNO from dept where DEPTNO = '10';

--WHERE [조건컬럼] LIKE 'S%'
--조건컬럼에 'S'로 시작되는 문자열은 모두 가져옴
select ename from emp where ename like 'S%';

--연습문제 2
--EMP테이블에서 JOB에 j로 시작되는 문자열을 가진 데이터는 모두 가져오세요
--SELECT에 들어가는 컬럼의 위치에 따라 데이터 출력 순서가 바뀜
select job from emp;
select job, ename from emp where job like 'M%';

--내장함수 UPPER(문자열) : 대문자로 바꾸기
--내장함수 LOWER(문자열) : 소문자로 바꾸기
--DB 테이블 데이터는 대소문자를 별개의 문자열로 인식함
select job, ename from emp where job = upper('manager');

--정렬 : 오름차순
--ORDER BY (컬럼명) ASC(ASCENDING)
SELECT * FROM DEPT ORDER BY dname ASC;

--정렬 : 내림차순
--ORDER BY (컬럼명) DESC(DESCENDING)
SELECT * FROM DEPT ORDER BY dname DESC;

--연습문제 3
--EMP테이블에서 JOB이 'MANAGER'인 데이터를 오름차순으로 정렬해주세요
SELECT * FROM EMP WHERE JOB = 'MANAGER';
SELECT * FROM EMP WHERE JOB = 'MANAGER' ORDER BY ENAME ASC;

--연습문제 4
--EMP테이블에서 JOB이 'CLERK'인 데이터를 오름차순으로 정렬해주세요
SELECT * FROM EMP WHERE JOB = 'CLERK';
SELECT * FROM EMP
WHERE JOB = 'CLERK'
ORDER BY ENAME DESC;

--도전과제 1
--EMP테이블에서 JOB이 'CLERK'인 데이터를 뽑아서 ENAME(직원이름), EMPNO(직원번호)대상으로 내림차순 정리해주세요
--복수 정렬은 각각의 컬럼에 대해 DESC/ASC를 각각 걸어주어야하며 처음 진행 컬럼을 기준으로 다시 진행됨
SELECT ENAME, EMPNO FROM
EMP WHERE JOB = 'CLERK'
--ENAME가 먼저 내림차순된 후 고정되고 증복값이 있다면 EMPNO가 ASC로 오름차순 됨
ORDER BY ENAME DESC, EMPNO; --오름차순 ASC는 생략 가능
--ORDER BY 2 DESC, 1; --컬럼ID(숫자)로도 사용 가능

