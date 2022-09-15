#UC1 : ability to create database
CREATE DATABASE addressbook;
USE addressbook;
SELECT DATABASE();

#UC2 : ability to create table

CREATE TABLE address_book(first_name VARCHAR(255)NOT NULL,last_name VARCHAR(255)NOT NULL,
						 address VARCHAR(255)NOT NULL,city VARCHAR(255)NOT NULL,
                         state VARCHAR(255)NOT NULL,zip VARCHAR(150)NOT NULL,
                         phone_number VARCHAR(150)NOT NULL,email VARCHAR(255)NOT NULL);  

#UC3 : ability to insert data into table

INSERT INTO address_book VALUES('amol','mane','xyz','pune','maharashtra','78454','874545412','amolmane@gmail.com'),
								('rohit','sharma','xyz','Mumbai','maharashtra','98545','9874587454','rohit11@gmail.com'),
								('virat','Kohli','jkl','Delhi','New Delhi','35121','784545122','vk44@gmail.com');

#UC4 : Ability To Edit existing Contact

UPDATE address_book set address = "pqr" WHERE first_name = "virat";
						
 #UC5 : Ability to delete person using person name
 
 DELETE FROM address_book WHERE first_name = "rohit";
 
 #UC6 : ability retrieve person belonging to a city or state
 
 SELECT first_name FROM address_book WHERE city = "Delhi" OR state = "New Delhi";
 
 #UC7 : ability to understand the size of addressBook by city and state
 
 SELECT COUNT(first_name) FROM address_book GROUP BY city,state;
 
 #UC8 : ability to retrieve entries sorted alphabetically by person name
 
 SELECT * FROM address_book WHERE city = "pune" ORDER BY first_name;
 
 #UC9 : Ability to identify each address book with name and type
 
 ALTER TABLE address_book ADD type VARCHAR(150) AFTER last_name;
UPDATE address_book set type = "friend" WHERE first_name = "amit";
UPDATE address_book set type = "family" WHERE first_name = "amol";
UPDATE address_book set type = "friend" WHERE first_name = "satish";
UPDATE address_book set type = "profession" WHERE first_name = "rohit";
UPDATE address_book set type = "profession" WHERE first_name = "virat";
SELECT first_name FROM address_book WHERE type = "friend";

#UC10 : ability to get number of contact persons i.e.count by type

SELECT type, Count(type) FROM address_Book GROUP BY type;