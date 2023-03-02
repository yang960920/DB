CREATE TABLE "HR"."member" 
   (	
   	"ID" VARCHAR2(10), 
	"PW" VARCHAR2(10), 
	"NAME" VARCHAR2(10), 
	"TEL" VARCHAR2(10)
   ) 
   
CREATE TABLE "HR"."BBS"
(	
	"no" VARCHAR2(100),
	"TITLE" VARCHAR2(100),
	"CONTENT" VARCHAR2(100),
	"WRITER" VARCHAR2(100)
)

CREATE TABLE PRODUCT(
	ID VARCHAR2(200),
	NAME VARCHAR2(200),
	CONTENT VARCHAR2(200),
	PRICE VARCHAR2(200),
	COMPANY VARCHAR2(200),
	IMG VARCHAR2(200)
)


-- 한줄복사 : 컨트롤 + 알트 + 화살표 아래

-- 한줄삭제 : 컨트롤 + D

-- 저장할 대상 : 엔티티(회원정보, 게시판, 상품), 엔티티간의 관계 : 회원이 상품을 주문하다(주문정보)
--			 엔티티 + 관계 ==> 테이블로 만들자.!!!

CREATE TABLE ORDERLIST (
	"no" VARCHAR2(100),
	MEMBER_ID VARCHAR2(100),
	PRODUCT_ID VARCHAR2(100),
	TOTAL_COUNT VARCHAR2(100)
)

