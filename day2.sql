-->WHERE AND ORDER BY CLAUSE:

--1)Where: used to filter data using condition.
  query:
  select customer_id,first_name,last_name,age  from Customers
  where age=22;
  --output:
  --It displayes all the customer records whose age is 22.


--2)Order by:used to filter data in sorted order.
  --query:
  select customer_id,first_name,last_name,age from Customers
  where age>=25
  order by age desc; //or asc
  --output:
  --gives all the data od customers whose age is greater than or equal to 25 by    descending order.


-->STRING MATCHING using wildcard operators:

--'_' :single char
--'%' :multi char

--1)Like:
--query:
select customer_id, first_name, last_name, age from Customers
where first_name like 'B%';
--output:
--gives the records of customers whose first_name starts with B and followed by any no.of characters.

--2)Not like:
--query:
select customer_id,first_name,last_name,age from Customers
where first_name not like '_o%';
--output:
--gives records all except those whose first_name has second char is o and followed by any no.of chars
