DROP USER IF EXISTS 'bmsuser'@'localhost';
CREATE USER 'bmsuser'@'localhost' IDENTIFIED BY 'bmspassword';

DROP DATABASE IF EXISTS bmsdb;
CREATE DATABASE bmsdb;

GRANT ALL PRIVILEGES ON bmsdb.* TO 'bmsuser'@'localhost';
FLUSH PRIVILEGES;