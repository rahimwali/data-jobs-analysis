/*
Question: What skills pay the most money?

  - Look at average salary for each skill
  - Focuses on roles with salaries (not NULL) & postings that are local
  - Why? It reveals how different skills impact salary for analyst roles & helps identify
      which skills are most financially rewarding
*/

SELECT
  skills_dim.skills,
  ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS avg_salary,
  COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
  job_title LIKE '%Analyst%' AND
  job_location = 'Albany, NY' AND
  salary_year_avg IS NOT NULL
GROUP BY
  skills_dim.skills
ORDER BY
  avg_salary DESC
LIMIT 25

/*

Key Insights

  - SAS (36), R (20), SQL (19), Python (16), and Excel (14) are the most in-demand skills for analyst 
      roles in the Albany market, forming the core technical stack.

  - Python offers one of the strongest value propositions, combining high demand 
      (16 postings) with a relatively high average salary (~$97K).

  - Specialized technologies such as PowerShell, Bash, Linux, and PostgreSQL command the highest salaries, 
      but each appeared in only one posting, suggesting niche rather than widespread demand.
  
  - Tableau and SharePoint show moderate demand, indicating that data visualization and 
      enterprise collaboration skills can strengthen an analyst profile.
  
  - The data suggests that Albany's analyst market has a strong government and enterprise 
      analytics focus, with heavy demand for traditional statistical tools like SAS and R.
  
  - For job seekers, the most practical skill combination is SQL + Excel + Python, with 
      SAS or R providing a competitive advantage for the local market.

*/