delimiter $$
create trigger trigger_orders_insert
before insert on w3schools.orders
for each row
begin
set new.OrderDate = now();
end $$
