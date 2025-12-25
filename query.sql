create table students (
  student_id serial primary key,
  first_name VARCHAR(50) not null,
  last_name VARCHAR(50) not null,
  age INT,
  course VARCHAR(100) not null,
  grade char(2),
  email VARCHAR(100) unique not null,
  dob Date,
  blood_group VARCHAR(5),
  country VARCHAR(50)
);


alter table student rename to users;

-- inset data

INSERT INTO students(first_name,last_name,age,course,grade,email,dob,blood_group,country) VALUES 
  ('John', 'Smith', 22, 'Computer Science', 'A', 'john.smith1@gmail.com', '2002-05-14', 'O+', 'United States'),
('Emma', 'Johnson', 21, 'Data Science', 'A+', 'emma.johnson2@gmail.com', '2003-09-22', 'A+', 'Canada'),
('Liam', 'Brown', 23, 'Software Engineering', 'B+', 'liam.brown3@gmail.com', '2001-11-08', 'B+', 'United Kingdom'),
('Olivia', 'Taylor', 20, 'Information Technology', 'A-', 'olivia.taylor4@gmail.com', '2004-03-17', 'O-', 'Australia'),
('Noah', 'Wilson', 24, 'Cyber Security', 'B', 'noah.wilson5@gmail.com', '2000-07-29', 'A-', 'New Zealand'),

('Sophia', 'Martin', 22, 'Artificial Intelligence', 'A+', 'sophia.martin6@gmail.com', '2002-12-03', 'AB+', 'France'),
('Ethan', 'Garcia', 21, 'Computer Engineering', 'A', 'ethan.garcia7@gmail.com', '2003-04-11', 'O+', 'Spain'),
('Isabella', 'Lopez', 23, 'Business Analytics', 'B+', 'isabella.lopez8@gmail.com', '2001-06-25', 'B+', 'Mexico'),
('Lucas', 'Müller', 24, 'Mechanical Engineering', 'B', 'lucas.muller9@gmail.com', '2000-10-19', 'A+', 'Germany'),
('Mia', 'Schmidt', 20, 'Robotics', 'A-', 'mia.schmidt10@gmail.com', '2004-01-07', 'O-', 'Germany'),

('Daniel', 'Rossi', 22, 'Information Systems', 'A', 'daniel.rossi11@gmail.com', '2002-08-16', 'B+', 'Italy'),
('Chiara', 'Bianchi', 21, 'Economics', 'A-', 'chiara.bianchi12@gmail.com', '2003-02-28', 'A+', 'Italy'),
('Kenji', 'Tanaka', 23, 'Computer Science', 'A+', 'kenji.tanaka13@gmail.com', '2001-09-09', 'AB+', 'Japan'),
('Yuki', 'Sato', 20, 'Data Engineering', 'A', 'yuki.sato14@gmail.com', '2004-05-03', 'O+', 'Japan'),
('Min', 'Park', 22, 'Software Engineering', 'B+', 'min.park15@gmail.com', '2002-11-21', 'A-', 'South Korea'),

('Hyejin', 'Kim', 21, 'UI/UX Design', 'A-', 'hyejin.kim16@gmail.com', '2003-06-18', 'B+', 'South Korea'),
('Wei', 'Zhang', 23, 'Information Technology', 'B', 'wei.zhang17@gmail.com', '2001-01-26', 'O+', 'China'),
('Li', 'Wang', 24, 'Computer Networks', 'B+', 'li.wang18@gmail.com', '2000-04-15', 'A+', 'China'),
('Arjun', 'Mehta', 21, 'Artificial Intelligence', 'A', 'arjun.mehta19@gmail.com', '2003-07-08', 'B+', 'India'),
('Priya', 'Sharma', 22, 'Machine Learning', 'A+', 'priya.sharma20@gmail.com', '2002-10-12', 'O+', 'India'),

('Mohammed', 'Al-Farsi', 23, 'Cloud Computing', 'B+', 'mohammed.alfarsi21@gmail.com', '2001-03-19', 'A-', 'United Arab Emirates'),
('Fatima', 'Hassan', 20, 'Computer Science', 'A', 'fatima.hassan22@gmail.com', '2004-09-01', 'AB+', 'Saudi Arabia'),
('Omar', 'Khaled', 24, 'Information Security', 'B', 'omar.khaled23@gmail.com', '2000-12-27', 'O+', 'Egypt'),
('Amina', 'Yusuf', 21, 'Software Engineering', 'A-', 'amina.yusuf24@gmail.com', '2003-05-05', 'B+', 'Nigeria'),
('Samuel', 'Okoye', 22, 'Computer Engineering', 'B+', 'samuel.okoye25@gmail.com', '2002-08-23', 'A+', 'Nigeria'),

('Lucas', 'Silva', 23, 'Data Science', 'A', 'lucas.silva26@gmail.com', '2001-02-14', 'O+', 'Brazil'),
('Ana', 'Costa', 21, 'Information Systems', 'A-', 'ana.costa27@gmail.com', '2003-11-09', 'B+', 'Portugal'),
('Mateo', 'Gonzalez', 22, 'Software Engineering', 'B+', 'mateo.gonzalez28@gmail.com', '2002-06-30', 'A-', 'Argentina'),
('Sofia', 'Perez', 20, 'Web Development', 'A', 'sofia.perez29@gmail.com', '2004-04-18', 'O+', 'Chile'),
('Ivan', 'Petrov', 24, 'Computer Science', 'B', 'ivan.petrov30@gmail.com', '2000-09-25', 'AB-', 'Russia');


-- select queries

SELECT first_name as "First Name" from students;

SELECT blood_group as "Blood Group" FROM students WHERE student_id=1;


SELECT student_id,first_name,age,grade FROM students ORDER BY student_id desc;


SELECT distinct country FROM students;

SELECT first_name FROM students WHERE course='Computer Science' AND grade='A';

delete from students where country = 'Bangladesh';


select first_name,age from students where age >=22;

select first_name,age,course from students where age between 22 and 23;

select first_name,last_name,age from students where course in ('Computer Science','Software Engineering','Web Development');


-- case sensitive like oparator

select * from students where first_name like 'A%';

select * from students where first_name like '%a_';

select * from students where first_name like '___a';

select * from students where first_name like 'A____';

select * from students where first_name ilike 'a%';


-- not operator and built in functions 

select * from students where not age =20;


-- scaler functions
-- uppper(),lower(),length(),concat(),

select upper(first_name) as "Capital First Name",first_name,age from students where not age between 21 and 24;

select concat(first_name,' ',last_name) as "Full Name",age from students where age = 22 or age = 20;
-- aggrigate functions
-- avg(),count(),max(),min(),sum

select avg(age) as avg_age from students;

select count(first_name) as count_student from students where age between 20 and 22;

select max(age) as max_age from students;

select min(age) as min_age from students;

select sum(age) as sum_of_age from students;