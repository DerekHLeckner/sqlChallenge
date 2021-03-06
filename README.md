# SQL Homework - Employee Database: A Mystery in Two Parts

![sql.png](sql.png)

## Background

In this challenge, we will design tables to hold employee data of a fictional company stored in CSVs, import the CSVs into a SQL database, and answer questions about the data. We will perform:

1. Data Engineering

3. Data Analysis

## Challenge Guide

#### Data Modeling

Inspect the CSVs and sketch out an ERD of the tables.

#### Data Engineering

* We use the data to create a table schema for each of the six CSV files. We specify data types, primary keys, foreign keys, and other constraints.

  * For the primary keys, we check to see if the column is unique.

* We import each CSV file into the corresponding SQL table. **Note** be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.

#### Data Analysis

Once the databse is complete, we do the following:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
