create table components(
	companent_id serial not null primary key,
	name varchar(32) not null
);

comment on table components is 'Xom ashyolar';

create table categories (
	category_id serial not null primary key,
	name varchar(64) not null
);

comment on table categories is 'Kategoriy';

create table types (
	type_id serial not null primary key,
	name varchar(24) not null
);

comment on table types is 'Mahsulot turi';


create table type_register (
	type_register_id serial not null primary key,
	category_id int not null references categories(category_id),
	type_id int not null references types(type_id)
);

comment on table type_register is 
'Qaysi kategoriyada qanday turdagi maxsulotlar borligi';


create table tables (
	table_id serial not null primary key,
	number int2 not null
);	

comment on table tables is 'Stollar';

create table products (
	product_id serial not null primary key,
	name varchar(64) not null,  
	price decimal(16, 2) not null,
	type_register_id int not null references type_register(type_register_id) 
);

comment on table products is 'Tayyor mahsulotlar';

create table ingredients (
	ingredient_id serial not null primary key,
	product_id int not null references products(product_id),
	companent_id int not null references components(companent_id),
	weight int2 not null
);

comment on table ingredients is 'Retseptlar';

create table orders (
	order_id serial not null primary key,
	table_id not null references tables(table_id),
	created_at timestamp with time zone default current_timestamp,
	closed_at timestamp with time zone default null
);

comment on table orders is 'Buyurtmalar';

create table order_details (
	order_detail_id serial not null primary key,
	quantity int2 default 1,
	order_id int not null references orders (order_id),
	product_id int not null references products(product_id)
);

comment on table order_details is 'Buyurtma tafsilotlari';

