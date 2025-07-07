Use carRental;
GO

delete from person;
delete from staff;
delete from holder;
delete from manager;
delete from maker;
delete from car;
delete from workShop;
delete from wallet;
delete from reserve;
delete from payment;

--Insert into person--
INSERT INTO person VALUES (1,'Ehsan','los angeles','Male','2005-10-19');
INSERT INTO person VALUES (2,'Arash','Tokyo','Male','2004-09-12');
INSERT INTO person VALUES (3,'Mahsa','Tehran','Female','1988-05-15');
INSERT INTO person VALUES (4,'Negar',NULL,'Female','2000-02-22');
INSERT INTO person VALUES (5,'Ali','Isfahan','Male','1972-01-17');
INSERT INTO person VALUES (6, 'Sarah', 'New York', 'Female', '1995-03-15');
INSERT INTO person VALUES (7, 'Michael', 'Chicago', 'Male', '1980-06-22');
INSERT INTO person VALUES (8, 'Emily', 'San Francisco', 'Female', '2000-11-30');
INSERT INTO person VALUES (9, 'James', 'Boston', 'Male', '1975-09-10');
INSERT INTO person VALUES (10, 'Aisha', 'Houston', 'Female', '1990-01-25');
INSERT INTO person VALUES (11, 'David', 'Miami', 'Male', '1960-04-12');
INSERT INTO person VALUES (12, 'Linda', 'Seattle', 'Female', '1945-07-07');
INSERT INTO person VALUES (13, 'Robert', 'Denver', 'Male', '2007-07-07');
INSERT INTO person VALUES (14, 'Fatima', 'Phoenix', 'Female', '1988-12-05');
INSERT INTO person VALUES (15, 'Thomas', 'Atlanta', 'Male', '1955-02-28');
INSERT INTO person VALUES (16, 'Sophie', 'Portland', 'Female', '1998-08-14');
INSERT INTO person VALUES (17, 'William', 'Dallas', 'Male', '1970-10-03');
INSERT INTO person VALUES (18, 'Amira', 'Austin', 'Female', '2003-05-20');
INSERT INTO person VALUES (19, 'Charles', 'Philadelphia', 'Male', '1935-07-07');
INSERT INTO person VALUES (20, 'Jessica', 'San Diego', 'Female', '1982-03-19');

--Insert into workShop--
INSERT INTO workShop VALUES (1,'San Diego');
INSERT INTO workShop VALUES (2,'Miami');
INSERT INTO workShop VALUES (3,'Denver');
INSERT INTO workShop VALUES (4,'Isfahan');
INSERT INTO workShop VALUES (5,NULL);

--Insert into wallet--
INSERT INTO wallet VALUES (1,5000);
INSERT INTO wallet VALUES (2,3000);
INSERT INTO wallet VALUES (3,200);
INSERT INTO wallet VALUES (4,130);
INSERT INTO wallet VALUES (5,65);
INSERT INTO wallet VALUES (6,155);
INSERT INTO wallet VALUES (7,335);
INSERT INTO wallet VALUES (8,95);
INSERT INTO wallet VALUES (9,5);
INSERT INTO wallet VALUES (10,74);
INSERT INTO wallet VALUES (11,466);
INSERT INTO wallet VALUES (12,701);
INSERT INTO wallet VALUES (13,651);
INSERT INTO wallet VALUES (14,432);
INSERT INTO wallet VALUES (15,900);
INSERT INTO wallet VALUES (16,807);
INSERT INTO wallet VALUES (17,32);
INSERT INTO wallet VALUES (18,99);
INSERT INTO wallet VALUES (19,187);
INSERT INTO wallet VALUES (20,341);

--Insert into car--
INSERT INTO car VALUES (1,'Green','G33','2022','Pride','1500');
INSERT INTO car VALUES (2,'White',NULL,'2025','Mazda','2000');
INSERT INTO car VALUES (3,'Black','J67','2020','207','1600');
INSERT INTO car VALUES (4,'Red','S55','2023','Toyota','2500');
INSERT INTO car VALUES (5,'Blue',NULL,'2025','Mazda3','1900');

--Insert into staff--
INSERT INTO staff VALUES (2,1);
INSERT INTO staff VALUES (5,1);
INSERT INTO staff VALUES (6,2);
INSERT INTO staff VALUES (10,5);
INSERT INTO staff VALUES (9,3);

--Insert into manager--
INSERT INTO manager VALUES (1,3);
INSERT INTO manager VALUES (3,4);
INSERT INTO manager VALUES (7,1);
INSERT INTO manager VALUES (11,2);
INSERT INTO manager VALUES (15,5);

--Insert into holder--
INSERT INTO holder VALUES (1,5);
INSERT INTO holder VALUES (4,1);
INSERT INTO holder VALUES (8,3);
INSERT INTO holder VALUES (12,2);
INSERT INTO holder VALUES (15,4);

--Insert into maker--
INSERT INTO maker VALUES (13,5);
INSERT INTO maker VALUES (16,1);
INSERT INTO maker VALUES (17,3);
INSERT INTO maker VALUES (14,2);
INSERT INTO maker VALUES (20,4);

--Insert into reserve--
INSERT INTO reserve VALUES (1,4,'2024-09-19','2024-09-23',100);
INSERT INTO reserve VALUES (1,3,'2024-06-20','2024-09-23',500);
INSERT INTO reserve VALUES (1,5,'2023-03-04','2023-03-07',300);
INSERT INTO reserve VALUES (1,2,'2020-10-04','2023-10-10',100);
INSERT INTO reserve VALUES (19,1,'2023-03-03','2023-03-15',80);
INSERT INTO reserve VALUES (15,3,'2023-05-07','2023-05-09',60);
INSERT INTO reserve VALUES (3,2,'2024-01-17','2024-01-27',200);
INSERT INTO reserve VALUES (9,5,'2022-08-19','2022-08-25',95);

--Insert into payment--
INSERT INTO payment VALUES (1,4,'2024-09-19','2024-09-23','2024-09-19',30);
INSERT INTO payment VALUES (1,4,'2024-09-19','2024-09-23','2024-09-22',40);
INSERT INTO payment VALUES (1,4,'2024-09-19','2024-09-23','2024-09-24',30);
INSERT INTO payment VALUES (19,1,'2023-03-03','2023-03-15','2023-03-15',80);
INSERT INTO payment VALUES (15,3,'2023-05-07','2023-05-09','2023-05-07',60);
INSERT INTO payment VALUES (3,2,'2024-01-17','2024-01-27','2024-01-17',50);
INSERT INTO payment VALUES (3,2,'2024-01-17','2024-01-27','2024-01-18',30);
INSERT INTO payment VALUES (3,2,'2024-01-17','2024-01-27','2024-01-19',20);
INSERT INTO payment VALUES (3,2,'2024-01-17','2024-01-27','2024-01-25',50);
INSERT INTO payment VALUES (3,2,'2024-01-17','2024-01-27','2024-01-28',50);
INSERT INTO payment VALUES (9,5,'2022-08-19','2022-08-25','2022-08-24',45);
INSERT INTO payment VALUES (9,5,'2022-08-19','2022-08-25','2022-08-25',50);

--Insert into fixing--
INSERT INTO fixing VALUES (1,4,'2019-10-05','2019-10-25',100);
INSERT INTO fixing VALUES (1,2,'2020-03-20','2020-03-22',30);
INSERT INTO fixing VALUES (2,1,'2010-01-02','2010-01-03',44);
INSERT INTO fixing VALUES (3,5,'2009-04-02','2009-04-05',32);
INSERT INTO fixing VALUES (5,3,'2005-08-22','2005-08-25',56);