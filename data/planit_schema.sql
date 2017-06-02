CREATE DATABASE planit_db;

USE planit_db;

/* Tables for user data */

CREATE TABLE users(
  id INT NOT NULL AUTO_INCREMENT,
  user_unique_id VARCHAR(100),
  user_firstname VARCHAR(30) NULL,
  user_lastname VARCHAR(30) NULL,
  user_email VARCHAR(100),
  user_phone VARCHAR(12),
  date_created DATETIME NOT NULL DEFAULT NOW(),
  PRIMARY KEY (id)
);

CREATE TABLE people(
  id INT NOT NULL AUTO_INCREMENT,
  person_unique_id VARCHAR(100) NOT NULL,  
  person_firstname VARCHAR(30),
  person_lastname VARCHAR(30),
  person_birthday DATE,
  date_created DATETIME NOT NULL DEFAULT NOW(),
  FKID_user_unique_id VARCHAR(40),
  PRIMARY KEY (id)
);
-- passes table is not currently used --
CREATE TABLE passes(
  id INT NOT NULL AUTO_INCREMENT,
  pass_name VARCHAR(30) NOT NULL,
  expiration_date DATE,
  FKID_event_unique_id VARCHAR(40) NOT NULL,
  FKID_person_unique_id VARCHAR(40) NOT NULL
  PRIMARY KEY (id),
);


/* Tables for data */

CREATE TABLE events_(
  id INT NOT NULL AUTO_INCREMENT,
  event_name VARCHAR(100) NOT NULL,
  /* event_ */
  event_streetaddress VARCHAR(100),
  event_city VARCHAR(40),
  event_zip VARCHAR(40),
  event_lat DOUBLE,
  event_long DOUBLE,
  event_unique_id VARCHAR(50) NOT NULL,
  date_created DATETIME NOT NULL DEFAULT NOW(),
  FKID_venue_unique_id VARCHAR(40),

  nearest_events VARCHAR(255), /* this will store an array of events within 10 minutes */

  PRIMARY KEY (id)
);
  
CREATE TABLE venues(
  id INT NOT NULL AUTO_INCREMENT,
  venue_name VARCHAR(100),
  venue_streetaddress VARCHAR(100),
  venue_city VARCHAR(40),
  venue_zip VARCHAR(5),
  venue_phone
  venue_website
  venue_description
  parking_information
  venue_email
  venue_link-href
  venue_lat DOUBLE,
  venue_long DOUBLE,
  FKID_venue_unique_id
  PRIMARY KEY (id)
);

CREATE TABLE weather_daily(
  id INT NOT NULL AUTO_INCREMENT,
  zipcode VARCHAR(5)
  /* need tp cpmmect weekly and hourly weather data */
);

