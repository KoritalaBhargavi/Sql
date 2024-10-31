--->PREDEFINED FUNCTIONS:
-->1)numeric functions:
 ---->1.abs():
SELECT 
    order_id, 
    item, 
    customer_id,
    ABS(amount - 50) AS productcost
FROM 
   orders;
---->2.mod():
SELECT 
    order_id, 
    item, 
    amount, 
    MOD(amount, 300) AS remainder
FROM 
    Orders;
---->3.sqrt():
SELECT 
    order_id, 
    item, 
    amount, 
    SQRT(amount) AS sqrt_amount
FROM 
    Orders;
---->4.power():
SELECT 
    order_id, 
    item, 
    amount, 
    POWER(amount, 2) AS amount_squared
FROM 
    Orders;
---->5.ciel():
SELECT 
    order_id, 
    item, 
    amount, 
    CEIL(amount) AS rounded_up_amount
FROM 
    Orders;
---->6.floor():
SELECT 
    order_id, 
    item, 
    amount, 
    FLOOR(amount) AS rounded_down_amount
FROM 
    Orders;
---->7.round:
SELECT 
    order_id, 
    item, 
    amount, 
    ROUND(amount, 0) AS rounded_amount
FROM 
    Orders;
---->8.log():
SELECT 
    order_id, 
    item, 
    amount, 
    GREATEST(amount, 1000) AS max_value, 
    LEAST(amount, 1000) AS min_value
FROM 
    Orders;
---->9.ln():
SELECT 
    order_id, 
    item, 
    amount, 
    LN(amount) AS natural_log
FROM 
    Orders;
---->10.exp():
SELECT 
    order_id, 
    item, 
    amount, 
    EXP(amount) AS exp_amount
FROM 
    Orders;
---->11.factorail():
SELECT 
    order_id, 
    item, 
    amount, 
    FACTORIAL(amount) AS factorial_amount
FROM 
    Orders;
---->12.sign():
SELECT 
    order_id, 
    item, 
    amount, 
    SIGN(amount) AS amount_sign
FROM 
    Orders;


---->2)string functions:
---->1.concat():
SELECT 
    shipping_id, 
    status, 
    customer, 
    CONCAT(status, ' - Customer ', customer) AS status_customer
FROM 
    Shippings;
---->2.substr():
SELECT 
    shipping_id, 
    status, 
    customer, 
    SUBSTRING(status, 1, 3) AS status_prefix
FROM 
    Shippings;
---->3.length():
SELECT 
    shipping_id, 
    status, 
    customer, 
    LENGTH(status) AS status_length
FROM 
    Shippings;
---->4.upper():
SELECT 
    shipping_id, 
    status, 
    customer, 
    UPPER(status) AS status_upper
FROM 
    Shippings;
---->5.lower():
SELECT 
    shipping_id, 
    status, 
    customer, 
    LOWER(status) AS status_lower
FROM 
    Shippings;
---->6.replace():
SELECT 
    shipping_id, 
    status, 
    customer, 
    REPLACE(status, 'Pending', 'In Progress') AS updated_status
FROM 
    Shippings;
---->7.trim(),ltrim(),rtrim():
SELECT 
    shipping_id, 
    status, 
    customer, 
    TRIM(status) AS trimmed_status
FROM 
    Shippings;
---->8.reverse():
SELECT 
    shipping_id, 
    status, 
    customer, 
    REVERSE(status) AS reversed_status
FROM 
    Shippings;
---->9.Lpad(),rpad():
SELECT 
    shipping_id, 
    status, 
    customer, 
    RPAD(status, 10, ' ') AS padded_status
FROM 
    Shippings;


---->3)aggregare functions():
---->1.count():
SELECT 
    COUNT(*) AS total_customers
FROM 
    Customers;
---->2.sum():
SELECT 
    SUM(age) AS total_age
FROM 
    Customers;
---->3.avg():
SELECT 
    AVG(age) AS average_age
FROM 
    Customers;
---->4.max(),min():
SELECT 
    MIN(age) AS youngest_age, 
    MAX(age) AS oldest_age
FROM 
    Customers;

---->5.mode():
SELECT 
    mode(age) AS mode_age
FROM 
    Customers;

---->6.median():
SELECT 
    median(age) AS median_age
FROM 
    Customers;

