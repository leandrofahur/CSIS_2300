-- drop tables:
drop table charms_class cascade constraint;
drop table potions_class cascade constraint;

-- create & insert into tables:
create table charms_class(
    student_name varchar2(15) not null,
    charms_grade varchar2(1) not null,
    constraint charms_pk primary key(student_name)
);

insert into charms_class values('Harry','C');
insert into charms_class values('Ron','D');
insert into charms_class values('Hermione','A');
insert into charms_class values('Luna','B');
insert into charms_class values('Neville','B');

create table potions_class(
    student_name varchar2(15) not null,
    potions_grade varchar2(1) not null,
    constraint potions_pk primary key(student_name)
    -- constraint charms_potions_fk foreign key(student_name) references charms_class(student_name)
);

insert into potions_class values('Harry','A');
insert into potions_class values('Ron','C');
insert into potions_class values('Hermione','B');
insert into potions_class values('Giny','A');
insert into potions_class values('Draco','D');

-- retrieve Harry, Ron and Hermione with charms and potions grades:
select * from charms_class inner join potions_class on charms_class.student_name = potions_class.student_name order by charms_class.student_name asc;





