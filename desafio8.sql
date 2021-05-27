SELECT
    c.contactName AS `Nome de contato`,
    s.shipperName AS `Empresa que fez o envio`,
    o.orderDate AS `Data do pedido`
FROM
    w3schools.customers AS c
        INNER JOIN
    w3schools.orders AS o ON o.customerID = c.customerID
        INNER JOIN
    w3schools.shippers AS s ON s.shipperID = o.shipperID
WHERE
    s.shipperName IN ('Speedy Express' , 'United Package')
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
