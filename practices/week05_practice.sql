-- 1)
drop table salesman cascade constraints;
drop table customer cascade constraints;

create table salesman(
    salesman_id number(5) not null,
    name varchar2(20) not null,
    city varchar2(20) not null,
    commission number(4,2) not null,
    constraint salesman_pk primary key(salesman_id)
);

create table customer(
    customer_id number(5) not null,
    cust_name varchar2(20) not null,
    city varchar(20) not null,
    grade integer not null,
    salesman_id number(5) not null,
    constraint customer_pk primary key(customer_id),
    constraint customer_salesman_fk foreign key(salesman_id) references salesman(salesman_id)
);

insert into salesman (salesman_id, name, city, commission) values(5001, 'James Hoog', 'New York', 0.15);
insert into salesman (salesman_id, name, city, commission) values(5002, 'Nail Knite', 'Paris', 0.13);
insert into salesman (salesman_id, name, city, commission) values(5005, 'Pit Alex', 'London', 0.11);
insert into salesman (salesman_id, name, city, commission) values(5006, 'Mc Lyon', 'Paris', 0.14);
insert into salesman (salesman_id, name, city, commission) values(5007, 'Paul Adam', 'Rome', 0.13);
insert into salesman (salesman_id, name, city, commission) values(5003, 'Lauson Hen', 'San Jose', 0.12);

insert into customer (customer_id, cust_name, city, grade, salesman_id) values(3002, 'Nick Rimando', 'New York', 100, 5001);
insert into customer (customer_id, cust_name, city, grade, salesman_id) values(3007, 'Brad Davis', 'New York', 200, 5001);
insert into customer (customer_id, cust_name, city, grade, salesman_id) values(3005, 'Grahan Zusi', 'California', 200, 5002);
insert into customer (customer_id, cust_name, city, grade, salesman_id) values(3008, 'Julia Green', 'London', 300, 5002);
insert into customer (customer_id, cust_name, city, grade, salesman_id) values(3004, 'Fabian Johnson', 'Paris', 300, 5006);
insert into customer (customer_id, cust_name, city, grade, salesman_id) values(3009, 'Geoff Cameron', 'Berlin', 100, 5003);
insert into customer (customer_id, cust_name, city, grade, salesman_id) values(3003, 'Jozy Altidor', 'Moskow', 200, 5007);



-- 2)
-- a.
select * from salesman;
-- b.
select cust_name, grade from customer;
-- c.
select * from salesman where salesman_id = 5007;
-- d.
select * from customer where city = 'New York';
-- e.
select * from customer where grade between 100 and 200;
-- f.
select * from customer where cust_name like 'J%';
-- g.
select commission*5000 as salesman_commission_5000 from salesman order by 'desc';
-- h.
select cust_name from customer where grade > 200;
-- i.
select * from customer where grade > 200 and city='London';
-- j.
select * from salesman where city = 'New York' OR city = 'Paris';



-- 3)
-- a.
select * from customer inner join salesman on 'cust_name'='name'; 
-- b.
select * from customer inner join salesman on customer.city=salesman.city; 
-- c.
select * from customer inner join salesman on customer.cust_name = salesman.name and customer.grade > 300 and customer.city = 'London'; 

