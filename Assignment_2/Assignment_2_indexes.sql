-- BONUS: create clone table and apply index:
CREATE TABLE customer_clone LIKE customer;
INSERT INTO customer_clone
SELECT *
FROM customer;
CREATE INDEX customer_name_index
    ON customer_clone (name);

EXPLAIN
ANALYZE
SELECT *
FROM customer
WHERE name LIKE '%Customer290%';

EXPLAIN
ANALYZE
SELECT *
FROM customer_clone
WHERE name LIKE 'Customer290';

SELECT COUNT(*)
FROM customer_clone;
-- Checking the count to ensure data population

