-- ========================================================
-- Project: Manufacturing Quality Control & Defect Analysis
-- Purpose: Database Initialization and Initial Data Validation
-- Database System: MySQL
-- ========================================================


CREATE DATABASE ManufacturingQC;
USE ManufacturingQC;

CREATE TABLE DefectLogs (
    defect_id INT PRIMARY KEY,
    product_id INT,
    defect_type VARCHAR(50),
    defect_date VARCHAR(50),  -- We use VARCHAR temporary to ensure the CSV imports smoothly!
    defect_location VARCHAR(50),
    severity VARCHAR(30),
    inspection_method VARCHAR(50),
    repair_cost DECIMAL(10, 2)
);

SELECT 
    defect_type,
    COUNT(defect_id) AS number_of_defects,
    SUM(repair_cost) AS total_cost_incurred
FROM DefectLogs
GROUP BY defect_type
ORDER BY total_cost_incurred DESC;


SELECT * FROM DefectLogs;