-- Deliverable 1
-- Retrieving data
SELECT e.emp_no,
		e.first_name,
		e.last_name,
		t.title,
		t.from_date,
		t.to_date
-- Creating a new table
INTO retirement_titles
-- Joining tables
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
-- Filtering and ordering
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;
-- Use Dictinct with Orderby to remove duplicate rows
-- Retrieving data
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
-- Creating a new table
INTO unique_titles
FROM retirement_titles as rt
-- Filtering and ordering
WHERE rt.to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Retiring employees by job title
SELECT COUNT(ut.title),
	ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;

-- Deliverable 2 
-- Retrieving data
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
-- Creating a new table
INTO mentorship_eligibility
-- Joining tables
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (de.emp_no = t.emp_no)
-- Filtering and ordering
WHERE t.to_date = '9999-01-01'
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC;

--  Deliverable 3
-- Roles to fill
SELECT SUM (rt.count)
FROM retiring_titles AS rt;

-- Mentors available 
SELECT COUNT (me.title)
FROM mentorship_eligibility AS me;

-- Mentorship by job title
SELECT COUNT(me.title),
	me.title
INTO mentorship_titles
FROM mentorship_eligibility AS me
GROUP BY me.title
ORDER BY COUNT(me.title) DESC;

