SELECT 
    customer.ContactName AS 'Nome de contato',
    shipper.ShipperName AS 'Empresa que fez o envio',
    orders.OrderDate AS 'Data do pedido'
FROM
    `w3schools`.`customers` AS customer
        JOIN
    `w3schools`.`orders` AS orders ON orders.CustomerID = customer.CustomerID
        JOIN
    `w3schools`.`shippers` AS shipper ON shipper.ShipperID = orders.ShipperID
WHERE
    shipper.ShipperName LIKE 'Speedy Express'
        OR shipper.ShipperName LIKE 'United Package'
ORDER BY 1 ASC , 2 ASC , orders.OrderDate ASC;
