--->Combining Tables with SQL

-->JOIN
---->joining 2 tables
---->ex:
select * from orders join subscriptions
on orders.subscription_id=subscriptions.subscription_id;

-->using where after joining
---->ex:
SELECT *
FROM orders
JOIN subscriptions
  ON orders.subscription_id = subscriptions.subscription_id
WHERE subscriptions.description = 'Fashion Magazine';


-->INNER JOIN
---->ex:
select count(*) from newspaper;
select count(*) from online;
select count(*) from newspaper join online
on newspaper.id=online.id;

-->LEFT JOIN
---->A left join will keep all rows from the first table, regardless of whether there is a matching row in the second table.
---->ex:
SELECT *
FROM newspaper
LEFT JOIN online
  ON newspaper.id = online.id;

-->INNER JOIN
-->PRIMARY KEY VS FOREIGN KEY

---->ex:
select * from classes inner join students
on classes.id=students.class_id;

-->CROSS JOIN
---->ex:
SELECT month,
   COUNT(*) AS 'subscribers'
FROM newspaper
CROSS JOIN months
WHERE start_month <= month 
   AND end_month >= month
GROUP BY month;

-->UNION
---->ex:
select *
from newspaper 
union
select *
from online;

-->WITH
---->ex:
WITH previous_query AS (
   SELECT customer_id,
      COUNT(subscription_id) AS 'subscriptions'
   FROM orders
   GROUP BY customer_id
)
SELECT customers.customer_name, 
   previous_query.subscriptions
FROM previous_query
JOIN customers
  ON previous_query.customer_id = customers.customer_id;

/*SUMMARY
---->Let’s summarize what we’ve learned so far:

    Preview: Docs Returns all rows that have matching values in both tables and omits non-matching rows.
    JOIN
    will combine rows from different tables if the join condition is true.
    LEFT JOIN
    will return every row in the left table, and if the join condition is not met, NULL values are used to fill in the columns from the right table.
    Primary key
    is a column that serves a unique identifier for the rows in the table.

    Foreign key
    is a column that contains the primary key to another table.
      
    CROSS JOIN
    lets us combine all rows of one table with all rows of another table.

    UNION
    stacks one dataset on top of another.

    WITH
    allows us to define one or more temporary tables that can be used in the final query.*/


