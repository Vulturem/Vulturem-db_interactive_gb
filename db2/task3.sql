use sample;

drop table if exist cat;
create table cat (
id serial PRIMARY KEY,
name VARCHAR(255)
);

insert into cat values 
(default, ibm1),
(default, ibm3),
(default, ibm7);

insert into 
	sample.cat
select 
	*
from
	shop.catalogs
on duplicate key update id = values(id);

