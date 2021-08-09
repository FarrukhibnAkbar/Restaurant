
insert into categories(name) values ('Milliy taomlar'), 
									('Yevropa taomlari'), 
									('Turk taomlari');


insert into types(name) values ('Quyuq ovqatlar'), 
						 	   ('Suyuq ovqotlar'), 
						 	   ('Ichimliklar'), 
						 	   ('Shirinliklar'), 
						 	   ('Salatlar');


insert into type_register(category_id,type_id) values (1, 1), (1, 2), (1, 3), (1, 5);
insert into type_register(category_id,type_id) values (2, 4);
insert into type_register(category_id, type_id) values(3, 3), (3, 4);


insert into tables(number) values(1), (2), (3), (4), (5), (6), (7), (8)


insert into components(name) values('Guruch'), ('Sabzi'), ('Go''sht'), 
('Kartoshka'), ('Piyoz'), ('Karam');


insert into products(name, price, type_register_id) values('Osh', 20000, 4), 
('Qozon kabob', 40000, 4), ('Turk salat', 15000, 3);


insert into ingredients(product_id, companent_id, weight) values(1, 1, 1000), 
(1, 2, 1000), (1, 3, 1000), (1, 5, 100);
insert into ingredients(product_id, companent_id, weight) values(2, 3, 1200),
(2, 4, 600), (2, 5, 150);
insert into ingredients(product_id, companent_id, weight) values(3, 6, 200), 
(3, 5, 100), (3, 3, 150);


insert into orders(table_id, closed_at) values(1, '2021-08-06 11:00'::timestamp);
insert into orders(table_id, closed_at) values(2, '2021-08-06 11:30'::timestamp);
insert into orders(table_id, closed_at) values(3, '2021-08-06 15:00'::timestamp);
insert into orders(table_id, closed_at) values(4, '2021-08-06 12:00'::timestamp);
insert into orders(table_id, closed_at) values(5, '2021-08-06 09:00'::timestamp);
insert into orders(table_id, closed_at) values(6, '2021-08-06 16:00'::timestamp);
insert into orders(table_id, closed_at) values(7, '2021-08-06 13:00'::timestamp);
insert into orders(table_id, closed_at) values(8, '2021-08-06 13:30'::timestamp);


insert into order_details(quantity, order_id, product_id) values(2, 1, 1);
insert into order_details(quantity, order_id, product_id) values(2, 1, 1);






select                     
	group by p.name        
	group by companent_id  
from                          
	ingredients as i        
natural join products as p 
where                      
	i.ingredient_id = 1    
;	                       



select
	t.name
from
	type_register as r
natural join types as t
where
	r.category_id = 1
;

