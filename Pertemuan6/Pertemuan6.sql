CREATE DATABASE pertemuan6;
USE pertemuan6;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT,
    ManagerID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);

CREATE TABLE Salaries (
    EmployeeID INT,
    Salary DECIMAL(10,2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Insert data
USE pertemuan6;
SELECT * FROM Employees;
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES 
(1, 'Finance'),
(2, 'HR'),
(3, 'IT'),
(4, 'Marketing');


INSERT INTO Projects (ProjectsID, ProjectName, DepartmentID) VALUES 
(1, 'Project Alpha', 1),
(2, 'Project Beta', 2),
(3, 'Project Gamma', 3),
(4, 'Project Delta', 4);

INSERT INTO Employees (EmployeeID, Name, ManagerID, DepartmentID) VALUES 
(1, 'John Doe', NULL, 1),
(2, 'Jane Smith', 1, 2),
(3, 'Emily Davis', 1, 3),
(4, 'Michael Brown', 2, 4),
(5, 'Sarah Wilson', 3, 1),
(6, 'David Johnson', 3, 2);

INSERT INTO Salaries (EmployeeID, Salary) VALUES 
(1, 7000.00),
(2, 6000.00),
(3, 6500.00),
(4, 5500.00),
(5, 5000.00),
(6, 4800.00);



use pertemuan6
SELECT * FROM Employees;

-- soal 1

SELECT Employees.Name, Departments.DepartmentName
FROM Employees
JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Employees.DepartmentID IS NOT NULL;

-- soal 2
SELECT e.Name, p.ProjectName
FROM Employees e
LEFT JOIN Projects p ON e.DepartmentID = p.DepartmentID
ORDER BY e.Name;

-- soal 3

SELECT Projects.ProjectName, Departments.DepartmentName
FROM Projects
LEFT JOIN Departments ON Projects.DepartmentID = Departments.DepartmentID;

-- soal 4

SELECT Employees.Name, Salaries.Salary
FROM Employees
LEFT JOIN Salaries ON Employees.EmployeeID = Salaries.EmployeeID
UNION
SELECT Employees.Name, Salaries.Salary
FROM Salaries
RIGHT JOIN Employees ON Salaries.EmployeeID = Employees.EmployeeID;

-- soal 5

SELECT e.Name AS EmployeeName, p.ProjectName AS ProjectName
FROM 
    Employees e
CROSS JOIN 
    Projects p
ORDER BY 
    e.Name, p.ProjectName;

-- soal 6

SELECT e1.Name AS EmployeeName, e2.Name AS ManagerName
FROM Employees e1
LEFT JOIN Employees e2 ON e1.ManagerID = e2.EmployeeID;

-- soal 7

SELECT Employees.Name, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;











