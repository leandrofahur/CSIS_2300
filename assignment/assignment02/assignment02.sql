-- Assignment02: leandro Machado
drop table order1 cascade constraint;

-- 1.
create table order1(
    orderno number(5) not null,
    customer_id number(5) not null,
    prod_id number(5) not null,
    date1 date not null,
    qty number(4) not null,
    salesman_id number(5) not null,    
    constraint customer_order1_fk foreign key(customer_id) references customer(customer_id),
    constraint salesman_order1_fk foreign key(salesman_id) references salesman(salesman_id)
);

-- 2.
insert into order1 values(9001, 3007, 104, to_date('10-15-2019', 'mm-dd-yyyy'), 5, 5002);
insert into order1 values(9001, 3007, 108, to_date('10-15-2019', 'mm-dd-yyyy'), 5, 5002);
insert into order1 values(9002, 3009, 109, to_date('10-20-2019', 'mm-dd-yyyy'), 5, 5007);
insert into order1 values(9003, 3002, 102, to_date('10-14-2019', 'mm-dd-yyyy'), 5, 5001);
insert into order1 values(9003, 3002, 101, to_date('10-14-2019', 'mm-dd-yyyy'), 5, 5001);

-- 3.
alter table order1
add constraint order1_pk primary key(prod_id);

-- 4.
alter table customer
add referred number(4);

-- 5.
update customer set referred = 3006 where customer.customer_id = 3002;
update customer set referred = 3003 where customer.customer_id = 3008;

-- 6.
select * from order1 order by qty DESC;

-- 7.
-- select * from order1 where order1.customer_id = 3007;
select * from customer, order1 where customer.customer_id = order1.customer_id and order1.customer_id = 3007;

-- 8.
select * from order1 where order1.date1 between to_date('10/14/2008','mm-dd-yyyy') and to_date('10/15/2019','mm-dd-yyyy');

-- 9.
select UPPER(name) as Upper_name from salesman where name like '%au%';

-- 10.
select distinct salesman.name from salesman, order1 where salesman.salesman_id = order1.salesman_id;

-- 11.
select customer.cust_name as "Customer_Name", customer.referred as "Customer_Referred" from customer where customer.referred is not null;

-- 12.
select distinct customer.cust_name, customer.referred from customer full outer join order1 on customer.customer_id = order1.customer_id;

-- 13.
select distinct customer.city from customer union select distinct salesman.city from salesman;

-- 14.
select distinct customer.city from customer intersect select distinct salesman.city from salesman;

-- 15.
select customer.city from customer where customer.city not in (select salesman.city from salesman);

-- 16.
select sum(order1.qty), salesman.name from order1 inner join salesman on order1.salesman_id = salesman.salesman_id group by order1.orderno, salesman.name; 

-- 17.
select sum(order1.qty), salesman.name from order1 inner join salesman on order1.salesman_id = salesman.salesman_id group by order1.orderno, salesman.name where sum(order1.qty) > 10; 

-- 18.
-- select customer.customer_id, customer.cust_name, customer.grade from customer where customer.grade > (select customer_id from customer where customer_id = 3006);
select customer.customer_id, customer.cust_name, customer.grade from customer where customer.grade > ( select grade from customer where customer.customer_id = 3002);

-- 19.
select cust_name, grade, (select AVG(grade) from customer) from customer;

-- 20.
select customer.grade, salesman.grade from customer, salesman where customer.grade > salesman.grade and salesman.comission = (select comission from salesman where )

-- 21.


-- 22.
select salesman.name, ROUND(commission*7890.80,0) FROM salesman;

-- 23.
select customer.cust_name, NVL(to_char(referred),'no referral') FROM customer;

-- 24.
select SUBSTR(cust_name, 1, 3) from customer;