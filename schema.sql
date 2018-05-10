CREATE DATABASE doingsdone
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

  USE doingsdone;

CREATE TABLE categories (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name CHAR(128),
  author_id INT,
);

CREATE TABLE tasks (
  id INT AUTO_INCREMENT PRIMARY KEY,
  createdate DATETIME,
  donedate DATETIME,
  name Char(128),
  file Char(256),
  deadline DATETIME,
  author_id INT,
  project_name INT,
);

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  regdate DATETIME,
  email Char(128) UNIQUE,
  name Char (128),
  password Char (128),
  contacts Char (128),
)
