-- use database =>run query
create table test (
	id integer primary key autoincrement,
    name text,
    age integer
);

alter table test rename to user;

alter table user add COLUMN email text;

ALTER TABLE user RENAME COLUMN name to username;

drop table user;