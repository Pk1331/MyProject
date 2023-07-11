create table login(
    phone varchar2(12) primary key,
    pwd varchar2(15),
    desig varchar2(20)
);

insert into login values('9912280626',"madhu@123",'admin');


create table users(
    phone varchar2(12) primary key references login(phone),
    uname varchar2(25),
    city varchar2(25),
    address varchar2(100),
    email varchar2(20)
);

create table courses(
    cid int primary key,
    cname varchar2(10),
    duration varchar2(10),
    price float,
    discount varchar2(4),
    announce_date date,
    start_date date,
    end_date date
);


