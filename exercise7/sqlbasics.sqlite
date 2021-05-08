create table students (
 	id integer PRIMARY key,
  	first_name CHARACTER VARYING(255) not NULL,
  	middle_name CHARACTER VARYING(255),
  	last_name CHARACTER VARYING(255) not NULL,
  	age NUMERIC(3) DEFAULT 0,
  	location CHARACTER VARYING(255) not NULL
);


insert into students(id, first_name, last_name, age, location)
	VALUES
        (1, 'Juan', 'Cruz', 18, 'Manila'),
        (2, 'Anne', 'Wall', 20, 'Manila'),
        (3, 'Theresa', 'Joseph', 21, 'Manila'),
        (4, 'Isaac', 'Gray', 19, 'Laguna'),
        (5, 'Zack', 'Matthews', 22, 'Marikina'),
        (6, 'Finn', 'Lam', 25, 'Manila');
    


update students
set first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan'
where id = 1;


delete from students where id = 6;

SELECT * from students;
