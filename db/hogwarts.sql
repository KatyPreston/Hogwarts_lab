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
  house varchar(255) REFERENCES houses(name) ON DELETE CASCADE,
  age int2
);
