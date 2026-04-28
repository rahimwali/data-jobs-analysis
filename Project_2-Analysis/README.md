
# Project 2 Analysis
<img width="1357" height="359" alt="Screenshot 2026-04-28 121245" src="https://github.com/user-attachments/assets/898fdf87-34bd-4e9e-a535-4e28f8104278" />  


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
### 1. The Skill Premium & Role Specialization
This scatter plot identifies the correlation between technical complexity and financial return across major data roles.

- **The Linear Trend:** The market sets a clear "floor" at $85k (3.3 skills) for generalist roles like Business Analysts, scaling linearly to $147k (8.1 skills) for Senior Data Engineers as technical requirements increase.
- **The Senior Divergence:** Senior Data Engineers require ~85% more skills than Senior Data Analysts, but command a $36k premium, highlighting the massive market value placed on infrastructure and technical complexity.
- **The Efficiency Outlier:** Senior Data Scientists represent the highest "ROI" on skills. They command the top median salary ($155k) despite requiring fewer total skills (5.3) than engineers, proving that skill type (AI/Modeling) often outweighs skill quantity.
<img width="1426" height="476" alt="image" src="https://github.com/user-attachments/assets/b98dd5bb-e834-4321-85d1-8fd2bbbe9794" />  
<br>

### 2. Market Demand vs. Salary Drivers
By comparing skill frequency against median pay, we can distinguish between "entry-stakes" skills and true "salary drivers."

<img width="1395" height="545" alt="image" src="https://github.com/user-attachments/assets/b5468a6e-72cd-4c94-9844-41ea2f3aaa52" /> 
<br>

- **Volume vs. Value:** While SQL and Python are the most frequent requirements (>50% likelihood), they sit in the middle of the salary bracket. They are essential for entry, but not enough to reach the highest pay tiers.
- **High-Value Specialization:** Specialized tools like Spark and AWS appear in only ~20% of postings but are linked to the highest median salary brackets ($135k-$140k).
- **Global Disparity:** Utilizing the dashboard's geographic slicers reveals a 40-50% US Premium over international equivalents. This gap is most aggressive in Cloud Architecture (AWS/Azure), where US-based roles see a significantly higher ceiling for the same skill density.



