DROP TABLE IF EXISTS students ;
DROP TABLE IF EXISTS houses;

CREATE TABLE houses (
  id serial4 primary key,
  name varchar(255),
  url text
);

CREATE TABLE students (
  id serial4 primary key,
  first_name varchar(255),
  last_name varchar(255),
  house_id int4 REFERENCES houses(id) ON DELETE CASCADE,
  age int2
);
