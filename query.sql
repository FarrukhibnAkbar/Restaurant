-- Nechta osh zakaz qilingani

select
  p.name,
  sum(od.quantity)
from orders as o
join products as p on p.product_id = 1
join order_details as od on (select o.created_at::timestamp::date) = (select '2021-08-09')::date and od.order_id = o.order_id and od.product_id = p.product_id
group by p.name
;


select
	p.name,
	count(order_id)
from order_details
natural join products as p
group by p.name
;

select
	
from
	types
natural join products as p
natural join order_details as o
;

select
	t.name
from
	type_register as r
natural join types as t
where
	r.category_id = 1
;

--eng ko'p taom sotilgan vaqt

select
	*
from
	orders
;

-------------------------------------------


create function fn(x decimal(16, 2)) returns varchar language plpgsql as
$$

	declare
		i int;
		store record;

	begin

		for i in select p.product_id from products as p loop
			if x > select p.price from products as p where p.product_id = i then
				select
				 	p.name into store,
				 	(x - p.price) into x
				from products as p
				where p.product_id = i;

			end if;

			raise info '%', store;
		end loop;
	end;
$$;





































