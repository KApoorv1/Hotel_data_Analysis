with hotels as(
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$']) 


-- EDA using SQL
-- Is our hotel revenue increasing by year

-- We dont have the revenue column but we do have adr and
-- total days in week nights and weekend nights

-- we'll add a new column to see that

select arrival_date_year,
hotel,
sum((stays_in_weekend_nights+ stays_in_week_nights) * adr) as Revenue
from hotels
group by arrival_date_year,hotel


--In the above query we got the revenue and arrival_date_year
-- Now we can group it by year and hotel and sum these by year  


select * from dbo.market_segment$


with hotels as(
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$']) 

--Here we'll join on market_segment and meal_cost column from both the tables 
select * from hotels
left join dbo.market_segment$ 
on hotels.market_segment= market_segment$.market_segment 
left join dbo.meal_cost$
on hotels.meal=meal_cost$.meal

# Now we've developed our SQL for Power BI
