CREATE TABLE 예매하기 (
	영화관 VARCHAR2(100),
	영화코드 NUMBER(38,0),
	인원 NUMBER(38,0),
	결제수단 VARCHAR2(100),
	예매번호 NUMBER(38,0) PRIMARY KEY
)

CREATE TABLE 영화관 (
	지역 VARCHAR2(100),
	지점 VARCHAR2(100) PRIMARY KEY
)

CREATE TABLE 영화 (
	장르 VARCHAR2(100),
	이름 VARCHAR2(100),
	감독 VARCHAR2(100),
	영화코드 NUMBER(38,0) PRIMARY KEY
)


INSERT INTO 영화관 VALUES ('서울','합정점')

INSERT INTO 영화관 VALUES ('서울','김포공항점')

INSERT INTO 영화관 VALUES ('부산','해운대점')

INSERT INTO 영화관 VALUES ('부산','서면점')

INSERT INTO 영화관 VALUES ('인천','부평점')

INSERT INTO 영화관 VALUES ('인천','부천점')

INSERT INTO 영화관 VALUES ('대구','동성로점')

INSERT INTO 영화관 VALUES ('대구','수성점')

SELECT*FROM 영화관

INSERT INTO 영화 VALUES ('애니메이션','더 퍼스트 슬램덩크','박정우','001')

INSERT INTO 영화 VALUES ('드라마','카운트','양현준','002')

INSERT INTO 영화 VALUES ('로맨스','러브로지','노지인','003')

INSERT INTO 영화 VALUES ('애니메이션','스즈메의 문단속','안정우','004')

INSERT INTO 영화 VALUES ('애니메이션','귀멸의 칼날','현유나','005')

SELECT*FROM 영화

INSERT INTO 예매하기 VALUES ('합정점',003,2,'카카오페이',123)

INSERT INTO 예매하기 VALUES ('서면점',005,4,'신용카드',456)

INSERT INTO 예매하기 VALUES ('부평점',004,1,'네이버페이',789)

INSERT INTO 예매하기 VALUES ('동성로점',002,2,'현금',999)

INSERT INTO 예매하기 VALUES ('해운대점',001,3,'체크카드',777)

SELECT*FROM 예매하기

SELECT*
FROM 예매하기 B,영화관 C
WHERE B.영화관 = C.지점

SELECT*
FROM 예매하기 B,영화 M
WHERE B.영화코드 = M.영화코드

SELECT*
FROM 예매하기 B
LEFT OUTER JOIN 영화 M
ON B.영화코드 = M.영화코드

SELECT*
FROM 예매하기 B
RIGHT OUTER JOIN 영화 M
ON B.영화코드 = M.영화코드

UPDATE "MEMBER" SET TEL = '999'
WHERE ID ='COM'

INSERT INTO "MEMBER"
VALUES ('COM','COM','COM','COM')

DELETE FROM "MEMBER" m
WHERE ID = 'COM'

SELECT*FROM "MEMBER" m 


