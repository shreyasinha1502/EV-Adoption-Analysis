CREATE DATABASE U_S_Electric_Vehicle_Adoption_Analysis;

USE U_S_Electric_Vehicle_Adoption_Analysis;
SHOW TABLES;
SELECT * FROM ev_trends LIMIT 5;

SELECT COUNT(*) AS total_rows FROM ev_trends;

DESCRIBE ev_trends;

SELECT * FROM ev_trends LIMIT 10;

SELECT 
  AVG(`Electric Range`) AS avg_value,
  MIN(`Electric Range`) AS min_value,
  MAX(`Electric Range`) AS max_value
FROM ev_trends;

SELECT `Electric Vehicle Type`, COUNT(*) AS count
FROM ev_trends
GROUP BY `Electric Vehicle Type`
ORDER BY count DESC;

SELECT 
  SUM(CASE WHEN `Electric Range` IS NULL THEN 1 ELSE 0 END) AS electric_range_nulls,
  SUM(CASE WHEN `Electric Vehicle Type` IS NULL THEN 1 ELSE 0 END) AS vehicle_type_nulls
FROM ev_trends;


