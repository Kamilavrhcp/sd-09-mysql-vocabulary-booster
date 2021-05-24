SELECT
  PRO.`ProductName` AS `Produto`,
  MIN(O.Quantity) AS `Mínima`,
  MAX(O.Quantity) AS `Máxima`,
  ROUND(AVG(O.Quantity), 2) AS `Média`
FROM w3schools.order_details AS O
INNER JOIN w3schools.products AS PRO ON PRO.ProductID = O.ProductID
GROUP BY PRO.`ProductName`
HAVING AVG(O.Quantity) > 20.00
ORDER BY `Média` ASC, `Produto` ASC;
