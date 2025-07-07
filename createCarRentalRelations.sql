Use carRental;
GO

IF OBJECT_ID('fixing', 'U') IS NOT NULL
    DROP TABLE fixing;
IF OBJECT_ID('payment', 'U') IS NOT NULL
    DROP TABLE payment;
IF OBJECT_ID('reserve', 'U') IS NOT NULL
    DROP TABLE reserve;
IF OBJECT_ID('wallet', 'U') IS NOT NULL
    DROP TABLE wallet;
IF OBJECT_ID('phoneNumber', 'U') IS NOT NULL
    DROP TABLE phoneNumber;
IF OBJECT_ID('maker', 'U') IS NOT NULL
    DROP TABLE maker;
IF OBJECT_ID('holder', 'U') IS NOT NULL
    DROP TABLE holder;
IF OBJECT_ID('manager', 'U') IS NOT NULL
    DROP TABLE manager;
IF OBJECT_ID('workShop', 'U') IS NOT NULL
    DROP TABLE workShop;
IF OBJECT_ID('staff', 'U') IS NOT NULL
    DROP TABLE staff;
IF OBJECT_ID('car', 'U') IS NOT NULL
    DROP TABLE car;
IF OBJECT_ID('person', 'U') IS NOT NULL
    DROP TABLE person;

create table person
(
	pID integer not null,
	pName nvarchar(25) not null,
	pAddress nvarchar(50),
	gender char(10),
	birthDay date,
	primary key (pID),
	check(gender in ('Male','Female')),
	constraint CHK_Person_Age check (DATEDIFF(YEAR, birthDay, GETDATE()) BETWEEN 18 AND 100)
);

create table car
(
	carID integer not null,
	color nvarchar(30),
	model nvarchar(30),
	carYear nvarchar(4),
	carName nvarchar(30),
	carWeight nvarchar(25),
	primary key(carID),
	check(color in ('White','Black','Green','Blue','Red'))
);

create table staff
(
	pID integer not null,
	workShopID integer,
	primary key (pID),
	foreign key (pID) references person(pID) on delete cascade
);

create table workShop
(
	shopID integer not null,
	shopAddress nvarchar(50),
	primary key (shopID)
);

create table manager
(
	pID integer not null,
	workShopID integer not null,
	primary key (pID,workShopID),
	foreign key (pID) references person(pID) on delete cascade,
	foreign key (workShopID) references workShop(shopID) on delete cascade
);

create table holder
(
	pID integer not null,
	carID integer not null,
	primary key (pID,carID),
	foreign key (pID) references person(pID) on delete cascade,
	foreign key (carID) references car(carID) on delete cascade
);

create table maker
(
	pID integer not null,
	carID integer not null,
	primary key (pID,carID),
	foreign key (pID) references person(pID) on delete cascade,
	foreign key (carID) references car(carID) on delete cascade
);

create table phoneNumber
(
	pID integer not null,
	phone nvarchar(20) not null,
	primary key(pID,phone),
	foreign key (pID) references person(pID) on delete cascade
);

create table wallet
(
	pID integer not null,
	amount integer,
	primary key(pID),
	foreign key(pID) references person(pID) on delete cascade
);

create table reserve
(
	pID integer not null,
	carID integer not null,
	dateFrom date not null,
	dateTo date not null,
	fee integer,
	primary key (pID,carID,dateFrom,dateTo),
	foreign key (pID) references person(pID) on delete cascade,
	foreign key (carID) references car(carID) on delete cascade
);

create table payment
(
	pID integer not null,
	carID integer not null,
	dateFrom date not null,
	dateTo date not null,
	payDate date not null,
	amount integer not null,
	primary key (pID,carID,dateFrom,dateTo,payDate),
	foreign key (pID,carID,dateFrom,dateTo) references reserve (pID,carID,dateFrom,dateTo) on delete cascade
);

create table fixing
(
	carID integer not null,
	shopID integer not null,
	dateFrom date not null,
	dateTo date not null,
	cost integer not null,
	primary key (carID,dateFrom,dateTo),
	foreign key (shopID) references workShop(shopID) on delete cascade,
	foreign key (carID) references car(carID) on delete cascade
);

