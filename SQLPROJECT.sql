---->PROJECT 1: MULTIPLE TABLES

---->1.Let’s examine the three tables.
SELECT * FROM trips;
SELECT * FROM riders;
SELECT * FROM cars;
---->What are the column names?

---->2.What’s the primary key of trips?-->id
-->What’s the primary key of riders?-->id
-->What’s the primary key of cars?-->id

---->3.Try out a simple cross join between riders and cars.Is the result useful?
---->query:
SELECT riders.first,
   riders.last,
   cars.model
FROM riders, cars;

/*4.Suppose we want to create a Trip Log with the trips and its users.
Find thecolumns to join between trips and riders and combine the two tables using a LEFT JOIN.
Let trips be the left table.
query:*/
SELECT *
FROM trips
LEFT JOIN riders 
  ON trips.rider_id = riders.id;

/*5.Suppose we want to create a link between the trips and the cars used during those trips.
Find the columns to join on and combine the trips and cars table using an INNER JOIN.
query:*/
SELECT *
FROM trips
JOIN cars
  ON trips.car_id = cars.id;

/*6.The new riders data are in! There are three new users this month.
Stack the riders table on top of the new table named riders2.
query:*/
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

/*7.What is the average cost for a trip?
query:*/
SELECT AVG(cost)
FROM trips;

/*8.Lyft is looking to do an email campaign for all the irregular users.
Find all the riders who have used Lyft less than 500 times!
query:*/
SELECT *
FROM riders
WHERE total_trips < 500;

/*9.Calculate the number of cars that are active.
query:*/
SELECT COUNT(*)
FROM cars
WHERE status = 'active';

/*10.It’s safety recall time for cars that have been on the road for a while.
Write a query that finds the two cars that have the highest trips_completed.
query:*/
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;



---->PROJECT 2: MANIPULATION

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
