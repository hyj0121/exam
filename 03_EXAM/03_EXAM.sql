-- 문제1)
-- 1. 트랜잭션에 대해서 설명해주세요 
트랜잭션(Transaction)은 여러 개의 작업(쿼리)을 하나로 묶어서 전부 성공하거나, 전부 실패하게 만드는 것으로 
데이터베이스에서 하나의 논리적인 작업 단위를 의미함
장점 - 데이터 무결성 보장, 예외 발생 시 자동 복구 가능, 멀티 유저 환경에서 충돌 방지

-- 2. 기본키에 대해 설명해 주세요
기본키 (Primary Key)는 데이터베이스에서 각 행(row)을 고유하게 식별하기 위해 사용하는 열(column) 또는 열들의 조합을 뜻함
특징 - 고유성, NOT NULL(반드시 값이 있어야 함), 식별자 역할을 함
데이터의 무결성을 보장하고 중복 데이터 방지, 다른 테이블에서 외부키(Foreign Key)로 연결할 때 기준 역할을 함

-- 문제2)
SELECT * FROM EMPLOYEE 
WHERE ENAME = 'SCOTT';

-- 문제3)
SELECT D.DNO, D.DNAME, MAX(E.SALARY) AS 최고급여
FROM EMPLOYEE E
JOIN DEPARTMENT D ON E.DNO = D.DNO
WHERE E.DNO IN (10, 30)
GROUP BY D.DNO, D.DNAME
HAVING MAX(E.SALARY) >= 3000;
