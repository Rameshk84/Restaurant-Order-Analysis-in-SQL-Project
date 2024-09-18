use restaurant_db;
-- Objective 2
-- 1. View the order_detsils table ?
select * from order_details;

-- 2. what is the date range of the table ?
select * from order_details
order by order_date;

select MIN(order_date), MAX(order_date) from order_details;


-- 3. how many orders were made within this date range ?
select count(order_id) as Count_orders from order_details
order by order_date;

-- 4. how many items were orderd within this date range ?   
select count(distinct item_id) from order_details;

-- 5. Which orders had the most number of items? 
select order_id ,count(item_id) as num_items
from order_details
group by order_id
order by num_items desc;


-- 6. How many order shad more than 12 items ?

select count(*) from 
(select order_id ,count(item_id) as num_items
from order_details
group by order_id
having num_items>12) as Num_orders ;
