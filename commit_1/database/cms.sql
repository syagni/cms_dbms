use cumsdbms;

CREATE TABLE IF NOT EXISTS `admin`(
	`admin_id` VARCHAR(36) NOT NULL,
	`name` VARCHAR(255) NOT NULL,
	`email` VARCHAR(255) NOT NULL UNIQUE,
	`password` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`admin_id`)
);

CREATE TABLE IF NOT EXISTS `student` (
	`s_id` VARCHAR(36) NOT NULL,
	`s_name` VARCHAR(255) NOT NULL,
	`gender` VARCHAR(6) NOT NULL,
	`dob` DATE NOT NULL,
	`email` VARCHAR(255) NOT NULL UNIQUE,
	`s_address` VARCHAR(255) NOT NULL,
	`contact` VARCHAR(12) NOT NULL,
	`password` VARCHAR(255) NOT NULL,
	`section` INT NOT NULL,
	`joining_date` DATE DEFAULT(CURRENT_DATE),
	`dept_id` VARCHAR(255),
	PRIMARY KEY (`s_id`)
);

CREATE TABLE IF NOT EXISTS `staff` (
	`st_id` VARCHAR(36) NOT NULL,
	`st_name` VARCHAR(255) NOT NULL,
	`gender` VARCHAR(6) NOT NULL,
	`dob` DATE NOT NULL,
	`email` VARCHAR(255) NOT NULL UNIQUE,
	`st_address` VARCHAR(255) NOT NULL,
	`contact` VARCHAR(12) NOT NULL,
	`dept_id` VARCHAR(255) NOT NULL,
	`password` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`st_id`)
);

CREATE TABLE IF NOT EXISTS `department` (
	`dept_id` VARCHAR(255) NOT NULL UNIQUE,
	`d_name` VARCHAR(255) NOT NULL UNIQUE,
	PRIMARY KEY (`dept_id`)
);
--  ALTER USER 'vs'@'localhost:5000' IDENTIFIED WITH mysql_native_password BY 'vs';
