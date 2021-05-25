/* Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade
 nos pedidos registrados acima de 20.00 */
 
 SELECT 
    prod.ProductName AS `Produto`,
    MIN(od.Quantity) AS Mínima,
    MAX(od.Quantity) AS Máxima,
    ROUND(AVG(od.Quantity), 2) AS Média
FROM
    w3schools.order_details AS od
        INNER JOIN
    w3schools.products AS prod ON prod.ProductID = od.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média ASC , Produto ASC;
