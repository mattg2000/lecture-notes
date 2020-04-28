DROP TABLE IF EXISTS billDish;
DROP TABLE IF EXISTS bill;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS dish;

CREATE TABLE dish(
    dishId binary(16) not null,
    dishName varchar(32) not null,
    dishPrice decimal(4,2) not null,
    unique(dishName),
    primary key(dishId)
);

CREATE TABLE customer(
    customerId binary(16) not null,
    customerName varchar(48) not null,
    primary key(customerId)
);

CREATE TABLE bill(
    billId binary(16) not null,
    billCustomerId binary(16) not null,
    billDate datetime(3) not null,
    index(billCustomerId),
    foreign key(billCustomerId) references customer(customerId),
    primary key(billId)
);

create table billDish(
    billDishBillId binary(16) not null,
    billDishDishId binary(16) not null,
--  billQuantity is missing from lecture recording
    billQuantity tinyint unsigned,
    index(billDishBillId),
    index(billDishDishId),
    foreign key(billDishBillId) references bill(billId),
    foreign key(billDishDishId) references dish(dishId),
    primary key(billDishBillId, billDishDishId)
);