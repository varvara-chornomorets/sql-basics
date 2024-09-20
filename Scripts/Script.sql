use flower_shop;
-- most ordered flowers per customer
select c.name, f.name, sum(bf.quantity) as flower_count from flowers f
inner join bouquets2flowers bf  on bf.flower_id = f.id
inner join bouquets b on b.id = bf.bouquet_id 
inner join orders o on o.bouquet_id = b.id 
inner join customers c on c.id = o.customer_id
where o.order_date >= '2024-06-01' and o.order_date <='2024-08-31'
group by c.id, f.id 
order by c.id, flower_count DESC;