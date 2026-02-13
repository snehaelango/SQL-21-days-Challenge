## 🔹 Day 1: SQL Coding Challenge – Hospital Database

On Day 1, I focused on practicing fundamental SQL Data Definition Language (DDL) operations by designing and modifying a hospital database table.

### 📌 Tasks Completed

- Created a table named `Patients`.
- Added a new column `DoctorAssigned` with data type `VARCHAR(50)`.
- Modified the `PatientName` column to allow up to 100 characters.
- Renamed the table from `Patients` to `Patient_Info`.
- Understood the difference between:
  - **TRUNCATE** – Removes all records but keeps the table structure.
  - **DROP** – Deletes the table completely along with its structure.

### 🎯 Concepts Practiced

- Table creation  
- Altering table structure  
- Adding and modifying columns  
- Renaming tables  
- Difference between TRUNCATE and DROP

## 🔹 Day 2: SQL Coding Challenge – Online Bookstore 📚

On Day 2, I practiced table constraints, relationships, and data manipulation by designing an Online Bookstore database.

### 📌 Tasks Completed

- Created a `Books` table with:
  - `BookID` as PRIMARY KEY
  - `Title` and `Author` as NOT NULL
  - `ISBN` as UNIQUE
  - `Price` with CHECK constraint (Price > 0)

- Created an `Orders` table with:
  - `OrderID` as PRIMARY KEY
  - `BookID` as FOREIGN KEY referencing `Books(BookID)`
  - `OrderDate` as NOT NULL
  - `Quantity` with CHECK constraint (Quantity > 0)

- Altered the `Books` table to add a DEFAULT constraint to the `ISBN` column.

- Inserted, retrieved, and updated records while maintaining all constraints.

- Practiced the difference between:
  - **DELETE** – Removes selected rows using a WHERE clause.
  - **TRUNCATE** – Removes all rows while keeping the table structure.

### 🎯 Concepts Practiced

- PRIMARY KEY and FOREIGN KEY
- NOT NULL, UNIQUE, CHECK, DEFAULT constraints
- INSERT, SELECT, UPDATE operations
- DELETE vs TRUNCATE
- Maintaining data integrity

## 🔹 Day 3: SQL Coding Challenge – Clauses & Operators 🛒

On Day 3, I practiced SQL clauses, aggregate functions, grouping, and window functions using an ECommerce database.

### 📌 Tasks Completed

- Retrieved the top 3 highest-priced products using `ORDER BY` (DESC) and `LIMIT`.

- Applied aggregate functions on the `Sales` table:
  - `COUNT()` – Total sales records  
  - `SUM()` – Total sales amount  
  - `AVG()` – Average sale amount  
  - `MAX()` – Highest sale amount  
  - `MIN()` – Lowest sale amount  

- Used `GROUP BY` to calculate total sales per product and applied `HAVING` to filter products with total sales greater than ₹100.

- Implemented Window Functions (`RANK()` / `DENSE_RANK()`) to rank products based on price from highest to lowest.

### 🎯 Concepts Practiced

- ORDER BY and LIMIT  
- Aggregate Functions  
- GROUP BY and HAVING  
- Window Functions (RANK, DENSE_RANK)  
- Data summarization and ranking  


## 🔹 Day 4: SQL Coding Challenge – Sorting & Aggregates 🛒

On Day 4, I practiced sorting, aggregate functions, grouping, and filtering aggregated data using the ECommerce database.

### 📌 Tasks Completed

- Sorted products by price in descending order using `ORDER BY`.

- Retrieved the top 3 most expensive products using `ORDER BY` with `LIMIT`.

- Calculated total sales amount using `SUM()`.

- Computed average sale amount using `AVG()`.

- Determined total number of sales and identified highest and lowest sale amounts using `COUNT()`, `MAX()`, and `MIN()`.

- Used `GROUP BY` to calculate total sales per product.

- Applied `HAVING` to filter products based on total and average sales conditions.

- Combined `GROUP BY`, `ORDER BY`, and `LIMIT` to:
  - Sort products by total sales
  - Retrieve top-performing products
  - Apply multiple aggregate conditions

### 🎯 Concepts Practiced

- ORDER BY and LIMIT  
- Aggregate Functions (SUM, AVG, COUNT, MAX, MIN)  
- GROUP BY  
- HAVING  
- Sorting and filtering aggregated data  
- Sales performance analysis  


## 🔹 Day 5: SQL Coding Challenge – Joins & Built-in Functions 🎓

Day 5 focuses on table joins and commonly used SQL built-in functions using a School database.

### 📌 Tasks Completed

- Used `INNER JOIN` to display students with their enrolled courses.

- Applied `LEFT JOIN` and `RIGHT JOIN` to include unmatched records from related tables.

- Implemented numeric functions:
  - `ROUND()` for decimal precision
  - `ABS()` for absolute values
  - `MOD()` to calculate remainders

- Used string functions:
  - `CONCAT()` to combine student details
  - `LENGTH()` to calculate character count
  - `REPLACE()` to modify course names
  - `SUBSTRING()` to extract name prefixes
  - `UPPER()` and `LOWER()` for text formatting

- Applied date functions:
  - `NOW()` to display current date and time
  - `DATEDIFF()` to calculate date differences
  - `DATE_ADD()` to generate follow-up dates

### 🎯 Concepts Practiced

- INNER, LEFT, and RIGHT JOIN  
- Numeric Functions  
- String Functions  
- Date Functions  
- Data formatting and transformation  

