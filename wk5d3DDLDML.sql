--Query customer and order tables to view date
select *
from customer;

select *
from order_;

--DDL/DML
--DDL
alter table customer 
add phone_number VARCHAR(30);

--DML
update customer 
set phone_number = '630-852-8299'
where customer_id = 6;

select * 
from customer;

--RETURNING 
update customer 
set phone_number = '773-292-LUNA'
where customer_id = 5
returning first_name, phone_number; --returns the specified columns for the updated row

--DELETING a specific ROW OF DATA
delete from customer 
where customer_id = 6
returning *;

--DDL
create table staff(
	staff_id SERIAL primary key,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(50),
	order_id INTEGER,
	phone_number INTEGER,
	foreign key(order_id) references order_(order_id)
);

--updating the data type for a specific column
alter table staff 
alter column phone_number type VARCHAR(25);

--drop (delete) a table from out database
drop table staff cascade --cascade will drop any objects dependent on this table





