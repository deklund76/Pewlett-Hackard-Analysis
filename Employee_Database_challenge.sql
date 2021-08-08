-- Create table of future retirees by title
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	tit.title,
	tit.from_date,
	tit.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as tit
ON (e.emp_no = tit.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
tit.title
INTO unique_titles
FROM employees as e
INNER JOIN titles as tit
ON (e.emp_no = tit.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no ASC, to_date DESC;

-- Get number of future retirees by title
SELECT COUNT(*) as total,
u.title
INTO retiring_titles
FROM unique_titles as u
GROUP BY u.title
ORDER BY total DESC;

-- Create Mentorship eligibility table
SELECT DISTINCT ON(e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	tit.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as tit
ON (e.emp_no = tit.emp_no)
WHERE de.to_date = '9999-01-01'
AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no;