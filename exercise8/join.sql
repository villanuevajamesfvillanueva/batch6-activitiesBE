create table classrooms (
 	id integer PRIMARY key,
	student_id INTEGER not NULL,
  	section CHARACTER VARYING(255) not NULL
);

insert into classrooms(id, student_id, section)
	VALUES
        (1, 1, 'A'),
        (2, 2, 'A'),
        (3, 3, 'B'),
        (4, 4, 'C'),
        (5, 5, 'B'),
        (6, 6, 'A'),
		(7, 7, 'C'),
		(8, 8, 'B'),
		(9, 9, 'B'),
		(10, 10, 'C');


SELECT * FROM students s INNER join classrooms c on s.id = c.student_id;

SELECT * FROM students s LEFT join classrooms c on s.id = c.student_id;

SELECT * FROM students s RIGHT join classrooms c on s.id = c.student_id;

SELECT * FROM students s FULL join classrooms c on s.id = c.student_id;