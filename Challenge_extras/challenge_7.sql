--challenge 7 deliverable 1
--steps 1-7 - Create a table that holds all the titles of
--employees born between Jan 1 1952 and Dec 31 1955
SELECT e.emp_no,
	e.first_name,
	e.last_name, 
	ti.title, 
	ti.from_date, 
	ti.to_date
--INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no ASC;

--steps 8-15
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
--INTO unique_titles
FROM retirement_titles AS rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no ASC, rt.to_date DESC;


--steps 16-21
--Using COUNT to create a table with the number of
--retirement-age employees by most recent job title. 
SELECT COUNT(ut.title), ut.title
--INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT DESC;

SELECT * FROM retiring_titles;



--deliverable 2
--create a table that holds the employees who 
--are eligible to participate in a mentorship program
SELECT DISTINCT ON (emp_no) e.emp_no, 
e.first_name, e.last_name, e.birth_date, 
de.from_date, de.to_date, 
ti.title
--INTO mentorship_eligibility
FROM employees AS e 
INNER JOIN dept_emp AS de 
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility;



-------------------------




DROP TABLE retiring_titles_2;

--other queries
-- use hire date 1985-1988 as a filter. 
SELECT e.emp_no, e.first_name, e.last_name, e.hire_date,
	ti.title, ti.from_date, ti.to_date
INTO retirement_titles_2
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
ORDER BY e.emp_no ASC;

SELECT DISTINCT ON (rt2.emp_no) rt2.emp_no,
rt2.first_name, rt2.last_name, rt2.title
INTO unique_titles_2
FROM retirement_titles_2 AS rt2
WHERE rt2.to_date = '9999-01-01'
ORDER BY rt2.emp_no ASC, rt2.to_date DESC;

SELECT COUNT(ut2.title), ut2.title
--INTO retiring_titles_2
FROM unique_titles_2 AS ut2
GROUP BY ut2.title
ORDER BY COUNT DESC;








--total employed employees
SELECT e.emp_no, e.first_name, e.last_name, 
	ti.title, ti.from_date, ti.to_date
INTO retirement_titles_3
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
ORDER BY e.emp_no ASC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt3.emp_no) rt3.emp_no,
rt3.first_name, rt3.last_name, rt3.title
--INTO unique_titles_3
FROM retirement_titles_3 AS rt3
WHERE rt3.to_date = '9999-01-01'
ORDER BY rt3.emp_no ASC, rt3.to_date DESC;






--elinas query
SELECT DISTINCT ON(ut.title, d.dept_name)
ut.title, d.dept_name, 
COUNT(ut.title)
FROM unique_titles AS ut
INNER JOIN dept_emp AS de
ON ut.emp_no = de.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
Group by ut.title, d.dept_name
order by d.dept_name;