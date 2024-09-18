use restaurant_db;
-- Objective 1
-- 1. View the menu_item table
select * from menu_items;

-- 2. find the number of items on the menu
select count(*) from menu_items;


-- 3. What are the least and most expencive items on the menu 
-- least expencive items
select * from menu_items
order by price;
-- most expencive items
select * from menu_items
order by price desc;

-- 4. How many itelian dishes are there in menu
select count(*) from menu_items
where category = 'Italian';

-- 5. What are the least and most expencive itelian dishes on the menu
select * from menu_items
where category = 'Italian' order by price;

select * from menu_items
where category = 'Italian' order by price desc;

-- 6. How many dishes are there in each category
select category, count(menu_item_id) as num_dishes from menu_items 
group by category;

-- 7. what is the avg dish price within each category 
select category, avg(price) as Avg_price from menu_items 
group by category;



