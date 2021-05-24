select ProductName as 'Produto', Price as 'Preço' from w3schools.products as pr
inner join w3schools.order_details as od on od.ProductID = pr.ProductID
where od.Quantity > 80 order by ProductName;
