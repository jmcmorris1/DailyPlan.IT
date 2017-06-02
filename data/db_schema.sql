-- http://stackoverflow.com/questions/4464898/best-way-to-store-working-hours-and-query-it-efficiently
CREATE DATABASE test_hours_db;

USE test_hours_db;

-- ideas for UUID's http://mysqlserverteam.com/storing-uuid-values-in-mysql-tables/

DROP TABLE shops;

CREATE TABLE shops(
  id INT NOT NULL AUTO_INCREMENT,
  shopName VARCHAR(100),
  LogID VARCHAR(100),
  PRIMARY KEY (id)
);

CREATE TRIGGER before_insert_mytable
  BEFORE INSERT ON shops
  FOR EACH ROW
  SET new.LogID = uuid();


INSERT INTO shops (shopName) 
VALUES ("Best Buy"), ("Target"), ("Kroger");

SELECT * FROM shops;

CREATE TABLE shopHours( 
  id INT NOT NULL AUTO_INCREMENT,
  Shop INT,
  DayOfWeek TINYINT,
  OpenTime TIME,
  CloseTime TIME,
  FKID_shop_uuid VARCHAR(40),
  PRIMARY KEY (id)
);

CREATE TABLE shopOverrideHours(
  id INT NOT NULL AUTO_INCREMENT,
  Shop INTEGER,
  OverrideStartDate DATE,
  OverrideEndDate DATE,
  DayOfWeek TINYINT,
  AltOpenTime TIME, 
  AltCloseTime TIME,
  Closed TINYINT,
  FKID_shop_uuid VARCHAR(40),
  PRIMARY KEY (id)
);

-- https://dba.stackexchange.com/questions/57293/mysql-alter-table-to-automatically-put-in-a-uuid
CREATE TRIGGER before_insert_shops
  BEFORE INSERT ON shops
  FOR EACH ROW
  SET new.LogID = uuid();

