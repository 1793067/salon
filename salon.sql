\c postgres freecodecamp

create database salon;
\c salon;

create table customers(
  customer_id serial primary key,
  phone varchar(20) unique,
  name varchar(20)
);

create table services(
  service_id serial primary key,
  name varchar(20)
);

create table appointments(
  appointment_id serial primary key,
  service_id  int references services(service_id),
  customer_id int references customers(customer_id),
  time varchar(20)
);

insert into services(name) values('cut'), ('color'), ('perm'), ('style'), ('trim');



