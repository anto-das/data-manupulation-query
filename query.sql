,
create table customers (
  customer_id int primary key,
  first_name varchar(50),
  last_name varchar(50),
  email varchar(100),
  city varchar(50),
  registration_date date
)
create table books (
  book_id int primary key,
  title varchar(200),
  author varchar(100),
  genre varchar(50),
  price numeric(2, 8),
  publication_year int,
  stock_quantity int
);

alter table customers
add column country varchar(50);

alter table customers
drop column registration_date;

alter table customers
add column registration_date date;

insert into
  customers (
    customer_id,
    first_name,
    last_name,
    email,
    city,
    country,
    registration_date
  )
values
  (
    1,
    'John',
    'Smith',
    'john.smith@email.com',
    'New York',
    'USA',
    date '2023-01-15'
  );

insert into
  customers (
    customer_id,
    first_name,
    last_name,
    email,
    city,
    country,
    registration_date
  )
values
  (
    2,
    'Emma',
    'Johnson',
    'emma.j @ email.com',
    'London',
    'UK',
    date '2023-02-20'
  ),
  (
    3,
    'Michael',
    'Brown',
    'mbrown@email.com',
    'Toronto',
    'Canada',
    date '2023-01-10'
  ),
  (
    4,
    'Sophia',
    'Davis',
    'sophia.d@email.com',
    'Sydney',
    'Australia',
    date '2023-03-05'
  ),
  (
    5,
    'James',
    'Wilson',
    'jwilson@email.com',
    'New York',
    'USA',
    date '2023-02-28'
  ),
  (
    6,
    'Oliver',
    'Taylor',
    'oliver.t@email.com',
    'London',
    'UK',
    date '2023-04-12'
  ),
  (
    7,
    'Ava',
    'Anderson',
    'ava.anderson@email.com',
    'Los Angeles',
    'USA',
    date '2023-03-18'
  ),
  (
    8,
    'William',
    'Martinez',
    'w.martinez@email.com',
    'Madrid',
    'Spain',
    date '2023-01-25'
  ),
  (
    9,
    'Isabella',
    'Garcia',
    'isabella.g@email.com',
    'Mexico City',
    'Mexico',
    date '2023-02-14'
  ),
  (
    10,
    'Lucas',
    'Rodriguez',
    'lucas.r@email.com',
    'Buenos Aires',
    'Argentina',
    date '2023-03-30'
  );

drop table books;

-- customers queries
select distinct
  country
from
  customers;

alter table customers
rename column first_name to customer_first_name;

select
  *
from
  customers;

select
  *
from
  customers
where
  (email like '%.com')
  and (country in ('USA', 'UK'));

select
  upper(concat(customer_first_name, ' ', last_name)) as "Full Name",
  email,
  lower(city)
from
  customers
where
  country in ('USA', 'UK');

-- books queries
select
  title,
  price
from
  books
order by
  price asc;

select
  *
from
  books
where
  title like 'The%';

select
  *
from
  books
where
  genre = 'Fantasy';

select
  genre as category,
  avg(price) as avg_price
from
  books
group by
  genre
having
  avg(price) > 14;

-- orders queries
select
  count(*)
from
  orders;

select
  sum(total_amount) as total_revenue,
  avg(total_amount) as average_order_amount,
  max(total_amount) as maximum_order,
  min(total_amount) as minimum_order,
  count(*) as total_order_in_june
from
  orders
where
  order_date >= '2023-06-01'
  and order_date <= '2023-06-30';