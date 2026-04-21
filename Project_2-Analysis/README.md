
# Project 2 Analysis

## Project Analysis
Why do some data roles pay significantly more than others? I analyzed a dataset of 2023 data science job postings to identify the correlation between skill density, geographic location, and compensation. This project moves beyond standard spreadsheets into Data Modeling and Advanced Analytics.

The final project can be accessed in [Data_Jobs_Analysisr.xlsx](Data_Jobs_Analysis.xlsx)


## Advanced Technical Stack
- Power Query (M): Automated the ETL (Extract, Transform, Load) process to clean and merge relational datasets.
- Power Pivot & Data Modeling: Created a star-schema relationship between job postings and skill requirements.
- DAX (Data Analysis Expressions): Wrote custom measures for accurate median salary calculations across global markets.
- PivotCharts: Developed dual-axis visualizations to compare skill demand vs. pay.

### Deep Dive: The ETL Process
I used Power Query to bridge the gap between raw, messy data and an analysis-ready model.
- Extraction: Connected two disparate tables: data_jobs_all (Job Info) and data_job_skills (Detailed Skills).  
- Transformation: Sanitized the data by trimming whitespace, removing null salary entries, and normalizing text case to ensure "SQL" and "sql" were counted as one.

### Data Modeling & DAX
Instead of standard averages, I used DAX to create dynamic measures. This ensures the analysis remains accurate even when filtered by region or role.

The Median Salary Measure
```
Median Salary := MEDIAN(data_jobs_all[salary_year_avg])
```

Context-Aware US Salary Calculation
```
=CALCULATE(
    [Median Salary],
    data_jobs_all[job_country] = "United States"
)
```

## Key Strategic Insights
- **The "Skill Premium"**: There is a direct positive correlation between the number of specialized skills (e.g., Python + AWS) and salary. Generalist roles (Business Analyst) show a lower salary ceiling than specialized roles (Senior Data Engineer).  
- **Global Disparity**: Tech roles in the US command a 40-50% premium over international equivalents, particularly in high-demand cloud competencies.  
- **High-Value Skills**: While SQL and Python are the most frequent skills, specialized tools like Oracle and Cloud Architecture (AWS/Azure) are linked to the highest median salary brackets.



