-- 스키마 선택 명령어
use mydb;

-- 테이블 생성 명령어
create table test (
	id integer primary key auto_increment,
    name text,
    age integer
);

-- 테이블 이름 변경
alter table test rename to user;

-- 컬럼 추가
alter table user add column email text;

-- 컬럼 이름 수정
alter table user change name username text;

-- 테이블 삭제
drop table user;