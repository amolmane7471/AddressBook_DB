#UC1 : ability to create database
CREATE DATABASE addressbook;
USE addressbook;
SELECT DATABASE();

#UC2 : ability to create table

CREATE TABLE address_book(first_name VARCHAR(255)NOT NULL,last_name VARCHAR(255)NOT NULL,
						 address VARCHAR(255)NOT NULL,city VARCHAR(255)NOT NULL,
                         state VARCHAR(255)NOT NULL,zip VARCHAR(150)NOT NULL,
                         phone_number VARCHAR(150)NOT NULL,email VARCHAR(255)NOT NULL);  


