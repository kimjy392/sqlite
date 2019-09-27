-- 명령어 앞에 . 이 있으면 sql 문이 아니에요

-- 데이터베이스 생성 $ sqlite3 db.sqlite3
.databases
-- CSV 파일로 테이블 생성
.mode csv
.import hellordb.csv examples
-- 테이블 조회
SELECT * FROM examples;
-- 스키마 조회
.schema examples