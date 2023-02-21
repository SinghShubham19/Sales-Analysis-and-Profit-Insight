-- Exploring Each Table

SELECT * FROM sales.customers;
SELECT * FROM sales.date;
SELECT * FROM sales.markets;
SELECT * FROM sales.products;
SELECT * FROM sales.transactions;

-- Types of Customers
select distinct customer_type from sales.customers;

-- Market Zones 
select distinct zone from markets;

-- Different Product Types
select distinct product_type from products;

-- Different Currency for transcations
select distinct currency from transactions;
-- We notice that INR is counted 2 times in above query, also USD needs to be converted to INR for uniform revenue scale
-- This has been done in Tableau

-- Total Transactions
select count(*) from transactions;

-- Chennai transaction exploration
select count(*) from transactions
where market_code='Mark001';

select * from transactions
where market_code='Mark001';

select distinct currency from transactions
where market_code='Mark001';

select sum(sales_amount) from transactions
where market_code='Mark001';

select distinct product_code from transactions
where market_code='Mark001';
-- Chennai exploration ends

-- Overseas exploration
Select * from transactions
where currency= 'USD';

-- data error found in above query as mark004 is new delhi--

-- Total sales at different locations--
select market_code, sum(sales_amount) from transactions
group by market_code;

-- Total transactions in 2020
Select sum(sales_qty) as t from transactions
where order_date like '%2020%';
-- group by order_date;

-- Year wise total sales quantity
Select date.year, sum(transactions.sales_qty) from date
join transactions on date.date=transactions.order_date
group by date.year
order by transactions.order_date;

-- Year wise total sales amount
Select date.year, sum(transactions.sales_amount) from date
join transactions on date.date=transactions.order_date
group by date.year
order by transactions.order_date;

-- total sales in 2020 
Select date.year, sum(transactions.sales_amount) from date
join transactions on date.date=transactions.order_date
where year='2020'
group by date.year
order by transactions.order_date;

-- only jan 2020 sales--
Select sum(transactions.sales_amount) from date
join transactions on date.date=transactions.order_date
where month_name='January' and year='2020'
-- group by date.year
order by date.date;

-- 2020 chennai business--
Select sum(transactions.sales_amount) from date
join transactions on date.date=transactions.order_date
where year='2020' and transactions.market_code= 'Mark001'
-- group by date.year
order by date.date;