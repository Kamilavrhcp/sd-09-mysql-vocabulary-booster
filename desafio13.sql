SELECT 
  p.ProductName 'Produto',
  p.Price 'Preço'
FROM w3schools.products AS p
WHERE EXISTS(
  SELECT 
    * 
  FROM w3schools.order_details AS o
    WHERE
      o.ProductID = p.ProductID
    HAVING o.Quantity > 80
)
ORDER BY `Produto`;
