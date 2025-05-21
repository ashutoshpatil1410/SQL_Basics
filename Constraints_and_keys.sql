--primary key is the which is combination of unique and not null and it uniquely 
--identify each row(tuple)

create table customer 
(
	customer_id int primary key,
	customer_name varchar(50) not null
)
insert into customer 
values(1,'tcs'),
(2,'wipro'),
(3,'infosys'),
(4,'accenture');

create table trade
(
	trade_id int primary key,
	trade_ammount int not null,
	customer_id int foreign key references customer(customer_id)
);

insert into trade
values(101,2000000,1),
(102,3000000,2),
(103,2500000,3);

select * from customer
select * from trade

exec sp_rename 'trade.trade_ammount','trade_amount','column'

select t1.customer_name,t2.trade_amount from customer as t1
join trade as t2
on t1.customer_id=t2.customer_id

select t.trade_id,t.trade_amount from trade as t
join customer as c 
on t.customer_id=c.customer_id
where customer_name='tcs'

update trade 
set trade_amount=400000
where customer_id=1

delete from trade 
where customer_id=1;

select * from customer
select * from trade

insert into trade
values(104,2000000,4);