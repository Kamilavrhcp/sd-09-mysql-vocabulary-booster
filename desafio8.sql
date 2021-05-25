SELECT 
    CONT_NAME.ContactName AS 'Nome de contato',
    SHIP.ShipperName AS 'Empresa que fez o envio',
    ORDERS.OrderDate AS 'Data do pedido'
FROM
    w3schools.orders AS ORDERS
        INNER JOIN
    w3schools.shippers AS SHIP ON SHIP.ShipperID = ORDERS.ShipperID
        INNER JOIN
    w3schools.customers AS CONT_NAME ON CONT_NAME.CustomerID = ORDERS.CustomerID
WHERE
    SHIP.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY CONT_NAME.ContactName , SHIP.ShipperName , ORDERS.OrderDate;
