#Starts with B
SELECT * FROM people
WHERE Salesperson LIKE 'B%'	
	
#Ends with Y
SELECT * FROM people
WHERE Salesperson LIKE '%Y'		

#B is anywhere in their name	
SELECT Salesperson FROM people
WHERE Salesperson LIKE '%B%'		

#
SELECT * FROM sales
where Amount >= 10000



SELECT SaleDate,
	   Amount,
	   CASE WHEN Amount < 1000 then 'Below 1k'
            WHEN Amount < 5000 then 'Below 5k'
            WHEN Amount < 10000 then 'Below 10k'
	ELSE 'More than 10k'
    END as 'Amount_category'
       
FROM 
	SALES
    
    
    

		