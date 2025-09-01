/*
============================================================
DATA EXPLORATION - U.S. Electric Vehicle (EV) Trends
Author: Niranjan
Date: 22 June 2025
Description: This script contains SQL queries to explore
the EV trends dataset loaded into MySQL for analysis.
============================================================
*/

-- 1. Preview the dataset (first 10 rows)
SELECT *
FROM ev_trends_data
LIMIT 10;

-- 2. Check total number of records
SELECT COUNT(*) AS total_records
FROM ev_trends_data;

-- 3. Inspect column names and data types
SHOW COLUMNS FROM ev_trends_data;

-- 4. Check for missing values in each column
SELECT 
    SUM(CASE WHEN County IS NULL OR County = '' THEN 1 ELSE 0 END) AS missing_county,
    SUM(CASE WHEN City IS NULL OR City = '' THEN 1 ELSE 0 END) AS missing_city,
    SUM(CASE WHEN State IS NULL OR State = '' THEN 1 ELSE 0 END) AS missing_state,
    SUM(CASE WHEN Year IS NULL THEN 1 ELSE 0 END) AS missing_year,
    SUM(CASE WHEN Make IS NULL OR Make = '' THEN 1 ELSE 0 END) AS missing_make,
    SUM(CASE WHEN Model IS NULL OR Model = '' THEN 1 ELSE 0 END) AS missing_model,
    SUM(CASE WHEN EV_Type IS NULL OR EV_Type = '' THEN 1 ELSE 0 END) AS missing_ev_type,
    SUM(CASE WHEN CAFV_Eligibility IS NULL OR CAFV_Eligibility = '' THEN 1 ELSE 0 END) AS missing_cafv,
    SUM(CASE WHEN EV_Range IS NULL THEN 1 ELSE 0 END) AS missing_ev_range,
    SUM(CASE WHEN MSRP IS NULL THEN 1 ELSE 0 END) AS missing_msrp
FROM ev_trends_data;

-- 5. Distinct EV types
SELECT DISTINCT EV_Type
FROM ev_trends_data;

-- 6. Count of vehicles by EV type
SELECT EV_Type, COUNT(*) AS count
FROM ev_trends_data
GROUP BY EV_Type
ORDER BY count DESC;

-- 7. Count of vehicles by manufacturer
SELECT Make, COUNT(*) AS count
FROM ev_trends_data
GROUP BY Make
ORDER BY count DESC;

-- 8. Count of vehicles by model year
SELECT Year, COUNT(*) AS count
FROM ev_trends_data
GROUP BY Year
ORDER BY Year ASC;

-- 9. Count by CAFV eligibility status
SELECT CAFV_Eligibility, COUNT(*) AS count
FROM ev_trends_data
GROUP BY CAFV_Eligibility
ORDER BY count DESC;

-- 10. Basic EV range statistics
SELECT 
    AVG(EV_Range) AS avg_range,
    MIN(EV_Range) AS min_range,
    MAX(EV_Range) AS max_range
FROM ev_trends_data;

-- 11. Average EV range by EV type
SELECT 
    EV_Type,
    AVG(EV_Range) AS avg_range
FROM ev_trends_data
GROUP BY EV_Type
ORDER BY avg_range DESC;

-- 12. Average MSRP by EV type
SELECT 
    EV_Type,
    ROUND(AVG(MSRP), 2) AS avg_msrp
FROM ev_trends_data
GROUP BY EV_Type
ORDER BY avg_msrp DESC;

-- 13. Top 10 cities with the most EV registrations
SELECT 
    City, 
    COUNT(*) AS count
FROM ev_trends_data
GROUP BY City
ORDER BY count DESC
LIMIT 10;

-- 14. Top 10 counties with the most EV registrations
SELECT 
    County, 
    COUNT(*) AS count
FROM ev_trends_data
GROUP BY County
ORDER BY count DESC
LIMIT 10;

-- 15. Vehicles by price bracket
SELECT Price_Bracket, COUNT(*) AS count
FROM ev_trends_data
GROUP BY Price_Bracket
ORDER BY count DESC;

-- 16. Vehicles by EV category (range classification)
SELECT EV_Category, COUNT(*) AS count
FROM ev_trends_data
GROUP BY EV_Category
ORDER BY count DESC;

-- 17. Average MSRP by manufacturer (top 10)
SELECT 
    Make, 
    ROUND(AVG(MSRP), 2) AS avg_msrp
FROM ev_trends_data
GROUP BY Make
ORDER BY avg_msrp DESC
LIMIT 10;

-- 18. Average range by manufacturer (top 10)
SELECT 
    Make, 
    ROUND(AVG(EV_Range), 2) AS avg_range
FROM ev_trends_data
GROUP BY Make
ORDER BY avg_range DESC
LIMIT 10;

-- 19. Count of vehicles by vehicle age
SELECT Vehicle_Age, COUNT(*) AS count
FROM ev_trends_data
GROUP BY Vehicle_Age
ORDER BY Vehicle_Age ASC;

-- 20. Year-wise average EV range
SELECT 
    Year, 
    ROUND(AVG(EV_Range), 2) AS avg_range
FROM ev_trends_data
GROUP BY Year
ORDER BY Year ASC;

-- 21. Year-wise average MSRP
SELECT 
    Year, 
    ROUND(AVG(MSRP), 2) AS avg_msrp
FROM ev_trends_data
GROUP BY Year
ORDER BY Year ASC;

-- 22. EV adoption trend by year and EV type
SELECT 
    Year, 
    EV_Type, 
    COUNT(*) AS count
FROM ev_trends_data
GROUP BY Year, EV_Type
ORDER BY Year ASC, count DESC;
