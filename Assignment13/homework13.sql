-- 1.) Retrieve all employees along with their department names.

SELECT "emp_name", "department_name" 
FROM "Employees"
LEFT JOIN "Departments" 
ON "Employees"."department_id" = "Departments"."department_id";

-- One didn't say exclude those without compapny name

--2.) Get a list of all employees, including those who don’t belong to any department.

SELECT "emp_name"
FROM "Employees";

-- 3.) List all departments along with their employees. If no employee exists in a department, show NULL.
     -- My client will return nothing instead of 'NULL' for some reason, so I found a way to use COALESCE() to show 'NULL'
     -- Also found another function -group_concat()- to combine multiple employees into one string. 
     -- Can use these in other questions aswel to help format the output. 
     -- Also my client supports full outer join (Mac Terminal sqlite3)

SELECT d."department_name", 
       COALESCE(GROUP_CONCAT(e."emp_name", ', '), 'NULL') AS "employees"
FROM "Departments" d
LEFT JOIN "Employees" e
ON d."department_id" = e."department_id"
GROUP BY d."department_name";



-- 4.) Retrieve all employees and departments, ensuring missing matches are handled with NULL values.

SELECT  COALESCE(d."department_name", 'NULL') AS "department_name",
        COALESCE(e."emp_name", 'NULL') AS "employees"
FROM "Departments" d
FULL OUTER JOIN "Employees" e
ON d."department_id" = e."department_id";

-- 5.) Get all possible pairs of employees and departments.
    -- Inner join, so rows with only a single match will not be included.
SELECT e."emp_name", d."department_name"
FROM "Departments" d
INNER JOIN "Employees" e
ON d."department_id" = e."department_id";

-- 6.) Retrieve employee details along with department names using Natural Join.
SELECT e.* , d. "department_name" 
FROM "Employees" e
NATURAL JOIN "Departments" d;

-- 7.) Get employees who do not belong to any department.

SELECT e."emp_name" 
FROM "Employees" e
FULL OUTER JOIN "Departments" d
ON d."department_id" = e."department_id"
WHERE "department_name" IS NULL;



