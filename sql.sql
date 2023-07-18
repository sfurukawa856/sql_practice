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
describe students;

insert into students value (2, "ABCDE ");

select * from students;
alter table students modify name varchar(10);

insert into people values(7, 'chris', '23', '2000-01-01');
alter table people add age int after name;
select distinct age from people order by age desc;
select * from people limit 3,2;



