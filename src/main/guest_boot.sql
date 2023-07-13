show tables;

CREATE TABLE test_guestbook(
	id INT PRIMARY KEY auto_increment, -- 방명록 글 번호
	guestName VARCHAR(20) NOT NULL,    -- 방명록 작성자
	password VARCHAR(30) NOT NULL,     -- 방명록 비밀번호
	message TEXT					   -- 방명록 글	
);

DESC test_guestbook;

INSERT INTO test_guestbook(guestName,password,message)
SELECT guestName,password,message FROM test_guestbook;
 
SELECT count(*) FROM test_guestbook ORDER BY id DESC

SELECT * FROM test_guestbook ORDER BY id DESC 
-- limit 시작인덱스 번호, 한번에 보여줄 게시물 개수
limit 10, 10;