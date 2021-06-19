# Pewlett-Hackard-Analysis

## Overview of Project
For this week's project, we will be using Structured Query Language, also known as SQL, to organize and query our data. SQL is one of the most commonly used query languages that will help us perform our analysis to discover relationships between our data in a database. In order to design and build our database, we will also need to understand how to organize our data. To visualize the flow of information, we will create an entity relationship diagram (ERD) that will show the database as a whole but also highlights the tables and their relationships. Although there are many different interfaces to use SQL, we will be using Postgres and pgAdmin in this project. We'll be using Postgres as our relational database system where we will be loading our data into. PgAdmin is the user-friendly interface that interacts specifically with Postgres and where we will be writing and executing our queries.

### Purpose
The purpose of this week's analysis was to help Pewlett Hackard organize and analyze their employee data. Bobby, an up-and-coming HR analyst, was tasked with finding the amount of retiring employees at Pewlett Hackard so they can prepare to fill these positions. Bobby's boss determined that anyone born between 1952 and 1955 will begin to retire. The company would also like to implement a mentoring program that will allow new associates to learn from these experienced employees. Instead of retiring, these employees would be working part time to mentor the newly hired. 

Pewlett Hackard was mainly using Excel and VBA to view their data and needed our assistance in building a new employee database. The employee information that was available was stored in 6 different CSV files. These spreadsheets consisted of information around departments, employee information, employee salaries, managers, department employee information, and employee titles. We were able to use these spreadsheets and export the data into tables in our new database. We used SQL to write queries that retrieved employees eligible to retire and their titles, employees eligible to retire and their most recent title, number of employees eligible to retire by title, and employees who are eligible to participate in a mentorship program.

By putting Pewlett Hackard's employee data into a new database, their data is now more organized and easier to query for information. Creating queries will provide more insight to decision makers and managers to help future proof Pewlett Hackard.

## Results

#### Retirement Titles
The information in this table below consists of employees eligible to retire and their titles. As mentioned previously, Bobby's boss has determined that any employee born between 1952 and 1955 will start to retire. This table will be the foundation to our next two queries. In order to retrieve this information based on the data we had, we joined the existing Employees and Titles tables on their primary key, which is the Employee Number. 

Retirement Titles table consists of the following data:
- Employee Number
- Employee First Name
- Employee Last Name
- Employee Title
- Start Date of Title
- End Date of Title

[Retirement Titles Export - Link](https://github.com/mrvillafria/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles.csv)

#### Unique Titles
The information in this table below consists of employees eligible to retire and their most recent title. We noticed in the Retirement Titles table that there was duplicate entries because employees changed their titles over the years. In order to remove these duplicates and only keep their most recent title, we used DISTINCT ON in our query to retrieve the first occurance of the employee number.

Unique Titles table consists of the following data:
- Employee Number
- Employee First Name
- Employee Last Name
- Employee Title

[Unique Titles Export - Link](https://github.com/mrvillafria/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv)

#### Retiring Titles
The information in this table below consists of number of employees eligible to retire per title. We used COUNT to count the number of employees and grouped the table by title.

Retiring Titles table consists of the following data:
- Count of Employees
- Employee Title

[Retiring Titles Export - Link](https://github.com/mrvillafria/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv)

#### Mentorship Eligibility
The information in this table below consists of number of employees eligible to participate in a mentorship program. These are current employees that were born between January 1, 1965 and December 31, 1965.

Mentorship Eligibility table consists of the following data:
- Employee Number
- Employee First Name
- Employee Last Name
- Employee Birth Date
- Start Date of Title
- End Date of Title
- Employee Title

[Mentorship Eligibility Export - Link](https://github.com/mrvillafria/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibilty.csv)

### Analysis
Based on the new tables we created, here are four key points we discovered:
1. There are 90398 total employees born between 1952 and 1955 that are expected to retire soon
2. By looking at the employees' most recent titles, we find that majority of retiring employees have Senior titles or are Engineers

<p align="center">
  <img src="https://github.com/mrvillafria/Pewlett-Hackard-Analysis/blob/main/Resources/Retiring_Titles.PNG" />
</p>


3. There are 29414 Senior Engineers and 28254 Senior Staff that are eligible to retire. Their Senior title gives an indication that they are experienced in their current role which would be a desirable quality for being a potential mentor.
4. 

## Summary
