Drop database week20;
create database week20;

use week20;

create table veasy(
make varchar (30),
model varchar (30),
year int
);
select * from veasy;
insert into veasy (make,model,year)
values ('Honda','NSX','2016'),
('Toyota','Supra RZ','1996'),
('Mazda','RX-7','1989');

create table easy (
title varchar (30),
published date,
author varchar (30)
);

select * from easy;
insert into easy (title, author, published)
values ('Tribe','Sebastian Junger','2016-05-24'),
('AVAILABILITY OF MCRP 3-17.7L, EXPLOSIVES AND DEMOLITIONS','United States Marine Corps','2016-03-15'),
('Call Sign Chaos','Jim "Mad Dog" Mattis','2019-11-03'),
('Harry Potter and the Chamber of Secrets','J. K. Rowling','1998-07-02'),
('Harry Potter and the Deathly Hallows','J. K. Rowling','2007-07-21');

create table med(
title varchar (200),
releaseDate date,
rating int
);

select * from med;
insert into med(title,releaseDate, rating)
values('Harry Potter and the Philosophers Stone ','2001-11-14','81%'),
('Harry Potter and the Chamber of Secrets','2002-11-12','82%'),
('Harry Potter and the Prisoner of Azkaban','2004-06-04','90%'),
('Harry Potter and the Goblet of Fire','2005-11-18','88%'),
('Harry Potter and the Order of the Pheonix','2007-07-11','77%'),
('Harry Potter and the Half-Blood Prince','2009-07-15','84%'),
('Harry Potter and the Deathly Hallows Pt 1','2010-11-19','77%'),
('Harry Potter and the Deathly Hallows Pt 2','2011-07-15','96%'),
('Fantastic Beasts and where to find them','2016-11-10','74%'),
('Fantastic Beasts: The crimes of Grindelwald','2018-11-08','37%');

create table hard(
id int not null auto_increment primary key,
title varchar (200),
releaseDate date,
rating int
);

insert into hard(tittle, releaseDate, rating)
values('Harry Potter and the Philosophers Stone ','2001-11-14','81%'),
('Harry Potter and the Chamber of Secrets','2002-11-12','82%'),
('Harry Potter and the Prisoner of Azkaban','2004-06-04','90%'),
('Harry Potter and the Goblet of Fire','2005-11-18','88%'),
('Harry Potter and the Order of the Pheonix','2007-07-11','77%'),
('Harry Potter and the Half-Blood Prince','2009-07-15','84%'),
('Harry Potter and the Deathly Hallows Pt 1','2010-11-19','77%'),
('Harry Potter and the Deathly Hallows Pt 2','2011-07-15','96%'),
('Fantastic Beasts and where to find them','2016-11-10','74%'),
('Fantastic Beasts: The crimes of Grindelwald','2018-11-08','37%');
select * from hard;

create table vhard(
id int not null auto_increment primary key,
make varchar (30),
model varchar(30),
year int
);

insert into vhard(make,model,year)
values ('Mitsubishi','Lancer Evolution VI','1999'),
('Nissan','Silva','1992'),
('Nissan','300 ZX','1995');

select * from vhard;

set sql_safe_updates = 0;

select * from veasy;
insert into veasy (make, model, year)
values ('Mazda','RX Veilside','2001'),
('Lexus','LFA','2012');

select * from easy;
insert into easy (title, author, published)
VALUES ('Fantastic Beasts and where to find them','J. K. Rowling','2001-12-01'),
('Fantastic Beast: Crimes of Grindlwald','J. K. Rowling','2018-11-16');
delete from easy
where published is not null 
order by published asc
limit 1;

select * from med where insrt(title, 's')>0;

alter table hard
add column firstName varchar (50) not null,
add column lastName varchar (50) not null;

update hard 
set firstName= 'Chris', lastname= 'Colombus'
where id=1;

update hard 
set firstName= 'Chris', lastname= 'Colombus'
where id=2;

update hard 
set firstName= 'Alfonso', lastname= 'Cuaron'
where id=3;

update hard 
set firstName= 'Mike', lastname= 'Newell'
where id=4;

update hard 
set firstName= 'Davis', lastname= 'Yates'
where id=5;

update hard 
set firstName= 'Davis', lastname= 'Yates'
where id=6;

update hard 
set firstName= 'Davis', lastname= 'Yates'
where id=7;

update hard 
set firstName= 'Davis', lastname= 'Yates'
where id=8;

update hard 
set firstName= 'Davis', lastname= 'Yates'
where id=9;

update hard 
set firstName= 'Davis', lastname= 'Yates'
where id=10;

select * from hard 
order by lastName desc;

delete from hard
where lastName between "R" and "Z";

select * from hard
order by lastName desc
limit 3;

insert into vhard (make,model,year)
VALUES ('Toyota','Chaser JZX100','2001'),('Nissan','Skyline GT-R R34','1989');

alter table vhard
add column price FLOAT(6,2) not null,
add column color varchar(50) not null;

update vhard
set price=159495.00, color= 'Blue'
where id = 1;

update vhard
set price= 47000.00, color= 'Black'
where id = 2;

update vhard
set price= 25000.00, color= 'Black'
where id = 3;

update vhard
set price= 20000.00, color= 'Silver'
where id = 4;

update vhard
set price= 24000.00, color= 'Gray'
where id = 5;

update vhard
set price= 23900.00, color= 'White'
where id = 6;

update vhard
set price= 85000.00, color= 'Orange'
where id = 7;

update vhard
set price= 985000.00, color= 'Red'
where id = 8;

update vhard
set price= 31000.00, color= 'White'
where id = 9;

update vhard
set price= 28000.00, color= 'Blue'
where id = 10;


select * from vhard;

select concat(make, " ", model) as make_and_model
from vhard;

select make AS Make, COUNT(make) and Matched 
from vhard
group by make;


















