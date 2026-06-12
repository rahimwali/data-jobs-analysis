/*
Question: What are the most demanded skills for analyst jobs in my area?
  - Why? It provides insight into which skills are most commonly required for analyst jobs, 
    helping me understand which skills to develop to increase my chances of getting hired in this field.
*/

SELECT
  skills_dim.skills,
  COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
  job_title LIKE '%Analyst%' AND
  job_location = 'Albany, NY'
GROUP BY
  skills_dim.skills
ORDER BY
  demand_count DESC
LIMIT 10

/*
Key Insights

  - SAS (128), SQL (114), and Excel (97) are the most requested skills, making them the 
      foundation of the Albany analyst market.
  
  - Python (79), Tableau (68), and R (66) are also in strong demand, showing the importance of 
      programming and data visualization.
  
  - Microsoft Office skills such as Word (43) and PowerPoint (30) remain valuable for reporting 
      and stakeholder communication.
  
  - Power BI (26) and Microsoft Flow (24) appear less frequently but can help differentiate candidates.
  
  - The data suggests that the strongest skill set for Albany analyst roles is SQL + Excel + Python, 
      with SAS and Tableau providing a significant competitive advantage.
*/