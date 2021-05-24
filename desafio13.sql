SELECT
  PRO.`ProductName` AS `Produto`,
  PRO.`Price` AS `Preço`
FROM w3schools.products AS PRO
INNER JOIN w3schools.order_details AS OD ON OD.`ProductID` = PRO.`ProductID`
AND OD.`Quantity` > 80
ORDER BY `Produto`;
