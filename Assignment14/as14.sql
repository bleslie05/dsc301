-- 1. Retrieve the full name by concatenating first_name and last_name
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM Employees;

-- 2. Convert all employee names to uppercase
SELECT UPPER(first_name) AS first_name_upper, UPPER(last_name) AS last_name_upper FROM Employees;

-- 3. Extract the domain from email addresses

SELECT email, SUBSTRING(email, CHARINDEX('@', email) + 1, LEN(email)) AS domain FROM Employees;

-- 4. Retrieve employees whose first names start with 'D'
SELECT * FROM Employees WHERE first_name LIKE 'D%';
-- 5. Retrieve employees whose last names contain the letter 'o'
SELECT * FROM Employees WHERE last_name LIKE '%o%';

-- 6. Find the length of each employee’s email address
SELECT email, LEN(email) AS email_length FROM Employees;

-- 7. Replace "." in email addresses with "_"
SELECT email, REPLACE(email, '.', '_') AS updated_email FROM Employees;

-- 8. Extract the last four digits of each employee’s phone number
SELECT phone_number, RIGHT(phone_number, 4) AS last_four_digits FROM Employees;

-- 9. Retrieve employees whose phone number contains '123' anywhere
SELECT * FROM Employees WHERE phone_number LIKE '%123%';

-- 10. Trim any leading and trailing spaces from first_name
SELECT first_name, TRIM(first_name) AS trimmed_name FROM Employees;
