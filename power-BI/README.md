# Data Jobs Dashboard

<img width="1366" height="768" alt="Dashboard Preview" src="dashboard-preview.png" />

## Project Overview

This project explores the data job market through an interactive Power BI dashboard built using a dataset of data job postings.

The goal was to answer questions that many aspiring data professionals have:

* What data jobs pay the most?
* What skills are most in demand?
* Do jobs that require more skills pay more?
* Which skills are associated with specific roles?
* How do salaries vary across different jobs and locations?

The final dashboard allows users to filter and explore job market trends to better understand where to focus their learning and career development.

## Dashboard Features

The dashboard includes:

* Job count and salary KPI cards
* Top-paying data roles
* Most in-demand technical skills
* Skills-per-job analysis
* Median yearly and hourly salary metrics
* Interactive filtering by job title and country
* Dynamic visualizations and drill-down capabilities

## Tools Used

* **Power BI**
* **Power Query**
* **DAX**
* **Data Modeling**

## Data Preparation

Before building the dashboard, I cleaned and transformed the dataset using Power Query. This included handling missing values, formatting text fields, filtering unnecessary data, and preparing the dataset for analysis.

## Data Modeling

To support flexible filtering and reporting, I built a star schema data model inside Power BI. This allowed the dashboard to efficiently connect job postings, skills, salary information, and locations.

<img width="900" alt="Data Model" src="data-model.png" />

## DAX Measures

Several DAX measures were created to calculate key metrics used throughout the dashboard, including:

* Median Yearly Salary
* Median Hourly Salary
* Job Counts
* Skills Per Job

These measures update dynamically based on user selections and filters.

## Key Takeaways

A few interesting trends stood out while building this project:

* Python and SQL remain the most frequently requested skills across data roles.
* Senior Data Scientist, Machine Learning Engineer, and Senior Data Engineer positions command some of the highest salaries.
* Specialized tools such as AWS, Spark, and Databricks appear less frequently than Python or SQL but are often associated with higher-paying positions.
* Skill demand and compensation do not always move together, highlighting the importance of skill specialization rather than simply learning more tools.

## What This Project Demonstrates

This project helped me practice:

* Data cleaning and transformation
* Star schema data modeling
* DAX measure creation
* Interactive dashboard design
* Business intelligence reporting
* Communicating insights through data visualization

Overall, this project demonstrates an end-to-end analytics workflow, from raw data preparation to interactive reporting and insight generation.

