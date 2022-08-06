--Another Ecommerce Analytics 
SELECT TOP (1000) [UniqueID ]
      ,[ParcelID]
      ,[LandUse]
      ,[PropertyAddress]
      ,[SaleDate]
      ,[SalePrice]
      ,[LegalReference]
      ,[SoldAsVacant]
      ,[OwnerName]
      ,[OwnerAddress]
      ,[Acreage]
      ,[TaxDistrict]
      ,[LandValue]
      ,[BuildingValue]
      ,[TotalValue]
	  ,coalesce(yearbuilt,avg(yearbuilt) over()) as YearBuilt_
      ,coalesce(Bedrooms,avg(Bedrooms) over()) as Bedrooms_
	  ,coalesce(Fullbath,avg(Fullbath) over()) as FullBath_
	  ,coalesce(HalfBath,avg(HalfBath) over()) as HalfBath_
  FROM [Data Cleaning].[dbo].[Sheet1$]

  SELECT coalesce(yearbuilt,avg(yearbuilt) over()) as a
  FROM [Data Cleaning].[dbo].[Sheet1$]

--Convert column 'Bedrooms' Data type to int
 ALTER TABLE Sheet1$
 ALTER COLUMN Bedrooms int;

 --Convert column 'Fullbath' Data type to int
 ALTER TABLE Sheet1$
 ALTER COLUMN FullBath int;

 --Convert column 'HalfBath' Data type to int
 ALTER TABLE Sheet1$
 ALTER COLUMN HalfBath int;



