#JOINS
SELECT * FROM sales
SELECT * FROM people
SELECT * FROM products

#Connect SALES table to PEOPLE table
SELECT s.SaleDate,s.amount, s.SPID,p.Salesperson FROM sales s
JOIN people p
ON s.SPID = p.SPID

#Connect SALES table to PRODUCT table
SELECT s.PID,pr.PID,s.amount,pr.product FROM SALES s
LEFT JOIN PRODUCTS pr
ON s.PID = pr.PID

#Connect SALES,PRODUCT,PEOPLE
SELECT s.saledate,p.team,s.SPID,p.Salesperson,s.amount,pr.product,s.pid FROM SALES s
JOIN PRODUCTS pr ON s.PID = pr.PID
JOIN PEOPLE p  ON s.SPID = p.SPID
WHERE p.team = '' AND s.amount < 500

#Show sales below 500 on Team Delish in New Zealand and India 
SELECT s.saledate,p.team,s.SPID,p.Salesperson,s.amount,pr.product,s.pid,g.geoID,g.geo FROM SALES s
JOIN PRODUCTS pr ON s.PID = pr.PID
JOIN PEOPLE p  ON s.SPID = p.SPID
JOIN GEO g ON s.geoID = g.geoID
WHERE g.geo in ('New Zealand' ,'India') AND
s.amount < 500 AND team = 'Delish'
ORDER BY s.saledate asc








