
---->PROJECT 2: FRIENDS DATABASE MANAGEMENT - MANIPULATION

/*1.Create a table named friends with three columns:
id that stores INTEGER
name that stores TEXT
birthday that stores DATE
query:*/
create table friends(id integer,name text,birthday date);

/*2.Beneath your current code, add Ororo Munroe to friends.
Her birthday is May 30th, 1940.
query:*/
INSERT INTO friends (id, name, birthday) 
VALUES (1, 'Ororo Munroe', '1940-05-30');

/*3.Let’s make sure that Ororo has been added to the database:
query:*/
select * from friends;

/*4.Let’s move on!
Add two of your friends to the table.
Insert an id, name, and birthday for each of them.
query:*/
INSERT INTO friends (id, name, birthday) 
VALUES (2, 'Harshitha Koritala', '2003-11-11');
INSERT INTO friends(id,name,birthday)
VALUES(3,'Bhargavi Koritala','2005-03-05');

/*5.Ororo Munroe just realized that she can control the weather and decided to change her name. Her new name is “Storm”.
Update her record in friends.
query:*/
Update friends
set name="Storm"
where id=1;

/*6.Add a new column named email.
query:*/
alter table friends
add column email text;

/*7.Update the email address for everyone in your table.
Storm’s email is storm@codecademy.com.
query:*/
update friends
set email='storm@codeecagemy.com'
where id=1;

/*8.Wait, Storm is fictional…
Remove her from friends.
query:*/
delete from friends
where id=1;

/*9.Great job! Let’s take a look at the result one last time:
query:*/
select * from friends;
