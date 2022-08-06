IF OBJECT_ID('FootballData_2020') IS NOT NULL DROP TABLE FootballData_2020

CREATE TABLE FootballData_2020(
[Date] NVARCHAR(200),
Home_Team NVARCHAR(200),
Away_Team NVARCHAR(200),
Home_score INT,
Away_score INT,
Tournament NVARCHAR(200),
City NVARCHAR(200),
Country NVARCHAR(200),
Neutral NVARCHAR(200)
)





BULK INSERT FootballData_2020
FROM 'C:\Users\KDO\Desktop\Data analytics\archive\results.csv'
WITH (FORMAT='CSV');

--Commands
SELECT * FROM results
SELECT * FROM FootballData_2020
SELECT Home_Team,Home_score FROM FootballData_2020
Select * From FootballData_2020
 where Home_Team = 'England' 

 Select * FROM FootballData_2020
 WHERE Tournament <> 'Friendly'

 Select * FROM FootballData_2020
 WHERE COUNTRY NOT IN ('Russia','Scotland','England','Ireland','Wales')

  Select * FROM FootballData_2020
  WHERE City LIKE 'glas%'

  Select DISTINCT Tournament  FROM FootballData_2020 
  WHERE Tournament LIKE '%fifa%'

   Select * FROM FootballData_2020
   WHERE Home_score >= 10


