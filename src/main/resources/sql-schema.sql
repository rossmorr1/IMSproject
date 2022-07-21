drop schema ims;

CREATE SCHEMA IF NOT EXISTS `ims`;

USE `ims` ;

CREATE TABLE IF NOT EXISTS `ims`.`customers` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(40) DEFAULT NULL,
    `surname` VARCHAR(40) DEFAULT NULL,
    PRIMARY KEY (`id`)
);

create table if not exists Product(
ProductID int primary key auto_increment,
ProductName varchar(50) not null,
Price decimal(10,2) not null
);

create table if not exists OrderRecord(
OrderID int primary key auto_increment,
CustomerID int not null,
foreign key (CustomerID) references Customer(CustomerID)
);


create table if not exists OrderProduct(
id int primary key auto_increment,
OrderId int not null,
ProductID int not null,
foreign key (OrderID) references Ordered(OrderID),
foreign key (ProductID) references product(ProductID)
);