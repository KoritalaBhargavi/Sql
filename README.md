# 🚗 SQL Projects: Multi-Table Queries & Data Manipulation (Codecademy)

## 📘 Project Overview

This project includes two SQL mini-projects completed as part of Codecademy exercises. It covers essential SQL operations such as joining multiple tables, filtering, aggregating data, and manipulating table structure and values.

---

## 🔹 Project 1: Multiple Tables (Ride-Sharing Database)

### 🧩 Tables Used:
- `trips` – Trip data
- `riders` – Rider information
- `cars` – Car details

### 📌 Key SQL Concepts Practiced:
- Primary keys
- Cross joins
- LEFT and INNER JOINs
- UNION operation
- Aggregate functions (AVG, COUNT)
- Filtering and ordering results

### ✅ Queries and Use Cases:

```sql
-- 1. Examine the tables
SELECT * FROM trips;
SELECT * FROM riders;
SELECT * FROM cars;

-- 2. Primary keys
-- trips: id, riders: id, cars: id

-- 3. Cross join between riders and cars
SELECT riders.first, riders.last, cars.model
FROM riders, cars;

-- 4. LEFT JOIN trips with riders
SELECT *
FROM trips
LEFT JOIN riders 
  ON trips.rider_id = riders.id;

-- 5. INNER JOIN trips with cars
SELECT *
FROM trips
JOIN cars
  ON trips.car_id = cars.id;

-- 6. UNION of riders and riders2
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

-- 7. Average trip cost
SELECT AVG(cost)
FROM trips;

-- 8. Riders with less than 500 trips
SELECT *
FROM riders
WHERE total_trips < 500;

-- 9. Count of active cars
SELECT COUNT(*)
FROM cars
WHERE status = 'active';

-- 10. Top 2 cars by trips completed
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;


## 🔹 Project 2: Friends Table (Data Manipulation)

### 🧩 Table Used:
- `friends` – A table to store personal contacts including name, birthday, and email

### 📌 Key SQL Concepts Practiced:
- Creating tables
- Inserting records
- Updating data
- Altering table structure
- Deleting records
- Data retrieval and management

### ✅ Use Cases & SQL Queries:

```sql
-- 1. Create the 'friends' table with id, name, and birthday
CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATE
);

-- 2. Insert Ororo Munroe into the table
INSERT INTO friends (id, name, birthday) 
VALUES (1, 'Ororo Munroe', '1940-05-30');

-- 3. Verify the inserted record
SELECT * FROM friends;

-- 4. Insert two more friends
INSERT INTO friends (id, name, birthday) 
VALUES (2, 'Harshitha Koritala', '2003-11-11');

INSERT INTO friends (id, name, birthday) 
VALUES (3, 'Bhargavi Koritala', '2005-03-05');

-- 5. Update Ororo's name to "Storm"
UPDATE friends
SET name = 'Storm'
WHERE id = 1;

-- 6. Add a new column 'email' to the table
ALTER TABLE friends
ADD COLUMN email TEXT;

-- 7. Update Storm's email address
UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 1;

-- 8. Delete Storm’s record from the table
DELETE FROM friends
WHERE id = 1;

-- 9. Display final list of friends
SELECT * FROM friends;
