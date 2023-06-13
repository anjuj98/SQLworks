
CREATE TABLE employee (

employee_id      INT        PRIMARY KEY  IDENTITY(1,1),
  first_name     VARCHAR(50),
  last_name      VARCHAR(50),
  department     VARCHAR(50),
  hire_date      DATE,
  salary         DECIMAL(10, 2),
  email          VARCHAR(100),
  phone_number   VARCHAR(20),
  address        VARCHAR(100),
  manager_id     INT,
  status         VARCHAR(20)

  );

INSERT INTO employee 
VALUES ('John', 'Doe', 'Sales', '2022-01-01', 5000.00, 'johndoe@example.com', '1234567890', '123 Main St', NULL, 'Full-time'),
('Jane', 'Smith', 'Marketing', '2022-02-01', 6000.00, 'janesmith@example.com', '9876543210', '456 Oak St', NULL, 'Full-time'),
('Mike', 'Johnson', 'IT', '2022-03-01', 7000.00, 'mikejohnson@example.com', '5555555555', '789 Elm St', 1, 'Full-time'),
('Emily', 'Williams', 'HR', '2022-04-01', 5500.00, 'emilywilliams@example.com', '9998887777', '321 Pine St', 1, 'Full-time'),
('David', 'Brown', 'Finance', '2022-05-01', 8000.00, 'davidbrown@example.com', '4443332222', '567 Maple St', 2, 'Full-time'),
('Sarah', 'Davis', 'Sales', '2022-06-01', 4800.00, 'sarahdavis@example.com', '7776665555', '789 Oak St', 3, 'Full-time'),
('Michael', 'Miller', 'IT', '2022-07-01', 6500.00, 'michaelmiller@example.com', '2223334444', '987 Elm St', 2, 'Full-time'),
('Rachel', 'Wilson', 'Marketing', '2022-08-01', 5500.00, 'rachelwilson@example.com', '5552221111', '456 Oak St', 3, 'Full-time'),
('Daniel', 'Taylor', 'HR', '2022-09-01', 5200.00, 'danieltaylor@example.com', '1112223333', '789 Pine St', 4, 'Full-time'),
('Olivia', 'Anderson', 'Finance', '2022-10-01', 7500.00, 'oliviaanderson@example.com', '6667778888', '567 Elm St', 4, 'Full-time');


SELECT * FROM employee;


/*TASK3 Second largest salary*/

SELECT MAX(salary) as second_largest FROM employee
WHERE salary<(
SELECT MAX(salary) FROM employee)

/*TASK4 List numbr of employees in each department*/

SELECT COUNT(employee_id) AS number_of_employees,department FROM employee
 GROUP BY department;

