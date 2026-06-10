/*
Question: What are the top paying general anaylst jobs?

  - Identify the top paying analyst roles that are available locally
  - Focuses on job postings with specified salaries (ignore null values)
      and jobs that are entry/junior level
  - Why? Highlight the top paying opportunities for analyst roles in my area

Findings:

  - Most Data Analyst opportunities in Albany are through the state
*/

SELECT
  job_id,
  job_title,
  job_location,
  job_schedule_type,
  salary_year_avg,
  job_posted_date,
  name as company_name
FROM
  job_postings_fact
LEFT JOIN
  company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
  job_title LIKE '%Analyst%' AND
  job_title !~* '(Senior|Principal|3|4|Lead|Chief)' AND
  job_location = 'Albany, NY' AND
  salary_year_avg IS NOT NULL
ORDER BY
  salary_year_avg DESC
