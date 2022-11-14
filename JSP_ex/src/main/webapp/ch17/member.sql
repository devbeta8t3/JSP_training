drop table member;

CREATE TABLE member(
	id VARCHAR(20) NOT NULL PRIMARY KEY,
	passwd VARCHAR(20),
	name VARCHAR(30)
)default character set utf8;
INSERT INTO member VALUES('1','1234','홍길순');
INSERT INTO member VALUES('2','1234','홍길동');

SELECT * FROM member;
show tables;
update member set passwd='1235' where id=2;