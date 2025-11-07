-- Create Employees table:
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10,2),
    HireDate DATE,
    Department VARCHAR(50)
);


INSERT INTO Employees (EmpID, FirstName, LastName, Salary, HireDate, Department) VALUES
(1, 'Alice', 'Johnson', 70000.0, '2020-06-15', 'Finance'),
(2, 'Bob', 'Smith', 85000.0, '2018-09-01', 'HR'),
(3, 'Charlie', 'Brown', 60000.0, '2021-02-20', 'IT'),
(4, 'Dana', 'White', 95000.0, '2017-11-10', 'Management'),
(5, 'Ethan', 'Clark', 65000.0, '2019-01-05', 'IT');
