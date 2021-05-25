SELECT 
    t2.ContactName AS 'Nome de contato',
    t3.ShipperName AS 'Empresa que fez o envio',
    t1.OrderDate AS 'Data do pedido'
FROM
    w3schools.orders AS t1
        INNER JOIN
    w3schools.customers AS t2 ON t1.CustomerID = t2.CUstomerID
        INNER JOIN
    w3schools.shippers AS t3 ON t1.ShipperID = t3.ShipperID
WHERE
    t1.ShipperID IN (1 , 2)
ORDER BY 1 ASC , 2 ASC , 3 ASC;
