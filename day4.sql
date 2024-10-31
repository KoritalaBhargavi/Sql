--->PREDEFINED FUNCTIONS


-->date and time functions:

---->1.current_date():
SELECT CURRENT_DATE() AS current_date;
---->2.current_time():
SELECT CURRENT_TIME() AS current_time;
---->3.current_timestamps():
SELECT CURRENT_TIMESTAMP() AS current_timestamp;
---->4.year():
SELECT 
    order_id, 
    item, 
    YEAR(order_date) AS order_year
FROM 
    Orders;
---->5.month():
SELECT 
    order_id, 
    item, 
    MONTH(order_date) AS order_month
FROM 
    Orders;
---->6.day():
SELECT 
    order_id, 
    item, 
    DAY(order_date) AS order_day
FROM 
    Orders;
---->7.week():
SELECT 
    order_id, 
    item, 
    WEEK(order_date) AS order_week
FROM 
    Orders;


-->coversion functions

---->1.to_char()://available in PostgreSQL and oracle
SELECT 
    TO_CHAR(order_date, 'YYYY-MM-DD') AS formatted_date,
    TO_CHAR(order_date, 'Day, DD Month YYYY') AS full_formatted_date
FROM 
    Orders;
---->2.to_decimal()://available in PostgreSQL and oracle
SELECT 
    CAST(amount AS DECIMAL(10, 2)) AS amount_as_decimal
FROM 
    Orders;
---->3.to_date():
SELECT 
    TO_DATE('2024-09-08', 'YYYY-MM-DD') AS date_value
FROM 
    Orders;
---->4.to_timestamps():
SELECT 
    TO_TIMESTAMP('2024-09-08 14:30:00', 'YYYY-MM-DD HH24:MI:SS') AS timestamp_value
FROM 
    Orders;
5.cast():
SELECT 
    CAST(amount AS CHAR) AS amount_as_string
FROM 
    Orders;
