-- DB一覧を表示
show databases;

create database my_db;

-- DB削除
drop database my_db;

-- DBに入る 
use my_db;

-- 利用中のDB表示
select database();

-- テーブル参照
show tables;

-- テーブル作成
create table people(
  id INT primary key,
  name varchar(50),
  birth_day date default "1990-01-01"
);

-- テーブル削除
drop table users;

-- テーブル定義　確認
describe users_table;

-- テーブル名変更
alter table users rename to users_table;

-- カラム削除
alter table users_table drop column message;

-- カラム追加
alter table users_table add post_code char(8);
alter table users_table add gender char(1) after age;

-- カラム追加(一番最初)
alter table users_table add new_id int first;

alter table users_table drop column new_id;

-- カラム定義変更（ここではデータタイプ）
alter table users_table modify name varchar(50);

-- カラム名変更
alter table users_table change column name nam varchar(50);

-- カラムを一番下に移動
alter table users_table change column gender gender char(1) after post_code;

-- 主キーの削除
alter table users_table drop primary key;

create table students(
	id int primary key,
    name char(10)
);
-- テーブル定義確認
describe people;

insert into students value (2, "ABCDE ");

select * from students;
alter table students modify name varchar(10);

insert into people values(15, 'chris', '1', '2022-01-01');

alter table people add age int after name;
select distinct age from people order by age desc;

select * from people;

-- 一文字一致
select * from people where name like 'a____';

-- 含む
select * from people where age not in(23, 25);
select * from people where id in(select age from people where age <10);

select * from people;
-- 最小値より大きい
select * from people where id > any(select age from people where age <10);
-- 最大値より小さい
select * from people where id < any(select age from people where age <10);

-- 最大値より大きい
select * from people where id > all(select age from people where age <10);
-- 最小値より小さい
select * from people where id < all(select age from people where age > 1 and  age <10);

-- nullの扱い
select * from people where age in(8,9, null);    -- nullを取り出さない
select * from people where age in(8,9) or age is null;
select * from people where age not in(8,9, null);     -- nullはtrueでもfalseでもない真偽値となるのでいずれの値も取り出さない
select * from people where age not in(8,9) and age is not null;
-- ポイント：nullを使うときはis nullやis not nullを使うこと






