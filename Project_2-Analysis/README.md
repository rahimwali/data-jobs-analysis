
# Project 2 Analysis

<img width="1395" height="545" alt="image" src="https://github.com/user-attachments/assets/b5468a6e-72cd-4c94-9844-41ea2f3aaa52" />


## Project Analysis
Why do some data roles pay significantly more than others? I analyzed a dataset of 2023 data science job postings to identify the correlation between skill density, geographic location, and compensation. This project moves beyond standard spreadsheets into Data Modeling and Advanced Analytics.

The final project can be accessed in [Data_Jobs_Analysis.xlsx](Data_Jobs_Analysis.xlsx)


## Advanced Technical Stack
- **Power Query (M):** Automated the ETL (Extract, Transform, Load) process to clean and merge relational datasets.
- **Power Pivot & Data Modeling:** Created a star-schema relationship between job postings and skill requirements.
- **DAX (Data Analysis Expressions):** Wrote custom measures for accurate median salary calculations across global markets.
- **PivotCharts:** Developed dual-axis visualizations to compare skill demand vs. pay.

### Deep Dive: The ETL Process
I used Power Query to bridge the gap between raw, messy data and an analysis-ready model.
- **Extraction:** Connected two disparate tables: data_jobs_all (Job Info) and data_job_skills (Detailed Skills).  
- **Transformation:** Sanitized the data by trimming whitespace, removing null salary entries, and normalizing text case to ensure "SQL" and "sql" were counted as one.

<img width="1919" height="879" alt="Screenshot 2026-04-28 120046" src="https://github.com/user-attachments/assets/bcf4d907-b42f-4654-bd64-8858ae2df715" />


### Data Modeling & DAX
Instead of standard averages, I used DAX to create dynamic measures. This ensures the analysis remains accurate even when filtered by region or role.  

<img width="799" height="647" alt="image" src="https://github.com/user-attachments/assets/5228664f-1be0-42de-8eeb-090bf35320da" />  

### The Median Salary Measure  
```
Median Salary := MEDIAN(data_jobs_all[salary_year_avg])
```

### Context-Aware US Salary Calculation
```
=CALCULATE(
    [Median Salary],
    data_jobs_all[job_country] = "United States"
)
```

## Key Strategic Insights
- **The "Skill Premium"**: There is a direct positive correlation between the number of specialized skills (e.g., Python + AWS) and salary. Generalist roles (Business Analyst) show a lower salary ceiling than specialized roles (Senior Data Engineer).

<img width="1426" height="476" alt="image" src="https://github.com/user-attachments/assets/b98dd5bb-e834-4321-85d1-8fd2bbbe9794" />  
<br>

- **The Linear Trend:** As indicated by the dotted trendline, the "floor" for data roles starts at approximately $85k (3.3 skills) for Business Analysts and scales to $147k (8.1 skills) for Senior Data Engineers.
- **The Senior Divergence:** Notice the gap between Senior Data Analysts and Senior Data Engineers. The Engineer role requires ~85% more skills (8.1 vs 4.4) but commands a ~$36k premium, highlighting the market value of technical complexity.
- **Efficiency Outlier:** Senior Data Scientists represent the most efficient "ROI" on skills. They command the highest median salary ($155k) despite requiring fewer total skills (5.3) than Data Engineers, suggesting that the type of skill (Advanced Modeling/AI) outweighs the quantity of skills.

- **Global Disparity**: Tech roles in the US command a 40-50% premium over international equivalents, particularly in high-demand cloud competencies.  
- **High-Value Skills**: While SQL and Python are the most frequent skills, specialized tools like Oracle and Cloud Architecture (AWS/Azure) are linked to the highest median salary brackets.



