# U.S. Electric Vehicle (EV) Adoption Analysis

- **Author:** Niranjan
- **Data Set uploaded:** 19 June 2025  
- **Date:** 22 June 2025  
- **Project Type:** Real-time, end-to-end Data Analytics project  
- **Dataset:** Real-world U.S. EV adoption data collected from official sources

---

## Project Workflow & Steps

This section outlines the complete end-to-end workflow demonstrating professional data handling, analysis, and insights generation:

### 1. Data Acquisition

- Acquired the **`EvolutionInsight_US_EV_Trends.csv`** dataset with real-time EV adoption data across U.S. regions.  
- Dataset securely stored in a structured local folder for easy access and reproducibility.

### 2. Database Setup & Connection

- Created a MySQL database named **`U_S_Electric_Vehicle_Adoption_Analysis`** to organize and manage the data efficiently.  
- Used MySQL Workbench to create and validate database schema and tables.

### 3. Data Loading via Python

- Leveraged **Python** libraries (`pandas`, `sqlalchemy`, `pymysql`) for robust data ingestion.  
- Loaded the CSV into a pandas DataFrame, cleaned column names for compatibility.  
- Established connection to MySQL using SQLAlchemy's `create_engine`.  
- Uploaded cleaned DataFrame into MySQL table **`ev_trends_data`**.  
- Verified successful data upload via SQL queries in MySQL Workbench.

### 4. Data Exploration & Validation in MySQL

- Executed comprehensive SQL queries for:  
  - Counting rows and verifying data completeness.  
  - Checking data types and column integrity.  
  - Aggregating statistics (avg, min, max) on numeric fields.  
  - Counting distinct categorical values and checking missing data.  
- Ensured dataset quality and reliability for analysis.

### 5. Jupyter Notebook for Analysis

- Developed a Jupyter Notebook for hands-on exploratory data analysis.  
- Connected directly to MySQL database to pull data dynamically.  
- Conducted detailed profiling with pandas (`.describe()`, `.info()`).  
- Created visualizations and categorical summaries to extract insights.  
- Documented process clearly to support reproducibility and presentation.

### 6. Insights & Reporting

- Analyzed geographic EV adoption hotspots and incentive effectiveness.  
- Identified vehicle price and range trends impacting consumer behavior.  
- Delivered strategic recommendations to guide infrastructure and policy decisions.  
- Compiled clean, well-commented notebooks to enable future scalability.

---

## Project Background

This capstone project applies a full ETL pipeline using Python and MySQL to analyze real-world U.S. electric vehicle adoption data.  
Insights from this work assist state transportation agencies and energy utilities in:

- **Planning EV infrastructure deployment** in high adoption areas.  
- **Evaluating Clean Alternative Fuel Vehicle (CAFV) incentives** to increase accessibility.  
- **Understanding consumer behavior** through EV range and price trend analysis.

The entire data cleaning, loading, and analysis is reproducible, documented, and designed for scalability.

---

## Data Structure & Initial Checks

Key dataset columns include:

- **County, City, State:** Geographic data  
- **Year, Make, Model:** Vehicle manufacturing info  
- **EV_Type:** Battery Electric Vehicle (BEV) or Plug-in Hybrid (PHEV)  
- **CAFV_Eligibility:** Incentive eligibility  
- **EV_Range:** Electric range in miles  
- **MSRP:** Manufacturer Suggested Retail Price  
- **Vehicle_Age:** Calculated from model year  
- **Price_Bracket:** Budget, Mid-Range, Premium, Luxury  
- **EV_Category:** Range category (Short, Moderate, Long, Ultra)  

Initial profiling ensured clean, accurate, and relevant data for analysis.

---

## Executive Summary

- EV adoption is concentrated in cities such as **Seattle, Everett, and Kent**—key locations for infrastructure focus.  
- **CAFV incentives mostly favor premium EV buyers,** highlighting a gap in affordable EV support.  
- **Battery Electric Vehicles (BEVs)** dominate registrations, especially in higher price brackets.  
- Range improvements have reduced “range anxiety,” facilitating adoption of longer-range models.  
- Brand trends show Tesla dominating luxury segments; Kia, Chrysler, and Subaru cater more to budget buyers.

---

## Recommendations

- **Expand charging infrastructure** in EV-dense urban areas.  
- **Reform CAFV policies** to include more affordable EV models.  
- **Support manufacturers** producing budget-friendly long-range EVs.  
- **Tailor state-level adoption strategies** based on local EV trends.

---

## Assumptions & Caveats

- Future vehicle model years excluded to maintain relevance.  
- Geolocation based on city/state may introduce minor spatial error.  
- Incentive impacts inferred, not causally proven.  
- Data cleaned for duplicates and missing entries to ensure accuracy.

---

## 📬 Contact & Portfolio

For collaboration or inquiries:  

- **Email:** [niranjan991100@gmail.com](mailto:niranjan991100@gmail.com)  
- **LinkedIn:** [https://www.linkedin.com/in/niranjan-k-a83517229/](https://www.linkedin.com/in/niranjan-k-a83517229/)  
- **Portfolio:** [https://niranjan910.github.io/NiranjanDataAnalystPortfolio.github.io/](https://niranjan910.github.io/NiranjanDataAnalystPortfolio.github.io/)



