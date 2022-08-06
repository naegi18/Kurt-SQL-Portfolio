--Elections Analytics Query
SELECT TOP (1000) [year_of_elections] as year
      ,[date_of_elections] as date
      ,[has_won]
      ,[manner_of_winning]
      ,[name]
      ,[party]
      ,[birthday]
      ,[age_on_elections]
      ,[sex]
      ,[city]
      ,[province]
      ,[region]
      ,[island]
      ,[birth_order]
      ,[sibling_no]
      ,[alma_mater]
      ,[hi_educ_attain]
      ,[last_college_attended]
      ,[degree_obtained]
      ,[last_job]
      ,[no_of_govt_positions_served]
      ,[served_in_gov't]
      ,[years_of_service]
	  ,coalesce (years_of_service,avg(years_of_service) over()) as yearsofservice
      ,[is_married]
      ,[F25]
      ,[F26]
  FROM [Elections].[dbo].[candidates]


--Show Distinct names of candidates

Select DISTINCT [name]
from Elections.dbo.candidates


--Show count of candidates

Select COUNT(DISTINCT[name])
from Elections.dbo.candidates

  
--Filling in NULL values for 'age_on_elections' field.

SELECT age_on_elections
		,coalesce (age_on_elections,avg(age_on_elections) over()) as newage
from elections.dbo.candidates


---FILLING IN NULL values for 'years_of_service' field.

SELECT years_of_service
		,coalesce (years_of_service,avg(years_of_service) over()) as newyears
from elections.dbo.candidates


--Update null entries of 'years_of_service' field by the average through coalesce() function.'

UPDATE elections.dbo.candidates 
SET years_of_service = coalesce (years_of_service,avg(years_of_service) over())



