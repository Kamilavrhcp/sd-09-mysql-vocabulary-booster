-- 10 - Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00
SELECT
    p.ProductName AS Produto,
    MIN(Quantity) AS Mínima,
    MAX(Quantity) as Máxima,
    ROUND(AVG(Quantity), 2) AS Média
FROM
    w3schools.products AS p
        INNER JOIN
    w3schools.order_details AS o ON p.ProductID = o.ProductID
GROUP BY Produto
HAVING `Média` > 20
ORDER BY Média, Produto;
