SELECT
  p.ProductName as 'Produto',
  p.Price as 'Preço'
FROM
  w3schools.order_details od
  INNER JOIN w3schools.products p ON od.ProductID = p.ProductID
WHERE od.Quantity > 80
ORDER BY `Produto` ASC;
