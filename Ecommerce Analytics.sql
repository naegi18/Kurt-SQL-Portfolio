SELECT * from Sheet1$


SELECT a.UniqueID, a.ParcelID,a.PropertyAddress
,b.UniqueID,b.ParcelID,b.OwnerAddress
from Sheet1$ a 
join Sheet1$ b
on a.ParcelID = b.ParcelID
where a.UniqueID <> b.UniqueID
and
a.ParcelID = b.ParcelID


SELECT a.ParcelID,a.PropertyAddress,b.ParcelID,b.OwnerAddress,
ISNULL(b.OwnerAddress,a.PropertyAddress) as OwnerAddressModified
from Sheet1$ a 
join Sheet1$ b
on a.ParcelID = b.ParcelID
where a.UniqueID <> b.UniqueID
and
a.ParcelID = b.ParcelID

--Add new column
Alter table Sheet1$ add NewCol nvarchar(255)

--Update OwnerAddress 
Update a SET OwnerAddress = ISNULL(b.OwnerAddress,a.PropertyAddress)
from Sheet1$ a 
join Sheet1$ b
on a.ParcelID = b.ParcelID
where a.UniqueID <> b.UniqueID
and
a.ParcelID = b.ParcelID


---OwnerName
SELECT a.uniqueID,a.ParcelID,a.OwnerName,b.UniqueID,b.ParcelID,b.OwnerName,ISNULL(a.OwnerName,b.OwnerName) as new
from Sheet1$ a 
join Sheet1$ b
on a.ParcelID = b.parcelID
where a.UniqueID <> b.UniqueID
and
a.ParcelID = b.ParcelID







