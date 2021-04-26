
-- Number of [titles] retiring
SELECT ce.emp_no,
  ce.first_name,
  ce.last_name,
  ti.title,
  ti.from_date,
  ti.to_date
INTO ret_titles
FROM employees AS ce
  INNER JOIN titles AS ti
    ON (ce.emp_no = ti.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY ce.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM ret_titles
ORDER BY emp_no ASC, to_date DESC;


-- Counting the number of each employee per title
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- Create Mentorship Eligibility table 
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
d.from_date, d.to_date, t.title
INTO mentorship 
from employees as e 
inner join titles as t on e.emp_no = t.emp_no 
inner join dept_emp as d on e.emp_no = d.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (d.to_date = '9999-01-01')
ORDER BY e.emp_no ASC, d.to_date DESC;

select * from mentorship;