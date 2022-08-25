-- to check all tables in data
SHOW TABLES;
-- to see all fields present in tables
SELECT * FROM geo;
SELECT * FROM sales;
-- to select only few coloums from sales table
SELECT GeoID,PID
FROM SALES;
-- Adding a calculated column with SQL
SELECT Amount,boxes,Amount/Boxes from sales;
-- Naming a field with AS in SQL
Select SaleDate, Amount, Boxes, Amount / boxes as 'Amount per box'  from sales;
-- adding filters using where condition
SELECT * FROM sales WHERE BOXES > 200;
-- adding order by 
SELECT * FROM sales WHERE BOXES > 200 
order by Amount;
-- Order by (by default will filter by asc ) If we want desc use this
SELECT * FROM sales WHERE BOXES > 200 
order by Amount desc;

-- Using year() function to select all data in a specific year
select SaleDate, Amount from sales
where amount > 10000 and year(SaleDate) = 2022
order by amount desc;

select month(SaleDate) from sales;

SELECT boxes from sales
WHERE BOXES > 0 and BOXES <=50;

SELECT boxes from sales
WHERE BOXES 
BETWEEN  0 AND 50;
-- Using weekday() function in SQL 0 is for monday 
select SaleDate, Amount, Boxes, weekday(SaleDate) as 'Day of week'
from sales
where weekday(SaleDate) = 3;
-- OR operator in SQL
select * from people
where team = 'Delish' or team = 'Jucies';
-- IN can be used instead of OR 
SELECT * FROM PEOPLE WHERE TEAM IN('Delish','Jucies');
-- LIKE operator in SQL

select * from people
where salesperson like 'B%';

select * from people
where salesperson like '%B%';

select * from sales;

-- Using CASE to create branching logic in SQL

select 	SaleDate, Amount,
		case 	when amount < 1000 then 'Under 1k'
				when amount < 5000 then 'Under 5k'
                when amount < 10000 then 'Under 10k'
			else '10k or more'
		end as 'Amount category'
from sales;
select team, count(*) from people
group by team;









