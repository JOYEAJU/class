-- 한줄 주석
/* 범위 주석 */


-- SQL : Structured Query Language

select * from emp;
select * from dept;
select * from salgrade;

select empno, ename, deptno
from emp;

-- 이름, 급여
select ename, sal, 123, 'a'
from emp;

select deptno
from emp;

select distinct 
    deptno
  from emp;

select distinct
    deptno, job
  from emp;

select 
    ename, sal, sal*12+comm as s1, comm
  from emp;

select 
    ename, sal, sal*12+comm s2, comm
  from emp;

select 
    ename, sal, sal*12+comm "s s", -- sql에서 유일하게 "가 들어가는 곳
    comm as 추가수당
  from emp;

-- sal 컬럼을 기준으로 오름차순
select * 
    from emp
  order by sal;

-- 내림차순
select * 
    from emp
  order by sal desc;
  
select * 
    from emp
  order by hiredate asc;
  
select * 
    from emp
  order by ename asc;

-- 부서번호로 오름차순, 겹치면 sal 내림차순
select * 
    from emp
  order by deptno asc, sal desc;

-- deptno asc, sal desc; 이 상황에서 연봉이 같으면 사원번호 내림차순 정렬
select * 
    from emp
  order by deptno asc, sal desc, empno desc;

-- 부서 번호가 30인 데이터만 출력
select *
        from emp
    where deptno = 30;

select *
        from emp
    where deptno = 30
  order by sal;

select *
    from emp
  where empno = 7782;

-- sal이 1600인 사람만 출력
select *
    from emp
  where sal = 1600;

-- 1600 초과
select *
    from emp
  where sal > 1600;

-- 1600 이상
select *
    from emp
  where sal >= 1600; -- =>는 없음, = 이 오른쪽

-- 1600 이하
select *
    from emp
  where sal <= 1600;

-- 부정(!,C언어 등)
select *
    from emp
  where deptno != 30;
-- 부정(오라클)  
select *
    from emp
  where deptno <> 30;

select * from emp
where deptno = 30
and job = 'SALESMAN';

-- OR
/*
    emp 테이블에서 deptno가 30 이거나(또는) 
    job이 CLERK인 사원의 모든 정보를 출력 
*/
select *
from emp
where
    deptno = 30 or job = 'CLERK';

/*
    job이 CLERK이거나 sal이 1000 초과이면서 deptno가 10인 사원 조회
*/
select * from emp
where (job = 'CLERK' or sal > 1000) and deptno = 10;

select * from emp
where not (job = 'CLERK' or ( sal > 1000 and deptno = 10 ));

/*
    deptno != 30, deptno <> 30, deptno ^= 30, not deptno =30
*/
-- 월급 2000이상 4000미만인 사원 출력
select * from emp
where sal >= 2000 and sal < 4000;
-- select * from emp where 2000 <= sal and sal < 4000;
 
-- 부서번호 10 또는 20인 사원만 출력
select * from emp
    where deptno = 10 or deptno = 20;
select * from emp
    where deptno in ( 10, 20 );
select * from emp
    where deptno not in ( 10, 20 );

-- 복습
select * from emp
    where job in ('MANAGER', 'SALESMAN', 'CLERK');

select * from emp
    where job not in ('MANAGER', 'SALESMAN', 'CLERK');

-- 중복제거
select distinct 
    JOB from emp;

select
    EMPNO AS EMPLOYEE_NO,
    ENAME "EMPLOYEE_NAME"    
  from emp;

select * from emp
    where DEPTNO = 30
  and job = 'SALESMAN';

-- emp 테이블의 모든 열 출력
select * from emp;
-- 부서번호가 30인 데이터만 출력
select * from emp
    where DEPTNO = 30;
-- 사원번호가 7782인 데이터만 출력
select * from emp
    where EMPNO = 7782;
-- and 연산자로 여러 개 조건식 사용
select * from emp
    where deptno = 30
  and job = 'SALESMAN';
-- 사원번호가 7499, 부서번호가 30인 데이터만 출력
select * from emp
    where empno = 7499
  and deptno = 30;
-- or 연산자로 여러 개의 출력 조건 사용
select * from emp
    where deptno = 30
  or job = 'CLERK';
-- 부서번호가 20, 직업이 SALESMAN인 데이터만 출력
select * from emp
    where deptno = 20
  or job = 'SALESMAN';










