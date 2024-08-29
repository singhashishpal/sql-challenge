# sql-challenge

In this assignment, I have created 3 different folders.

## Folder Structure
**CSV Files**: This folder Contains all the required CSV Files (Module 9 Challenge Files). These are used for 'Data Engineering' part of the assignment.

**ERD**: This folder consists of Entity Relationship Diagram created using the tool quickdatabasediagrams (quickDBD). This also contains the text used to create the ERD. This covers the 'Data 
Modeling' part of the assignment.
![ERD FROM QuickDBD image](ERD/ERD%20from%20QuickDBD.jpg)

**SQL Files**: This is the main folder of the project which consists the SQL files for Creating and Altering the database tables. This folder also contains the 'Data Analysis' SQL file which answers all the 8 questions asked in the challenge.

## Database Tables
The tables were created as per the below order. It is imperative to create the folders in the below order otherwise the constraints might not allow for texts to be imported correctly.
The same order has been followed in the SQL script _SQL files for creating tables.sql_ file. 

1. departments
2. titles
3. employees
4. dept_manager
5. salaries
6. dept_emp

A new schema 'sqlchallenge' was created in order to create the DB Tables under the new schema.

## Challenge Completion Rundown

Firstly, using the CSV files, and ERD was created which was used as a reference for creating the tables. ![SQL files for creating tables.sql](SQL%20Files/SQL%20files%20for%20creating%20tables.sql)
Afterwards, the tables were altered and constraints were added. ![SQL files for altering tables.sql](SQL%20Files/SQL%20files%20for%20altering%20tables.sql)

Once both were completed successfully, imports were made from CSV files to import the data directly to the corresponding tables. ![SQL imports](SQL%20Files/SQL%20imports.png)

On successful completion of that, the Data Analysis part was completed. ![Data Analysis.sql](SQL%20Files/Data%20Analysis.sql)