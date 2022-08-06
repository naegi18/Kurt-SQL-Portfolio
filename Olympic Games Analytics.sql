/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  
	   [ID]
      ,[Name] AS 'Competitor Name'
      ,CASE WHEN [Sex] = 'M' THEN 'MALE' ELSE 'FEMALE'
	   END AS SEX
	   ,[Age]
      ,CASE WHEN [Age] < 18 THEN 'UNDER 18'
			WHEN [Age] BETWEEN 18 AND 25 THEN '18-25'
			WHEN [Age] BETWEEN 25 AND 30 THEN '25-30'
			WHEN [Age] > 30 THEN 'OVER 30'
		END AS [Age Grouping]
      ,[Height]
      ,[Weight]
      ,[NOC] AS 'Nation Code'
      --,CHARINDEX(' ',Games)-1 AS 'Example 1'
	  --,CHARINDEX(' ', REVERSE(Games))-1 AS 'Example 2'
	  --,REVERSE(GAMES) as reversed
	  ,LEFT(Games, CHARINDEX(' ',Games)-1) AS 'Year'
	  ,Right(Games,CHARINDEX(' ', REVERSE(Games))-1) AS 'Season'
	  --,[Games]
      --,[City]
      ,[Sport]
      ,[Event]
      ,CASE WHEN MEDAL = 'NA' THEN 'NOT REGISTERED' ELSE MEDAL END AS MEDAL
  FROM [olympic_games].[dbo].[athletes_event_results]
  WHERE Right(Games,CHARINDEX(' ', REVERSE(Games))-1) = 'SUMMER'