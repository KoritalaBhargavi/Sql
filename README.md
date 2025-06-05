SQL Projects: Database Exploration and Manipulation
This repository contains SQL queries demonstrating various database operations across two distinct projects: "Lyft Trip Analysis" and "Friends Database Management".

Project 1: Lyft Trip Analysis
This project focuses on exploring and analyzing data related to a ride-sharing service, similar to Lyft. It involves examining multiple tables, performing joins, aggregating data, and filtering results to gain insights into trips, riders, and cars.

Database Schema (Implicit)
While not explicitly defined in the queries, the project assumes the existence of three tables:

trips: Contains information about individual trips.
riders: Stores details about the users (riders).
cars: Holds information about the vehicles.

Queries and Objectives
Here's a breakdown of the queries performed in this project:
Examine Table Structures:

Objective: To understand the column names and data within the trips, riders, and cars tables.
Queries:
SELECT * FROM trips;
SELECT * FROM riders;
SELECT * FROM cars;
Column Names (Inferred from queries):
trips: id, rider_id, car_id, cost
riders: id, first, last, total_trips
cars: id, model, status, trips_completed


Primary Keys:
Objective: Identify the primary key for each table.
Answer: The id column is the primary key for trips, riders, and cars.
Simple Cross Join (Riders and Cars):


Objective: Demonstrate a basic cross join and assess its usefulness.
Query:
SELECT riders.first,
       riders.last,
       cars.model
FROM riders, cars;
Usefulness: A cross join produces a Cartesian product, matching every rider with every car. While syntactically correct, this particular result is generally not useful for meaningful analysis as it doesn't reflect actual trip associations.


Join Trips with Riders (LEFT JOIN):
Objective: Combine trip information with rider details to create a trip log.
Query:
SELECT *
FROM trips
LEFT JOIN riders
  ON trips.rider_id = riders.id;
Columns Joined On: trips.rider_id and riders.id.


Join Trips with Cars (INNER JOIN):
Objective: Link trips to the cars used for those trips.
Query:
SELECT *
FROM trips
JOIN cars
  ON trips.car_id = cars.id;
Columns Joined On: trips.car_id and cars.id.


Stack Riders Data (UNION):
Objective: Combine existing rider data with new rider data from riders2.
Query:
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;
Calculate Average Trip Cost:


Objective: Determine the average cost across all trips.
Query:
SELECT AVG(cost)
FROM trips;
Find Irregular Users:


Objective: Identify riders who have used the service less than 500 times for a marketing campaign.
Query:
SELECT *
FROM riders
WHERE total_trips < 500;
Count Active Cars:


Objective: Count the number of cars currently marked as 'active'.
Query:
SELECT COUNT(*)
FROM cars
WHERE status = 'active';
Find Top 2 Cars by Trips Completed:


Objective: Identify the two cars with the highest number of completed trips for a safety recall.
Query:
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;




Project 2: Friends Database Management
This project demonstrates fundamental SQL data manipulation language (DML) operations: CREATE, INSERT, UPDATE, ALTER, and DELETE. It involves setting up a simple friends table and performing various modifications to its structure and data.

Queries and Objectives
Here's a step-by-step breakdown of the operations performed:

Create friends Table:
Objective: Define a new table named friends with specific columns and data types.
Query:
CREATE TABLE friends (
    id INTEGER,
    name TEXT,
    birthday DATE
);


Insert First Friend (Ororo Munroe):
Objective: Add the first record to the friends table.
Query:
INSERT INTO friends (id, name, birthday)
VALUES (1, 'Ororo Munroe', '1940-05-30');


Verify Insertion:
Objective: Confirm that the record has been successfully added.
Query:
SELECT * FROM friends;


Insert Additional Friends:
Objective: Add two more friends to the table.
Queries:
INSERT INTO friends (id, name, birthday)
VALUES (2, 'Harshitha Koritala', '2003-11-11');
INSERT INTO friends (id, name, birthday)
VALUES (3, 'Bhargavi Koritala', '2005-03-05');


Update Friend's Name:
Objective: Change the name of 'Ororo Munroe' to 'Storm'.
Query:
UPDATE friends
SET name = "Storm"
WHERE id = 1;


Add email Column:
Objective: Modify the table structure by adding a new column for email addresses.
Query:
ALTER TABLE friends
ADD COLUMN email TEXT;


Update Email Addresses:
Objective: Populate the newly added email column for existing records.
Query:
UPDATE friends
SET email = 'storm@codeecagemy.com'
WHERE id = 1;


Delete a Record:
Objective: Remove 'Storm' from the friends table.
Query:
DELETE FROM friends
WHERE id = 1;


Final Table Review:
Objective: View the friends table after all modifications.
Query:
SELECT * FROM friends;
