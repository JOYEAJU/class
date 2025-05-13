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





