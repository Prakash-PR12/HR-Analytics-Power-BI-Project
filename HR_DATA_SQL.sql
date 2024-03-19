CREATE DATABASE Hr_analysis_db;
use hr_analysis_db;
CREATE TABLE hrdata (
    emp_no INT PRIMARY KEY,
    gender VARCHAR(10) NOT NULL,
    marital_status VARCHAR(20),
    age_band VARCHAR(10),
    age INT,
    department VARCHAR(30),
    education VARCHAR(30),
    education_field VARCHAR(30),
    job_role VARCHAR(30),
    business_travel VARCHAR(20),
    employee_count INT,
    attrition VARCHAR(10),
    attrition_label VARCHAR(20),
    job_satisfaction INT,
    active_employee INT
);

LOAD DATA INFILE -- This code for loading the csv file dat into our table 
"C:\Users\HP\Downloads\hrdata.csv"
INTO TABLE hrdata FIELDS TERMINATED BY ',';
 
 -- after running the above code got an erorr that fle path is not safe 
SELECT @@secure_file_priv; -- to check the safe path 

-- Check if local infile loading is enabled:
show global variables like 
'local_infile';
-- If it's 'ON', you can use LOAD DATA INFILE to load local files.
-- If it's 'OFF', you'll need to enable it in the MySQL server configuration file.


-- Enables LOCAL INFILE functionality for importing data from server-side files
set global local_infile=true;
 
 
 -- Load data from the CSV file into the hrdata table
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\hrdata.csv'
INTO TABLE hrdata
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

 

