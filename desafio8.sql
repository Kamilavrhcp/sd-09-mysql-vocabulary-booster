/* 8 - Exibe todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express" ou "United Package"
Exiba todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express" ou "United Package".

Use o banco w3schools como referência

Monte uma query que exiba 03 colunas:

A primeira deve possuir o alias "Nome de contato" e exibir o nome de contato da pessoa consumidora.

A segunda deve possuir o alias "Empresa que fez o envio" e exibir o nome da empresa que efetuou o envio do pedido.

A terceira deve possuir o alias "Data do pedido" e exibir a data que o pedido foi feito.

Seus resultados devem estar ordenados pelo nome de contato da pessoa consumidora em ordem alfabética.

Em caso de empate no nome de contato, ordene os resultados pelo nome da empresa que fez o envio do produto em ordem alfabética.

Se houver empresas com o mesmo nome, ordene os resultados pela data do pedido em ordem crescente. */

SELECT 
    (SELECT 
            ContactName
        FROM
            w3schools.customers
        WHERE
            CustomerID = w3schools.orders.CustomerID) AS 'Nome de contato',
    (SELECT 
            ShipperName
        FROM
            w3schools.shippers
        WHERE
            ShipperID = w3schools.orders.ShipperID) AS 'Empresa que fez o envio',
    OrderDate AS 'Data do pedido'
FROM
    w3schools.orders
WHERE
    ShipperID IN (1 , 2)
ORDER BY `Nome de contato` ASC , `Empresa que fez o envio` ASC , `Data do pedido` ASC;
