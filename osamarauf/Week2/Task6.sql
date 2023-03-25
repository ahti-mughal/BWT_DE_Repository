create table course(
course_id int not null primary key,
course_instructor varchar(25),
course_name varchar(10) CHECK (course_name NOT LIKE '%[^a-zA-Z]%'),
);

create table fellows(
fellow_name varchar(10) CHECK (fellow_name NOT LIKE '%[^a-zA-Z]%'),
fellow_email varchar(25) CHECK (fellow_email LIKE '%_@__%.__%'),
fellow_number int unique,
fellow_location varchar default('Isb'),
course_id int not null,
constraint fk_course_id foreign key (course_id) references course(course_id),
);

alter table course add course_price int;

drop table fellows;