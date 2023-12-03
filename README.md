This study involved constructing a database encompassing employees of Pewlett Hackard from the 1980s and 1990s, using six surviving CSV files from the era's employee database.

My role included designing database tables to accommodate the CSV file data, transferring this data into a SQL database, and conducting data analyses.

The project followed these steps:

Data Modeling:

Examined the CSV files and drafted an Entity-Relationship Diagram (ERD) for the database tables.
Data Engineering:

Developed a schema for each CSV file, ensuring the inclusion of data types, primary keys, foreign keys, and other constraints.
Ensured uniqueness for primary keys, and where necessary, implemented composite keys.
Prioritized the creation of tables to manage foreign keys effectively.
Imported each CSV file into the corresponding table in the SQL database.
Data Analysis:

Compiled a list detailing each employee's number, surname, given name, gender, and salary.
Identified employees hired in 1986 by their names and hire dates.
Listed each department's manager with relevant details including department number and name, as well as the manager's employee number, surname, and given name.
Displayed each employee’s department details, including their employee number, name, and department name.
Identified employees named Hercules with surnames starting with 'B', listing their first names, last names, and gender.
Cataloged employees in the Sales department by their employee numbers, last names, and first names.
Enumerated employees in both Sales and Development departments, including their employee numbers, names, and department names.
Arranged employee surnames by their frequency of occurrence in descending order.
Tools and Techniques:

SQL for database management.
Jupyter Notebooks for data analysis and visualization.
ERD for data modeling.
Emphasis on primary key integrity in database design.
