# sql-challenge

For this challenge, we are working as Data Engineers for a company in a research project examining employment from the 1980s and 1990s.

As an initial step in this project, we developed an Entity Relationship Diagram (ERD) to create data modeling.

In our ERD, we designed our tables, specifying the columns necessary for importing the CSV datasets. Our table definitions included data types, primary keys, foreign keys, constraints, and cardinalities.
The ERD serves a dual purpose: it provides a comprehensive visualization of the project and the necessary schema/code to be implemented in PgAdmin 4. This schema will instantiate the tables required to store our CSV datasets.
 
Data analizys
 
We perform different queries in order to get the information needed for this project such as:

1. The employee number, last name, first name, sex, and salary of each employee 
2. The first name, last name, and hire date for the employees who were hired in 1986
3. Manager of each department along with their department number, department name, employee number, last name, and first name
4. Department number for each employee along with that employee’s employee number, last name, first name, and department name
5. First name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
6. Each employee in the Sales department, including their employee number, last name, and first name
7. Each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
8. The frequency counts, in descending order, of all the employee last names

Final comments

We found this methodology to be particularly effective, as the ERD offers a clear and structured starting point for project visualization and schema generation.

Our SQL queries, built upon this foundation, enable efficient and precise filtering of the database, facilitating the extraction of pertinent information.


