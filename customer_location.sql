SELECT 
	Address,
    COUNT(Address) AS location_count
 
FROM customers_csv 

GROUP BY
	Address
    
ORDER BY 
	COUNT(Address) DESC

;