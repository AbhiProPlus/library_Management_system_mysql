

-- Library Management System
Create Database Library;

use library;
Create Table Branch (
 branch_no int auto_increment primary key ,
 manager_id int,
 branch_address varchar(200),
 contact_no bigint);
 
 Insert into branch (manager_id,branch_address,contact_no)
 values 
(1,'trivandrum','04936274831'),
(2, 'Kochi', '04842345678'),
(3, 'Kozhikode', '04953456789'),
(4, 'Thrissur', '04874567890');


select * from branch;

delete from  branch;
DROP TABLE Branch;
DROP TABLE employee;

 desc branch;
 
 
 
 
 Create TABLE employee (
 branch_no int,
 employee_id int primary key,
 emp_name char(50) not null ,
 emp_position varchar(25),
 emp_salary bigint,
  FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);
 
 desc employee;
 
 INSERT INTO Employee (Branch_no, Employee_id, Emp_name, Emp_position, Emp_salary)
VALUES
(1, 101, 'Amal Das', 'Clerk', 25000),
(1, 102, 'Nikhil Raj', 'Assistant', 30000),
(2, 201, 'Reena Nair', 'Librarian', 40000),
(2, 202, 'Sanjay Menon', 'Clerk', 25000),
(3, 301, 'Priya Varma', 'Manager', 50000),
(3, 302, 'Vishnu Kumar', 'Assistant', 32000),
(4, 401, 'Anjali R.', 'Clerk', 26000),
(4, 402, 'Ravi P.', 'Librarian', 42000),
(1, 103, 'Anoop S.', 'Manager', 55000),
(2, 203, 'Divya M.', 'Assistant', 28000);
 
 SELECT * FROM EMPLOYEE;
 
 
 
 Create Table Books (
 ISBN char(13) primary key,
 Book_Title varchar(100) not null,
 Category varchar(20),
 Rental_price decimal(10,2),
 Status Enum ('yes','No'),
 Author VARCHAR(100),
 Publisher VARCHAR(100)
);
 
 INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher)
VALUES
-- Malayalam Books
('9780143427542', 'Aadujeevitham', 'Novel', 45.00, 'yes', 'Benyamin', 'DC Books'),
('9780670083712', 'Khasakkinte Ithihasam', 'Novel', 40.00, 'yes', 'O.V. Vijayan', 'DC Books'),
('9789386348420', 'Randamoozham', 'Novel', 55.00, 'yes', 'M.T. Vasudevan Nair', 'Current Books'),
('9789386348499', 'Oru Desathinte Katha', 'Novel', 50.00, 'no', 'S.K. Pottekkatt', 'DC Books'),
('9788126429787', 'Balyakalasakhi', 'Novel', 45.00, 'yes', 'Vaikom Muhammad Basheer', 'DC Books'),
('9789386348505', 'Chemmeen', 'Novel', 40.00, 'yes', 'Thakazhi Sivasankara Pillai', 'DC Books'),
('9780143426873', 'Swargavathil Thurakkunna Samayam', 'Short Stories', 45.00, 'yes', 'M. Mukundan', 'DC Books'),
('9789386348498', 'Pathummayude Aadu', 'Novel', 35.00, 'no', 'Vaikom Muhammad Basheer', 'DC Books'),
('9788172234980', 'Mayyazhippuzhayude Theerangalil', 'Novel', 50.00, 'yes', 'M. Mukundan', 'DC Books'),
('9789386348487', 'Nalukettu', 'Novel', 55.00, 'no', 'M.T. Vasudevan Nair', 'DC Books'),
-- English Books
('9780143066383', 'The God of Small Things', 'Novel', 60.00, 'no', 'Arundhati Roy', 'Penguin Books'),
('9788172235147', 'Interpreter of Maladies', 'Short Stories', 35.00, 'yes', 'Jhumpa Lahiri', 'HarperCollins'),
('9780143100674', 'Malgudi Days', 'Short Stories', 30.00, 'yes', 'R.K. Narayan', 'Penguin Books'),
('9780143427993', 'Pather Panchali', 'Novel', 45.00, 'yes', 'Bibhutibhushan Bandyopadhyay', 'Penguin Books'),
('9788129119466', 'The White Tiger', 'Novel', 60.00, 'no', 'Aravind Adiga', 'HarperCollins'),
('9788172238476', 'Train to Pakistan', 'Novel', 40.00, 'yes', 'Khushwant Singh', 'Penguin Books'),
('9780143033234', 'A Tale of Two Cities', 'Novel', 30.00, 'yes', 'Charles Dickens', 'Penguin Books'),
('9780143419126', 'The Guide', 'Novel', 50.00, 'no', 'R.K. Narayan', 'Penguin Books'),
('9788172234985', 'Midnights Children', 'Novel', 55.00, 'yes', 'Salman Rushdie', 'Jonathan Cape'),
('9788172238455', 'Life of Pi', 'Novel', 45.00, 'yes', 'Yann Martel', 'Canongate Books');

 select * from books;
 
 
 
 
 CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    Customer_name VARCHAR(100) NOT NULL,
    Customer_address VARCHAR(255),
    Reg_date DATE
);


INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date)
VALUES
(1, 'Ravi Kumar', '123 MG Road, Kochi, Kerala', '2023-01-15'),
(2, 'Anjali Menon', '45 SP Nagar, Trivandrum, Kerala', '2022-12-20'),
(3, 'Vikram Raj', '67 Gandhi Road, Thrissur, Kerala', '2023-02-10'),
(4, 'Meera Nair', '89 Nehru Avenue, Kozhikode, Kerala', '2022-11-05'),
(5, 'Arjun Das', '101 Palm Street, Kochi, Kerala', '2023-03-22'),
(6, 'Lakshmi Priya', '23 Sea View, Trivandrum, Kerala', '2022-09-17'),
(7, 'Kiran Mohan', '56 Hilltop Road, Thrissur, Kerala', '2023-04-12'),
(8, 'Nandini Ramesh', '78 MG Road, Kozhikode, Kerala', '2022-10-10'),
(9, 'Suresh Iyer', '12 Lakeview Street, Kochi, Kerala', '2023-01-25'),
(10, 'Divya S', '34 Temple Road, Trivandrum, Kerala', '2023-05-05');

INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date)
VALUES
(11, 'Arun Kumar', 'abc MG Road, bathery, Kerala', '2021-01-15');

select * from customer;



CREATE TABLE IssueStatus (
    Issue_Id INT PRIMARY KEY,
    Issued_customer INT,
    Issued_book_name VARCHAR(100),
    Issue_date DATE,
    Isbn_book VARCHAR(13),
    FOREIGN KEY (Issued_customer) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);


INSERT INTO IssueStatus (Issue_Id, Issued_customer, Issued_book_name, Issue_date, Isbn_book)
VALUES
(1, 1, 'Aadujeevitham', '2023-06-01', '9780143427542'),
(2, 2, 'The God of Small Things', '2023-06-05', '9780143066383'),
(3, 3, 'Interpreter of Maladies', '2023-06-10', '9788172235147'),
(4, 4, 'Khasakkinte Ithihasam', '2023-06-15', '9780670083712'),
(5, 5, 'Balyakalasakhi', '2023-06-20', '9788126429787'),
(6, 6, 'The White Tiger', '2023-06-25', '9788129119466'),
(7, 7, 'Malgudi Days', '2023-06-30', '9780143100674'),
(8, 8, 'Chemmeen', '2023-07-05', '9789386348505'),
(9, 9, 'Train to Pakistan', '2023-07-10', '9788172238476'),
(10, 10, 'Oru Desathinte Katha', '2023-07-15', '9789386348499');

select * from issuestatus;



CREATE TABLE ReturnStatus (
    Return_Id INT PRIMARY KEY,
    Return_cust INT,
    Return_book_name VARCHAR(100),
    Return_date DATE,
    Isbn_book2 VARCHAR(13),
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)
);

INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2)
VALUES
(1, 1, 'Aadujeevitham', '2023-06-20', '9780143427542'),
(2, 2, 'The God of Small Things', '2023-06-25', '9780143066383'),
(3, 3, 'Interpreter of Maladies', '2023-07-01', '9788172235147'),
(4, 4, 'Khasakkinte Ithihasam', '2023-07-05', '9780670083712'),
(5, 5, 'Balyakalasakhi', '2023-07-10', '9788126429787'),
(6, 6, 'The White Tiger', '2023-07-15', '9788129119466'),
(7, 7, 'Malgudi Days', '2023-07-20', '9780143100674'),
(8, 8, 'Chemmeen', '2023-07-25', '9789386348505'),
(9, 9, 'Train to Pakistan', '2023-07-30', '9788172238476'),
(10, 10, 'Oru Desathinte Katha', '2023-08-01', '9789386348499');


select * from returnstatus;


-- 1. Retrieve the book title, category, and rental price of all available books.

SELECT BOOK_TITLE,CATEGORY,RENTAL_PRICE FROM BOOKS 
WHERE STATUS = 'YES';

-- 2. List the employee names and their respective salaries in descending order of salary.
SELECT EMP_NAME,EMP_SALARY FROM EMPLOYEE ORDER BY EMP_SALARY DESC;

-- 3. Retrieve the book titles and the corresponding customers who have issued those books. 

SELECT Issued_book_name, Customer_name
FROM IssueStatus 
JOIN Customer  ON Issued_customer = Customer_Id; 


-- 4. Display the total count of books in each category.

select category,count(*) from books  group by category;


-- 5. Retrieve the employee names and their positions for the 
-- employees whose salaries are above Rs.50,000. 

select emp_name,emp_salary from employee where emp_salary > 50000;


-- 6. List the customer names who registered before 2022-01-01 and
--  have not issued any books yet. 

SELECT Customer_name
FROM Customer
WHERE Reg_date < '2022-01-01'
AND Customer_Id NOT IN (SELECT Issued_customer FROM IssueStatus);

-- 7. Display the branch numbers and the total count of employees in each branch. 

 select branch_no, count(*) 
 as total_employees from employee group by branch_no;
 
-- 8. Display the names of customers who have issued books in the month of June 2023.

SELECT C.Customer_name
FROM IssueStatus I
JOIN Customer C ON I.Issued_customer = C.Customer_Id
WHERE I.Issue_date BETWEEN '2023-06-01' AND '2023-06-30';

-- 9. Retrieve book_title from book table containing history. 

select book_title from books
join issuestatus where isbn_book = isbn ;


-- 10.Retrieve the branch numbers along with the count 
-- of employees for branches having more than 2 employees

select branch_no , count(*)  as total_employees 
from employee group by branch_no having count(*) > 2;



-- 11. Retrieve the names of employees who manage branches and
--  their respective branch addresses.

select emp_name,branch_address, emp_position from branch b
 join employee e  on e.branch_no = b.branch_no 
 where emp_position = 'manager';


-- 12.  Display the names of customers who have issued books
-- with a rental price higher than Rs. 25.

select customer_name from issuestatus i
 join books b on b.isbn = i.isbn_book
 join customer c on i.issued_customer = c.customer_id
 where b.rental_price >25;




 