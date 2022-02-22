create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees(id, employee_name)
values (default, 'Aaron'),
	   (default, 'Abraham'),
	   (default, 'Adam'),
	   (default, 'Adrian'),
	   (default, 'Alan'),
	   (default, 'Albert'),
	   (default, 'Alejandro'),
	   (default, 'Alex'),
	   (default, 'Alexander'),
	   (default, 'Alfred'),
	   (default, 'Andrew'),
	   (default, 'Angel'),
	   (default, 'Anthony'),
	   (default, 'Antonio'),
	   (default, 'Ashton'),
	   (default, 'Austin'),
	   (default, 'Benjamin'),
	   (default, 'Bernard'),
	   (default, 'Blake'),
	   (default, 'Brandon'),
	   (default, 'Brian'),
	   (default, 'Bruce'),
	   (default, 'Bryan'),
	   (default, 'Cameron'),
	   (default, 'Carl'),
	   (default, 'Carlos'),
	   (default, 'Charles'),
	   (default, 'Christopher'),
	   (default, 'Cole'),
	   (default, 'Connor'),
	   (default, 'Caleb'),
	   (default, 'Carter'),
	   (default, 'Chase'),
	   (default, 'Christian'),
	   (default, 'Clifford'),
	   (default, 'Cody'),
	   (default, 'Colin'),
	   (default, 'Curtis'),
	   (default, 'Cyrus'),
	   (default, 'Daniel'),
	   (default, 'David'),
	   (default, 'Dennis'),
	   (default, 'Devin'),
	   (default, 'Diego'),
	   (default, 'Dominic'),
	   (default, 'Donald'),
	   (default, 'Douglas'),
	   (default, 'Dylan'),
	   (default, 'Edward'),
	   (default, 'Elijah'),
	   (default, 'Eric'),
	   (default, 'Ethan'),
	   (default, 'Evan'),
	   (default, 'Francis'),
	   (default, 'Fred'),
	   (default, 'Gabriel'),
	   (default, 'Gavin'),
	   (default, 'Geoffrey'),
	   (default, 'George'),
	   (default, 'Gerld'),
	   (default, 'Gilbert'),
	   (default, 'Gordon'),
	   (default, 'Graham'),
	   (default, 'Gregory'),
	   (default, 'Harold'),
	   (default, 'Harry'),
	   (default, 'Hayden'),
	   (default, 'Henry'),
	   (default, 'Herbert'),
	   (default, 'Horace');
	   
	   
select * from employees;

create table salary(
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
values (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
	  
select * from salary;

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
values (70, 15),
	  (69, 14),
	  (68, 13),
	  (67, 12),
	  (66, 11),
	  (65, 10),
	  (64, 9),
	  (63, 8),
	  (62, 7),
	  (61, 6),
	  (60, 5),
	  (59, 4),
	  (58, 3),
	  (57, 2),
	  (56, 1),
	  (55, 1),
	  (54, 2),
	  (53, 3),
	  (52, 4),
	  (51, 5),
	  (50, 6),
	  (49, 7),
	  (48, 8),
	  (47, 9),
	  (46, 10),
	  (45, 11),
	  (44, 12),
	  (43, 13),
	  (42, 14),
	  (41, 15),
	  (81, 15),
	  (82, 14),
	  (83, 13),
	  (84, 12),
	  (85, 11),
	  (86, 10),
	  (87, 9),
	  (88, 8),
	  (89, 7),
	  (90, 6);
	 
select * from employee_salary;

create table roles(
	id serial primary key,
	role_name int not null unique
);

alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

select * from roles;

insert into roles(role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
	  
select * from roles;

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	foreign key (employee_id)
		references employees(id),
	role_id int not null,
	foreign key (role_id)
		references roles(id)
);

select * from roles_employee;

insert into roles_employee(employee_id, role_id)
values (30, 15),
	  (31, 14),
	  (32, 13),
	  (33, 12),
	  (34, 11),
	  (35, 10),
	  (36, 9),
	  (37, 8),
	  (38, 7),
	  (39, 6),
	  (40, 5),
	  (41, 4),
	  (42, 3),
	  (43, 2),
	  (44, 1),
	  (45, 1),
	  (46, 2),
	  (47, 3),
	  (48, 4),
	  (49, 5),
	  (50, 6),
	  (51, 7),
	  (52, 8),
	  (53, 9),
	  (54, 10),
	  (55, 11),
	  (56, 12),
	  (57, 13),
	  (58, 14),
	  (59, 15),
	  (60, 16),
	  (61, 17),
	  (62, 18),
	  (63, 19),
	  (64, 20),
	  (65, 10),
	  (66, 9),
	  (67, 8),
	  (68, 7),
	  (69, 6);
	 
select * from roles_employee;
	  



	   






