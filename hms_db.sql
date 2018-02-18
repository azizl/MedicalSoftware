﻿--
-- Script was generated by Devart dbForge Studio for MySQL, Version 6.3.358.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 03-02-2016 6:29:14 AM
-- Server version: 5.6.27-log
-- Client version: 4.1
--


-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set SQL mode
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

-- 
-- Set default database
--
USE hms_db;

--
-- Definition for table doctor
--
DROP TABLE IF EXISTS doctor;
CREATE TABLE doctor (
  DoctorID VARCHAR(50) NOT NULL,
  DoctorName TEXT NOT NULL,
  FatherName TEXT NOT NULL,
  Address TEXT NOT NULL,
  ContactNo TEXT NOT NULL,
  Email TEXT NOT NULL,
  Qualifications TEXT NOT NULL,
  Specialization TEXT NOT NULL,
  Gender TEXT NOT NULL,
  Bloodgroup TEXT NOT NULL,
  DateOfJoining TEXT NOT NULL,
  PRIMARY KEY (DoctorID)
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Definition for table patientregistration
--
DROP TABLE IF EXISTS patientregistration;
CREATE TABLE patientregistration (
  PatientID VARCHAR(50) NOT NULL,
  Patientname TEXT NOT NULL,
  Fathername TEXT NOT NULL,
  Address TEXT NOT NULL,
  ContactNo TEXT NOT NULL,
  Email TEXT NOT NULL,
  Age INT(11) NOT NULL,
  Gen TEXT NOT NULL,
  BG TEXT NOT NULL,
  Remarks TEXT NOT NULL,
  PRIMARY KEY (PatientID)
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Definition for table registration
--
DROP TABLE IF EXISTS registration;
CREATE TABLE registration (
  username VARCHAR(100) NOT NULL,
  password VARCHAR(50) NOT NULL,
  NameOfUser VARCHAR(250) NOT NULL,
  ContactNo VARCHAR(15) NOT NULL,
  Email VARCHAR(250) NOT NULL,
  PRIMARY KEY (username)
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci;


--
-- Definition for table users
--
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  username VARCHAR(100) NOT NULL,
  user_password VARCHAR(50) NOT NULL,
  PRIMARY KEY (username),
  CONSTRAINT users_ibfk_1 FOREIGN KEY (username)
    REFERENCES registration(username) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci;


-- 
-- Dumping data for table doctor
--
INSERT INTO doctor VALUES
('1', 'Raj Sharma', 'CM Sharma', 'Indore', '9827858191', 'raj20505@gmail.com', 'MBBS', 'Heart', 'M', 'O+', '10/10/2014');

-- 
-- Dumping data for table patientregistration
--
INSERT INTO patientregistration VALUES
('P-1', 'Aziz', 'Backpain', 'Bhavanagar', '9909330271', 'perkanulla@gmail.com', 17, 'M', 'B+', '');

-- 
-- Dumping data for table registration
--
INSERT INTO registration VALUES
('admin', '786786', 'Aziz', '9909330271', 'perkanulla@gmail.com');


-- 
-- Dumping data for table users
--
INSERT INTO users VALUES
('admin', '786786');

