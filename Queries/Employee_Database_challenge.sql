-- Deliverable 1: Retrieve retiring employees information and their titles
SELECT e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

-- Deliverable 1: Remove duplicates rows of retiring employees and keep only the most recent title
SELECT DISTINCT ON (rt.emp_no) 
rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no ASC, rt.to_date DESC;

-- Deliverable 1: Retrieve number of employees by their most recent job title who are about to retire
SELECT COUNT(ut.emp_no),
ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT(ut.emp_no) DESC;

--Deliverable 2: Retrieve employees who are eligible to participate in a mentorship program
SELECT DISTINCT ON (e.emp_no) 
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC;

--Deliverable 3: Retrieve retiring employees that currently still work for the company and keep only their most recent title
SELECT DISTINCT ON (rt.emp_no) 
rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles_currently_employed
FROM retirement_titles rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no ASC, rt.to_date DESC;

--Deliverable 3: Retrieve number of employees by their most recent job title who are about to retire and are still employed by the company
SELECT COUNT(utce.emp_no),
utce.title
INTO retiring_titles_currently_employed
FROM unique_titles_currently_employed as utce
GROUP BY utce.title
ORDER BY COUNT(utce.emp_no) DESC;

--Deliverable 3: Retrieve number of employees who are eligible to participate in a mentorship program by their titles
SELECT COUNT(me.emp_no),
me.title
INTO mentorship_titles
FROM mentorship_eligibilty as me
GROUP BY me.title
ORDER BY COUNT(me.emp_no) DESC;