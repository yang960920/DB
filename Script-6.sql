CREATE TABLE depart2 (
	id varchar2(100),
	name varchar2(100),
	instructor varchar2(100),
	constraints pk_dp2 PRIMARY KEY (id)
)

CREATE TABLE student2 (
	id varchar2(100),
	name varchar2(100),
	tel varchar2(100),
	depart_id varchar2(100)
)

ALTER TABLE STUDENT2 
ADD CONSTRAINTS pk_st2 
PRIMARY KEY (id)

ALTER TABLE STUDENT2 
ADD CONSTRAINTS fk_st2
FOREIGN KEY (depart_id)
REFERENCES depart2 (id)








 -- 테이블 복사

CREATE TABLE MEMBER22
AS SELECT * FROM MEMBER



INSERT INTO MEMBER22 
VALUES ('BANANA3','BANANA3','BANANA3','BANANA3', SYSDATE )

SELECT * FROM MEMBER22 

INSERT INTO MEMBER22 
VALUES ('BANANA4','BANANA4','BANANA4','BANANA4', SYSDATE ,'LG')

INSERT INTO BBS
VALUES (BBS_ID_SEQ.NEXTVAL,'HAPPY','HAPPY DAY','ice')

INSERT INTO BBS
VALUES (BBS_ID_SEQ.NEXTVAL,'HAPPY2','HAPPY DAY2','ice')

SELECT * FROM BBS

CREATE SEQUENCE PD_ID_SEQ
INCREMENT BY 1
START WITH 1

CREATE TABLE PRODUCT2 (
	ID NUMBER(38,0),
	NAME VARCHAR2(100)
)

INSERT INTO PRODUCT2
VALUES (PD_ID_SEQ.NEXTVAL, 'SHOES')

SELECT * FROM PRODUCT2

CREATE TABLE ORDERLIST3 (
	ID NUMBER(38,0),
	TITLE VARCHAR2 (100),
	PRICE NUMBER (38,0)
)

CREATE SEQUENCE OR1_ID_SEQ
INCREMENT BY 1
START WITH 1

CREATE SEQUENCE OR2_SEQ
INCREMENT BY 3000
START WITH 1000


INSERT INTO ORDERLIST3
VALUES (OR1_ID_SEQ.NEXTVAL ,'HAPPY',OR2_SEQ.NEXTVAL)

SELECT * FROM ORDERLIST3

SELECT * FROM ORDERLIST3
ORDER BY ID -- 오름차순

SELECT * FROM ORDERLIST3
ORDER BY ID DESC -- 내림차순

SELECT * FROM ORDERLIST3
WHERE id >= 3
ORDER BY id DESC 

CREATE TABLE DEPT(
DEPTNO NUMBER(2),
DNAME VARCHAR2(14 BYTE),
LOC VARCHAR2(13 BYTE)
)

ALTER TABLE DEPT 
ADD CONSTRAINTS fk_DEPT
FOREIGN KEY (DEPTNO)
REFERENCES EMP (EMPNO)

ALTER TABLE DEPT ADD (
CONSTRAINT PK_DEPT
PRIMARY KEY
(DEPTNO));

ALTER TABLE EMP ADD (
CONSTRAINT PK_EMP
PRIMARY KEY
(EMPNO));

ALTER TABLE EMP ADD (
CONSTRAINT FK_DEPTNO
FOREIGN KEY (DEPTNO)
REFERENCES DEPT (DEPTNO));


CREATE TABLE EMP(
EMPNO NUMBER(4),
ENAME VARCHAR2(10 BYTE),
JOB VARCHAR2(9 BYTE),
MGR NUMBER(4),
HIREDATE DATE,
SAL NUMBER(7,2),
COMM NUMBER(7,2),
DEPTNO NUMBER(2)
)

CREATE TABLE SALGRADE(
GRADE NUMBER,
LOSAL NUMBER,
HISAL NUMBER
)

SELECT * FROM emp -- selection

SELECT deptno FROM emp -- projection

SELECT DISTINCT deptno FROM emp -- DISTINCT

SELECT ename, sal * 12 AS yearsal FROM emp 

SELECT * FROM emp
ORDER BY sal DESC

SELECT * FROM emp
WHERE DEPTNO = 30
ORDER BY EMPNO DESC

SELECT * FROM emp
WHERE NOT DEPTNO = 30
ORDER BY EMPNO DESC

SELECT * FROM EMP e 
WHERE NOT DEPTNO = 30 AND JOB = 'SALESMAN'

SELECT * FROM EMP e 
WHERE NOT DEPTNO = 30 OR JOB = 'SALESMAN'

SELECT * FROM EMP e 
WHERE SAL >= 3000

SELECT * FROM EMP e 
WHERE SAL != 3000

SELECT * FROM EMP
WHERE JOB IN ('SALESMAN', 'MANAGER')
ORDER BY JOB 

SELECT * FROM emp
WHERE sal BETWEEN 2000 AND 3000 
ORDER BY empno

SELECT * FROM emp
WHERE sal NOT BETWEEN 2000 AND 3000 
ORDER BY empno

SELECT * FROM emp
WHERE ENAME LIKE '_L%'

SELECT * FROM emp
WHERE ENAME NOT LIKE '_L%'

SELECT * FROM emp
WHERE COMM IS NULL

SELECT * FROM emp
WHERE COMM IS NOT NULL

CREATE TABLE dept_temp2 
AS
SELECT * FROM DEPT

SELECT * FROM dept_temp2

UPDATE DEPT_TEMP2 
SET LOC = 'SEOUL'

UPDATE DEPT_TEMP2 
SET DNAME = 'DATABASE', loc = 'BUSAN'
WHERE DEPTNO = 40

DELETE FROM DEPT_TEMP2 
WHERE DNAME = 'SALES'

SELECT * FROM DEPT_TEMP2 dt 

CREATE TABLE PRODUCT3 (
	ID VARCHAR2 (100),
	NAME VARCHAR2 (100),
	CONTENT VARCHAR2 (100),
	PRICE NUMBER (38,0),
	COMPANY VARCHAR2 (100),
	IMG VARCHAR2 (100)
)

SELECT * FROM PRODUCT3 p  -- 2
ORDER BY PRICE DESC 

SELECT NAME,CONTENT,PRICE FROM PRODUCT3 p -- 3
ORDER BY COMPANY

SELECT DISTINCT COMPANY FROM PRODUCT3 p  --4

SELECT PRICE*5 AS  "PRICE5"  from  PRODUCT3 p ; --5

SELECT COMPANY , NAME FROM PRODUCT3 WHERE PRICE = '5000' -- 6

SELECT COMPANY, NAME , PRICE 
FROM PRODUCT3 p WHERE PRICE BETWEEN '3000' AND '6000' -- 7

SELECT COMPANY, NAME
FROM PRODUCT3 p WHERE NOT COMPANY= 'c100' --8

SELECT NAME , PRICE
FROM PRODUCT3 p WHERE COMPANY = 'c100' OR COMPANY ='c200' - 9

SELECT * FROM PRODUCT3 p 
WHERE NAME LIKE '%4%'; --10

SELECT * FROM PRODUCT3 p
WHERE CONTENT LIKE '%food%' --11

SELECT 
