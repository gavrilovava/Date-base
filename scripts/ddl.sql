CREATE TABLE virus (
    virus_id BigInt PRIMARY KEY,
    name varchar(100) NOT NULL,
    where_find varchar(100),
    when_discovered date,
    when_bring date,
    death_rate integer
);

CREATE TABLE zoo(
    zoo_id BigInt PRIMARY KEY,
    name varchar(100) NOT NULL,
    country varchar(100) not NULL,
    city varchar(100)
);

CREATE TABLE personal_information(
    employee_id BigInt PRIMARY KEY,
    name varchar(100) NOT NULL,
    second_name varchar(100) not NULL,
    surname varchar(100),
    email varchar(100),
    phone_number BigInt
);

CREATE TABLE employee(
    employee_id BigInt,
    task_id BigInt PRIMARY KEY
);

CREATE TABLE history_of_task (
    task_id integer,
    text_of_task varchar(100),
    message varchar(100),
    time_of_change date
);

CREATE TABLE task(
    task_id BigInt,
    deadline date,
    text_of_task varchar(100),
    additional_information varchar(100)
);

CREATE TABLE animal(
    animal_id BigInt PRIMARY key,
    name varchar(100),
    zoo_id BigInt,
    age integer,
  	gender varchar(100)
);

CREATE TABLE research(
    lab_id BigInt PRIMARY KEY,
    employee_id BigInt,
    virus_id BigInt,
    animal_id BigInt
);

CREATE TABLE laboratory(
    lab_id BigInt,
    laboratory_name varchar(100),
    building integer NOT NULL,
    floor integer,
  	phone_number BigInt
);
