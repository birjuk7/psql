udemy_postgres



select * from items ;
update items set fan as van where id=13;
insert into items values ('fan','13','27.21');         #### insert
select name as names_some from items;
select id,name as names_some from items;
select id as number ,name as names_some from items;

update items set id=11 where name ='fan';    ##########  update and set
update items set name='rubber' where id =11;       ####### update and set

select name from items ;
insert into items values ('bag','3','9.89');
delete from items where id=131;                      ####### delete

select first_name from customers where last_name='kumar';
 select * from customers where last_name='kumar' or last_name='Smith';         #####  or
select * from customers where last_name !='kumar';                                             #### = and !=

select * from customers where last_name='kumar' and first_name='birju';  #######   and

select * from customers where last_name like 'k%';                                       ##### like 'k%'    name starting with k
select * from customers where last_name like 'S%a';                                   ##### like 'S%a'   starts with s and ends with a
select * from customers where last_name like '%t%'                                   ###### like '%t%'  and alphabet sandwitching with t
select * from customers where last_name like '%t_';                                  ###### like '%t_'     onlt one alphabet after t

###join###  key element allow us to retrive data from multiple tables at once
#intersection is the elements common to both sets
sql inner join is akin to set intersection
#inner join selects rows from table1 and table2 where they match the selecting column
select * from customers left join purchases on customers.id = purchases.customer_id;
 select * from customers inner join purchases on customers.id = purchases.customer_id limit 3;
select customers.first_name,customers.last_name,purchases.id from customers join purchases on customers.id = purchases.customer_id limit 2;


group by to remove duplicate data

udemy=# select * from customers group by customers.id ;
select customers.first_name,customers.last_name,count(purchases.id) from customers join purchases on customers.id = purchases.customer_id group by customers.id;

select * from birju inner join orders on birju.id = orders.id;
select * from birju left join orders on birju.id = orders.id;
select * from birju right join orders on birju.id = orders.id;

create table bk ( id int,first_name varchar(25));   to create new table with columns arranged in specific orders 
insert into bk select id,first_name from birju;     to copy old table into newly created table

select bk.id,bk.first_name,orders.customer_id,orders.product from bk inner join orders on bk.id = orders.id;



























 


