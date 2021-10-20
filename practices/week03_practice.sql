drop table CD cascade constraint ;
drop table Artist cascade constraint ;
drop table Track;



create table CD(
    cID number not null,
    Title varchar2(15) not null,
    Price number(4,2) not null,
    constraint cd_pk primary key(cID)
);

create table Artist(
    aID number not null,
    Name varchar2(15) not null,    
    constraint artist_pk primary key(aID)
);

create table Track(
    cID number not null,
    Num number not null,
    Title varchar2(15) not null,
    Time integer not null,
    aID number not null,
    constraint track_pk primary key(Title, cID, aID),
    constraint cID foreign key(cID) references CD,
    constraint aID foreign key(aID) references Artist
);



insert into CD (cID, Title, Price) values (1, 'Mix', 19.99);
insert into CD (cID, Title, Price) values (2, 'Compilation', 11.99);

insert into Artist (aID, Name) values (1, 'Jango');
insert into Artist (aID, Name) values (2, 'Ranna');

insert into Track (cID, Num, Title, Time, aID) values (1,1,'Reason', 239, 1);
insert into Track (cID, Num, Title, Time, aID) values (1,2,'I Love You', 410, 1);
insert into Track (cID, Num, Title, Time, aID) values (1,3,'Breathless', 217, 1);
insert into Track (cID, Num, Title, Time, aID) values (1,4,'I am no 4', 279, 1);
insert into Track (cID, Num, Title, Time, aID) values (2,1,'Lion', 362, 1);
insert into Track (cID, Num, Title, Time, aID) values (2,2,'Catman', 417, 2);



select * from Track where cID = 1 OR aID = 1;
select * from Track where Title = 'Lion';
select * from CD where Price < 12.00;
select * from Artist where Name = 'Jango';
select * from Track where Time < 300 and Time > 200;