-- ASSIGNMENT TWO - SQL QUERIES:

-- Find a list of employees available for each type of service on a particular day:
SELECT s.name               AS service_name,
       GROUP_CONCAT(e.name) AS available
FROM service s
         JOIN employee_service es ON s.service_id = es.service_id
         JOIN employee e ON es.employee_id = e.employee_id
    -- включення всіх записів із таблиці service, навіть якщо вони не мають відповідного запису в таблиці appointment
         LEFT JOIN (SELECT DISTINCT a.service_id, a.employee_id
                    FROM appointment a
                    WHERE a.date = '2024-02-25') a ON s.service_id = a.service_id AND e.employee_id = a.employee_id
WHERE a.service_id IS NULL
GROUP BY s.name;

-- Select beauty salon employees who have a number of service records more than 5(but I do not have many inserts so it will be >0) and revenue from these services. 
-- It groups the data by employee name and service name, calculates the total number of records for each service, the average price of the service, 
-- and the total amount of payments received. 
SELECT e.name                   AS employee_name,
       s.name                   AS service_name,
       COUNT(ap.appointment_id) AS total_appointments,
       AVG(s.price)             AS avg_service_price,
       SUM(p.amount)            AS total_income
FROM employee e
         JOIN appointment ap ON e.employee_id = ap.employee_id
         JOIN service s ON ap.service_id = s.service_id
         JOIN payment p ON ap.appointment_id = p.appointment_id
GROUP BY e.name, s.name
HAVING COUNT(ap.appointment_id) > 0
ORDER BY total_income DESC;