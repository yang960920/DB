
CREATE TABLE "HR"."notice" 
   (	"BOARDNO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENTS" VARCHAR2(1000), 
	"WRITER" VARCHAR2(100), 
	"WRITE_DATE" DATE, 
	"RECOMMEND" NUMBER(38,0), 
	"VIEW_COUNT" NUMBER(38,0)
   )
   
   -- 추천 게시판(recommend)
   -- 항목 re_no 숫자 , title content writer 문자 
   
   
   DROP TABLE RECOMMEND -- 테이블을 통째로 날려버림.
   
    CREATE TABLE "HR"."RECOMMEND"(
   		RE_NO NUMBER(38,0),
   		TITLE VARCHAR2(100),
   		CONTENT VARCHAR2(1000),
   		WRITER VARCHAR2(100)
   )
   
   ALTER TABLE HR.RECOMMEND MODIFY TITLE VARCHAR2(300);

  ALTER TABLE HR.RECOMMEND MODIFY CONTENT VARCHAR2(300);

 ALTER TABLE HR.RECOMMEND MODIFY WRITER VARCHAR2(300);

 ALTER TABLE HR.RECOMMEND ADD VIEW_COUNT NUMBER(38,0) NULL; 
 
ALTER TABLE HR.RECOMMEND ADD TEST VARCHAR2(100) NULL; 

ALTER TABLE HR.RECOMMEND ADD TEST2 VARCHAR2(100) NULL; 

ALTER TABLE HR.RECOMMEND ADD TEST3 VARCHAR2(100) NULL; 

ALTER TABLE HR.RECOMMEND DROP COLUMN TEST;

ALTER TABLE HR.RECOMMEND DROP COLUMN TEST2;

ALTER TABLE HR.RECOMMEND DROP COLUMN TEST3;


CREATE TABLE "HR"."BOARD3" 
   (	"BOARDNO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENTS" VARCHAR2(1000), 
	"WRITER" VARCHAR2(100), 
	"WRITE_DATE" DATE, 
	"RECOMMEND" NUMBER(38,0), 
	"VIEW_COUNT" NUMBER(38,0)
   )

ALTER TABLE HR.BOARD3 ADD TEST VARCHAR2(100) NULL; 

ALTER TABLE HR.BOARD3 ADD TEST2 VARCHAR2(100) NULL; 

ALTER TABLE HR.BOARD3 ADD TEST3 VARCHAR2(100) NULL; 

ALTER TABLE HR.BOARD3 DROP COLUMN TEST;

ALTER TABLE HR.BOARD3 DROP COLUMN TEST2;

ALTER TABLE HR.BOARD3 DROP COLUMN TEST3;

DROP TABLE HR.BOARD3 

-- D C L : DB 관리/제어 해주는 문법이다
-- 			(계정생성, 계정권한부여, 백업 , 복구)

CREATE USER apple IDENTIFIED BY a1234 -- 계정생성

GRANT CONNECT, resource , dba TO apple -- 계정권한부여


CREATE TABLE "HR"."member" 
   (	"ID" VARCHAR2(100), 
	"PW" VARCHAR2(100), 
	"NAME" VARCHAR2(100), 
	"TEL" VARCHAR2(100)
   )

ALTER TABLE HR.MEMBER ADD CONSTRAINT member_pk PRIMARY KEY (NAME)


CREATE TABLE "HR"."PRODUCT3"
("ID" VARCHAR2(100) PRIMARY KEY,
"NAME" VARCHAR2(100),
"CONTENT" VARCHAR2(100),
"PRICE" NUMBER(38,0)
)

INSERT INTO MEMBER VALUES ('100','100','PARK','011')

INSERT INTO MEMBER VALUES ('200','200','PARK','011')

INSERT INTO MEMBER VALUES ('300','300','PARK','011')

SELECT * FROM "MEMBER" 


SELECT NAME,ID  FROM "MEMBER" WHERE NAME = '100' -- NAME 의 값이 '100'인 NAME ,ID 칼럼만 보여줌

SELECT ID AS 아이디 , NAME FROM "MEMBER" WHERE NAME = '100'

SELECT tel FROM MEMBER WHERE ID = 'PARK'

UPDATE "MEMBER" SET ID = 'YANG' WHERE NAME = '100'

UPDATE "MEMBER" SET ID = 'PARK' WHERE NAME = '200'

UPDATE "MEMBER" SET ID = 'LEE' WHERE NAME = '300'

UPDATE "MEMBER" SET PW = '8888' , TEL = '9999' WHERE NAME ='ICE'

DELETE FROM "MEMBER" WHERE NAME = '100'

DELETE FROM "MEMBER" WHERE TEL  = '011'

SELECT * FROM MEMBER WHERE id = '200' AND tel = '011'

SELECT * FROM MEMBER WHERE id = '200' or tel = '011'



CREATE TABLE PRODUCT(
	ID VARCHAR2(200),
	NAME VARCHAR2(200),
	CONTENT VARCHAR2(200),
	PRICE VARCHAR2(200),
	COMPANY VARCHAR2(200),
	IMG VARCHAR2(200)
)


SELECT * FROM MEMBER ORDER BY id -- 오름차순

SELECT * FROM MEMBER ORDER BY id DESC -- 내림차순


CREATE TABLE "HR"."PRODUCT3" 
   (	"ID" VARCHAR2(200), 
	"NAME" VARCHAR2(200), 
	"CONTENT" VARCHAR2(200), 
	"PRICE" VARCHAR2(200), 
	"COMPANY" VARCHAR2(200), 
	"IMG" VARCHAR2(200)
   )


SELECT * FROM PRODUCT3 ORDER BY PRICE DESC -- 내림차순 1)

SELECT * FROM PRODUCT3 p  ORDER BY COMPANY  -- 오름차순 2)

SELECT NAME , PRICE  FROM PRODUCT3 p WHERE ID = '100' -- 3) 

SELECT CONTENT , COMPANY  FROM PRODUCT3 p WHERE PRICE = '5000' -- 4)

SELECT CONTENT , IMG FROM PRODUCT p WHERE ID = '100' AND PRICE = '1000' -- 5)

SELECT COMPANY , CONTENT  FROM PRODUCT3 p WHERE COMPANY = 'c100' -- 6)

SELECT CONTENT , PRICE FROM PRODUCT3 p WHERE COMPANY = 'c100' OR COMPANY = 'c200'  -- 7)

UPDATE PRODUCT3 SET CONTENT ='품절' WHERE PRICE ='5000' -- 8)

UPDATE PRODUCT3 SET IMG = '0.PNG' , PRICE = '10000' WHERE ID = '100' OR  ID ='102' -- 9)

UPDATE PRODUCT3 SET COMPANY = 'APPLE' , NAME = 'APPLESHOES' WHERE ID = '101' -- 10)

DELETE FROM PRODUCT3 p WHERE NAME = 'food1' OR ID = '107' -- 11)

DELETE FROM PRODUCT3 p WHERE COMPANY = 'c100' -- 12)

DELETE FROM PRODUCT3 p -- 13)

DROP TABLE PRODUCT3 -- 14)

SELECT * FROM PRODUCT3 p 


CREATE TABLE REPLY (
	ID VARCHAR2 (100),
	ORIID VARCHAR2 (100),
	CONTENT VARCHAR2 (100),
	WRITER VARCHAR2 (100)
)










