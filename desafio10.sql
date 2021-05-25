SELECT
    p.productname AS Produto,
    MIN(od.quantity) AS Mínima,
    MAX(od.quantity) AS Máxima,
    ROUND(AVG(Quantity), 2) AS Média
FROM
    w3schools.products AS p
        INNER JOIN
    w3schools.order_details AS od ON p.productid = od.productid
GROUP BY od.productid
HAVING Média > 20
ORDER BY Média , Produto;
