(SELECT Country AS País FROM w3schools.customers ORDER BY Country ASC) 
UNION
(SELECT Country AS País FROM w3schools.suppliers ORDER BY Country ASC)
ORDER BY 1 ASC LIMIT 5;
