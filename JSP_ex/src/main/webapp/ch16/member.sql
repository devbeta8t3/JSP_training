CREATE TABLE IF NOT EXISTS member(
	id VARCHAR(20) NOT NULL PRIMARY KEY,
	passwd VARCHAR(20),
	name VARCHAR(30)
	
)default CHARACTER SET utf8;

ALTER TABLE member DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;	-- 만든 후 변경
ALTER TABLE member convert to character set utf8 COLLATE utf8_general_ci;
);default character set utf8 collate utf8_general_ci;	-- 만들때

SELECT * FROM member;


show full columns from member;
drop table member;