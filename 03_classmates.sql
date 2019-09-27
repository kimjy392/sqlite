CREATE TABLE classmates(
    name TEXT,
    age INTEGER,
    address TEXT
);

-- DATA 추가(INSERT)
INSERT INTO classmates(name, age)
VALUES ('홍길동', 23);

-- 모든 열의 데이터를 넣을 때는 컬럼을 명시할 필요가 없다.
INSERT INTO classmates
VALUES ('홍길동', 30, '서울');

-- Primarykey를 지정하지 않으면 rowid로 만들어진다.
SELECT rowid, * FROM classmates;

CREATE TABLE classmates(
    -- id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    address TEXT NOT NULL
);

-- primary key 를 지정하면 항상 key값을 넣어줘야한다.
INSERT INTO classmates
VALUES (1, '홍길동', 30, '서울');

-- 여러개를 저장할 떄
INSERT INTO classmates
VALUES ('박태수', 134, '공주'), ('이승열', 28, '대천');

-- 특정 column 조회
SELECT age, name FROM classmates;

-- LIMIT num : 위에서부터 num개만 가져오기!
SELECT name FROM classmates LIMIT 1;

-- OFFSET num : num개를 건너가서 
SELECT rowid, name FROM classmates LIMIT 1 OFFSET 2;

-- WHERE 
SELECT rowid, name FROM classmates WHERE address='서울';

-- 특정 column 중복 제거
SELECT DISTINCT age FROM classmates;

-- DELETE(pk값이 unique한 값이기 때문에 하나만 지우기 용이하다. WHERE 뒤에는 다른 조건을 걸 수도 있다.)
-- rowid는 삭제하면 덮어서 id 값을 사용한다.(삭제한 row 밑에서부터)
DELETE FROM classmates WHERE rowid=1;
-- 마지막 데이터를 삭제하고 새롭게 추가해보면,
-- id가 다시 활용되는 것을 볼 수 있다.
-- 이를 방지하려면, AUTOINCREMENT (django에서 id값) 

CREATE TABLE tests (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

INSERT INTO tests (name) VALUES('홍길동'), ('아아아');
SELECT * FROM tests;
DELETE FROM tests WHERE id=2;

UPDATE classmates SET age=27 WHERE name='박태수';