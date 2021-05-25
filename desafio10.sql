SELECT 
    PRODUCT.ProductName AS 'Produto',
    ROUND(MIN(ORDER_DETAILS.Quantity), 2) AS 'Mínima',
    ROUND(MAX(ORDER_DETAILS.Quantity), 2) AS 'Máxima',
    ROUND(AVG(ORDER_DETAILS.Quantity), 2) AS 'Média'
FROM
    w3schools.products AS PRODUCT
        INNER JOIN
    w3schools.order_details AS ORDER_DETAILS ON ORDER_DETAILS.ProductID = PRODUCT.ProductID
GROUP BY PRODUCT.ProductName
HAVING ROUND(AVG(ORDER_DETAILS.Quantity), 2) > 20
ORDER BY AVG(ORDER_DETAILS.Quantity) , PRODUCT.ProductName;
