CREATE TABLE "Departments"(
    "department_id" INTEGER,
    "department_name" TEXT NULL, 
    "manager_id" INTEGER,
    PRIMARY KEY("department_id")
);

CREATE TABLE "Employees"(
    "emp_id" INTEGER UNIQUE, 
    "emp_name" TEXT,
    "department_id" INTEGER,
    "salary" INTEGER,
    PRIMARY KEY ("emp_id"),
    FOREIGN KEY ("department_id")
        REFERENCES "Departments"("department_id")
);


