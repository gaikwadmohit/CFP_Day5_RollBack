create database rollback;
use rollback;
CREATE TABLE customer (    
    Id int PRIMARY KEY NOT NULL,     
    Name varchar(45) NOT NULL,     
    Product varchar(45) DEFAULT NULL,     
    Country varchar(25) DEFAULT NULL,     
    Year int NOT NULL    
);    
CREATE TABLE customer2 (    
    Id int PRIMARY KEY NOT NULL,     
    Name varchar(45) NOT NULL,     
    Product varchar(45) DEFAULT NULL,     
    Country varchar(25) DEFAULT NULL,     
    Year int NOT NULL    
);    
INSERT INTO customer ( Id, Name, Product, country, Year)     
VALUES (5, 'Stephen', 'Computer', 'USA', 2015);  

INSERT INTO customer2 ( Id, Name, Product, country, Year)     
VALUES (106, 'mohit', 'Civil', 'india', 2011);  

start transaction;

savepoint my_savepoint;
rollback;

commit;

select* from customer;
select* from customer2;
