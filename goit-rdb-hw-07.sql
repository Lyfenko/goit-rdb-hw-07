SELECT id, date,
    YEAR(date) AS year,
    MONTH(date) AS month,
    DAY(date) AS day
FROM
    orders;

SELECT id, date,
    DATE_ADD(date, INTERVAL 1 DAY) AS datePlusOne
FROM
    orders;

SELECT id, date,
    UNIX_TIMESTAMP(date) AS timestamp
FROM
    orders;

SELECT COUNT(*) AS orderCount FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

SELECT id, date,
    JSON_OBJECT('id', id, 'date', date) AS jsonData
FROM
    orders;




