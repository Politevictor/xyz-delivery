SELECT 
	O.CustomerID,
    C.FirstName,
    C.PhoneNo,
    C. Address,
	COUNT(O.OrderID) AS 'OrdersCount',
    sum( O.Amount) AS 'groupAmount',
    CASE
		WHEN COUNT(O.OrderID) >=200 THEN 'fist class'
        WHEN COUNT(O.OrderID) >=50 THEN 'middle class'
        ELSE 'lower class '
	END AS customers_class
FROM orders_csv AS O
JOIN customers_csv AS C
	ON O.CustomerID = C.CustomerID
GROUP BY 
	O.CustomerID,
	C.FirstName,
    C.PhoneNo,
    C. Address
 ORDER BY COUNT(*)DESC
 ;
