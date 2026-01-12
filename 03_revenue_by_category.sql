/*
Shows total revenue by product category.
Used to evaluate category-level performance.
*/
SELECT
	P.CATEGORY,
	ROUND(SUM(OI.QUANTITY * P.PRICE), 2) AS TOTAL_REVENUE
FROM
	ORDER_ITEMS OI
	JOIN PRODUCTS P ON OI.PRODUCT_ID = P.PRODUCT_ID
GROUP BY
	P.CATEGORY
ORDER BY
	TOTAL_REVENUE DESC