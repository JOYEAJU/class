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










