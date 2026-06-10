/*
Question: What skills are required for the top-paying analyst jobs in my area?

  - Use the top paying local jobs identified in the previous query as a starting point
  - Add the skills needed in these roles
  - Why? It provides insight into which higher paying jobs demand what skills, helping me
      understand which skills are common between them and which skills to develop

*/

WITH top_paying_jobs AS (
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
)

SELECT
  top_paying_jobs.*,
  skills_dim.skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
  salary_year_avg DESC

/*
Key Insights (Entry-Level Albany Analyst Jobs)
  - Analyzed 14 entry-level analyst job postings in the Albany, NY market (2023).
  
  - Most in-demand skills: SAS (10), SQL (9), Excel (4), R (4), Python (4), and Microsoft Flow (4).

  - Specialized skills such as Oracle, Tableau, Power BI, SPSS, SSIS, JavaScript, and SharePoint appeared only occasionally, 
      suggesting they are role-specific rather than baseline requirements.

  - Salaries ranged from $55K–$92.5K, with an average of approximately $75.5K.

  - Many postings came from New York State agencies and public-sector organizations, 
      reinforcing the importance of traditional analytics tools and enterprise software.

  - The data suggests that an entry-level candidate targeting this market should prioritize SQL, Excel, Python, and SAS, 
      with familiarity in reporting and business intelligence tools providing additional value.
*/