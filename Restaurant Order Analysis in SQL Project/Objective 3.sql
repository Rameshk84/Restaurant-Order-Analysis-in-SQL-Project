use restaurant_db;
-- Objective 3
-- 1. Combain the menu_items and order_details tables into a single table 
select * from menu_items;
select * from order_details;

select *
from order_details od left join menu_items mi 
    ON od.item_id = mi.menu_item_id;

-- 2. what were the lrast and most orderd items ? what categories were they in ?
select item_name , category, count(order_details_id) as num_purchases
from order_details od left join menu_items mi 
    ON od.item_id = mi.menu_item_id
    group by item_name , category
    order by num_purchases desc;
    

-- 3. what were the top 5 orders that spent the most money ?
select order_id , sum(price) as total_spent
from order_details od left join menu_items mi 
    ON od.item_id = mi.menu_item_id
    group by order_id
    order by total_spent desc
    limit 5;
    
-- 4. View the details of the highest spend order. what insights can gather from the results 
select category, count(item_id) as num_items
from order_details od left join menu_items mi 
    ON od.item_id = mi.menu_item_id
    where order_id = 440
    group by category;
    
-- 5 . view the details of the top 5 highest spend orders. what insights can you gather from the reuslts ?
 select order_id,category, count(item_id) as num_items
from order_details od left join menu_items mi 
    ON od.item_id = mi.menu_item_id
    where order_id  IN (440,2075,1957,330,2675)
    group by order_id ,category;
 