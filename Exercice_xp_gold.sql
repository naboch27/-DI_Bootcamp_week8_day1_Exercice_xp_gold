-- Active: 1676308418229@@127.0.0.1@5432

/* Create a database called bootcamp. */

CREATE DATABASE bootcamp;

/*
 Create a table called students.
 Add the following columns:
 id
 last_name
 first_name
 birth_date
 */

create table
    students (
        id_students serial not null primary key,
        first_name_students varchar (50) not null,
        last_name_students varchar (50) not null,
        birth_date_students Date not null
    );

/* 
 Insert the data seen above to the students table. Find the most efficient way to insert the data.
 */

insert into
    students(
        last_name_students,
        first_name_students,
        birth_date_students
    )
VALUES (
        'Marc',
        'Bénichou',
        '02/11/1998'
    ), ('Yann', 'Cohen', '	03/12/2010'), (
        'Léa',
        'Bénichou',
        '27/07/1987'
    ), ('Amélie', 'Dux', '07/04/1996'), ('David', 'Grez', '14/06/2003'), (
        'Omer',
        'Simpson',
        '03/10/1980'
    );

/*
 Insert your last_name, first_name and birth_date to the students table (Take a look at the id given).
 */

insert into
    students(
        last_name_students,
        first_name_students,
        birth_date_students
    )
VALUES (
        'Mouhamed',
        'Coulibaly',
        '14/07/1992'
    );

/* Select all ,Fetch all of the data from the table*/

select * FROM students;

/*
 Fetch all of the students first_names and last_names.
 */

select last_name_students, first_name_students FROM students;

/*
 Fetch the student which id is equal to 2.
 */

select
    last_name_students,
    first_name_students
FROM students
WHERE id_students = 2;

/*
 Fetch the student whose last_name is Benichou AND first_name is Marc.
 */

select
    last_name_students,
    first_name_students
FROM students
WHERE
    first_name_students = 'Benichou'
    AND last_name_students = 'Marc';

/*
 Fetch the students whose last_names are Benichou OR first_names are Marc.
 */

select
    last_name_students,
    first_name_students
FROM students
WHERE
    first_name_students = 'Benichou'
    OR last_name_students = 'Marc';

/*
 Fetch the students whose first_names contain the letter a.
 */

select
    last_name_students,
    first_name_students
FROM students
WHERE
    last_name_students LIKE '%a%';

select
    last_name_students,
    first_name_students
FROM students
WHERE
    last_name_students LIKE '%a%';

/*
 Fetch the students whose first_names start with the letter a.
 */

select
    last_name_students,
    first_name_students
FROM students
WHERE
    last_name_students LIKE 'a%';

/*
 Fetch the students whose first_names end with the letter a.
 */

select
    last_name_students,
    first_name_students
FROM students
WHERE
    last_name_students LIKE 'a%';

/*
 Récupérer les étudiants dont les identifiants sont égaux à 1 AND 3
 */
 /*
Fetch the students whose second to last letter of their first_names are a (Example: Leah).
*/
    
SELECT * FROM students WHERE SUBSTRING(last_name_students,LENGTH(last_name_students)-1,1) ILIKE 'a';


select
    last_name_students,
    first_name_students
FROM students
WHERE
    id_students = 1
    AND id_students = 3;

/*
 Récupérez les étudiants dont la date de naissance est égale ou postérieure au 01/01/2000. (afficher toutes leurs informations).
 */

select
    last_name_students,
    first_name_students
FROM students
WHERE
    birth_date_students <= '01/01/2000';


SELECT  *
FROM students
WHERE birth_date_students = (SELECT MAX(birth_date_students) FROM students);
