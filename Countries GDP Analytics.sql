--Step 1: Create table
CREATE TABLE Raw_Data_GDP (

    DEMO_IND NVARCHAR(200),
    Indicator NVARCHAR(200),
    [Location] NVARCHAR(200),
    Country NVARCHAR(200),
    [Time] NVARCHAR(200),
    [Value] FLOAT,
    [Flag Codes] NVARCHAR(200),
    Flags NVARCHAR(200)  
);

Select * from Raw_Data_GDP

--Step 2: Import Data from local file to Original Table Raw_Data_GDP
BULK INSERT [Raw_Data_GDP]
FROM 'C:\Users\KDO\Documents\GitHub\Power-BI-raw-data\SQL to Power BI\gdp_raw_data.csv'
WITH ( FORMAT = 'CSV');


---Create VIEW GDP_Excel_Input to serve as virtual table
CREATE VIEW GDP_Excel_Input AS

SELECT a.*,b.GDP_Per_Capita FROM 

(Select Country,Indicator, [Time] as Year_No,[Value] as GDP_VALUE
FROM Raw_Data_GDP
WHERE INDICATOR = 'GDP (current US$)') a
LEFT JOIN 
(Select Country,Indicator,[Time] as Year_No,[Value] as GDP_PER_CAPITA
FROM Raw_Data_GDP
where indicator = 'GDP per capita (current US$)') b
on a.country = b.country and a.Year_No = b.Year_No

Select * from GDP_Excel_Input;
--------------------------------------

---Create procedure GDP_Excel_Input_Monthly for ready execution.
CREATE PROCEDURE GDP_Excel_Input_Monthly AS

IF OBJECT_ID('Raw_Data_GDP') IS NOT NULL DROP TABLE Raw_Data_GDP
--Procedure for exec
CREATE TABLE Raw_Data_GDP
(DEMO_IND NVARCHAR(200),
 Indicator NVARCHAR(200),
 [LOCATION] NVARCHAR(200),
 Country NVARCHAR(200),
 [TIME] NVARCHAR(200),
 [VALUE] FLOAT,
 [Flag Codes] NVARCHAR(200),
 Flags NVARCHAR(200)
 )

--Step 2: IMPORT DATA

BULK INSERT Raw_Data_GDP
FROM 'C:\Users\KDO\Desktop\Data analytics\Datasets\gdp_raw_data.csv'
WITH (FORMAT = 'CSV')


EXEC GDP_Excel_Input_Monthly;










