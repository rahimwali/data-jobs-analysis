# Excel Salary Dashboard

<img width="1578" height="724" alt="excel_animation" src="https://github.com/user-attachments/assets/a542de9d-44a5-4864-83e6-8f73ebeae52e" />


## Project Overview
I developed an interactive Excel dashboard to help job seekers navigate the 2023 data job market. This tool enables users to filter global salary data by job title, country, and employment type, providing data-driven clarity for salary negotiations and career planning.

The final project can be accessed in [data-jobs-salary-calculator.xlsx](data-jobs-salary-calculator.xlsx)

## Key Features
**Dynamic Geographic Mapping**: Visualizes median salary distribution globally to identify high-paying regions at a glance.  

<img width="499" height="288" alt="Screenshot 2026-04-21 154844" src="https://github.com/user-attachments/assets/0d0195af-e0b2-4f7c-81cb-058c6501b81a" />  

<br>

**Salary Benchmarking**: A horizontal bar chart comparing median salaries across different roles (e.g., Data Scientist vs. Data Analyst).  

<img width="436" height="286" alt="Screenshot 2026-04-21 155213" src="https://github.com/user-attachments/assets/42f18690-d271-4be7-8e08-db5cc545c878" />

<br>

**Multi-Factor Filtering**: User-controlled dropdowns for "Country" and "Job Type" that instantly update all dashboard metrics.

## Technical Highlights
**Advanced Array Formulas**  
To handle complex filtering without a pivot table, I utilized nested MEDIAN(IF()) array formulas. This allows for real-time calculation across multiple criteria:
```
=MEDIAN(
    IF(
        (jobs[job_title_short]=A2)*
        (jobs[job_country]=country)*
        (ISNUMBER(SEARCH(type,jobs[job_schedule_type])))*
        (jobs[salary_year_avg]<>0),
        jobs[salary_year_avg]
    )
)
```

**Dynamic List Management**  
Implemented the FILTER function to sanitize and generate unique lists for the dashboard's Data Validation (dropdown) menus, ensuring the UI remains clean and free of "null" or redundant values.

## Key Insights
Role Hierarchy: Senior-level engineering roles consistently command a 25-35% premium over standard analyst positions.  
Remote Impact: Full-time remote roles show high salary stability across different geographic regions compared to localized part-time roles.
