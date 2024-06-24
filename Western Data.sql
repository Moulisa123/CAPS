SELECT * FROM `western data`.`western data`;                         
SELECT Country From `western data`.`western data`;
SELECT product from `western data`.`western data`;

SELECT * FROM `western data`.`western data`;

-- Product wise sale
Select Product, Round(Sum(Sales),2) As Total_Sales
FROM `western data`.`western data`
group by Product
Order by Total_sales DESC;

-- Segment wise profit
Select Segment, Round(sum(profit),2) As Total_profit
FROM `western data`.`western data`
group by Segment
Order by Total_profit desc;

-- Yearly Sales
Select year, Round(sum(sales),2) As Total_sales
FROM `western data`.`western data`
group by year
order by Total_sales DESC;

-- Country wise Sales
Select Country, Round(Sum(Sales),2) As Total_Sales
FROM `western data`.`western data`
Group By Country
Order By Total_Sales DESC;

-- Yearly profit
Select Year, Round(Sum(Profit),2) As Total_Profit
From `western data`.`western data`
Group By Year
Order By Total_Profit Desc;

-- Top 2 countries
Select Country, Round(Sum(Sales),2) As Total_sales
From `western data`.`western data`
Group By country
Order By Total_sales Desc;

-- Bottom 3 products
Select Product, Round(Sum(Sales),2) As Total_Sales
From `western data`.`western data`
Group By Product
Order By Total_Sales Asc;

-- Product wise discount
Select Product, Round(Sum(Discounts),2) As Total_Discounts
From `western data`.`western data`
Group By Product
Order By Total_Discounts Desc;

-- Segment wise Product Sales
Select Segment, Product, Round(Sum(Sales),2) As Total_Sales
From `western data`.`western data`
Group By Segment, Product
Order By Segment, Total_Sales desc, Product;

-- Segment wise product wise profit
Select Segment, Product, Round(Sum(Profit),2) As Total_Profit
From `western data`.`western data`
Group By Segment, Product
Order By Segment, Total_Profit desc, Product;
 
 Set @Segment = 1;
 select
 @Segment := +1 AS
serial_number,
Segment,
Country
FROM `western data`.`western data`;

SELECT 
    ROW_NUMBER() OVER (ORDER BY Segment) AS sr_no,
    max(profit)
FROM 
`western data`.`western data`
group by country;


SELECT CASE
		WHEN Month_Number BETWEEN 1 AND 3 THEN 'Q1'
		WHEN Month_Number BETWEEN 4 AND 6 THEN 'Q2'
		WHEN Month_Number BETWEEN 7 AND 9 THEN 'Q3'
		ELSE 'Q4'
	END AS Quarter,
	Round(Sum(Sales), 2) AS Total_Sales,
	Round(Sum(Profit), 2) AS Total_Profit
FROM `western data`.`western data`
GROUP BY CASE
		WHEN Month_Number BETWEEN 1 AND 3 THEN 'Q1'
		WHEN Month_Number BETWEEN 4 AND 6 THEN 'Q2'
		WHEN Month_Number BETWEEN 7 AND 9 THEN 'Q3'
		ELSE 'Q4'
	END
ORDER BY Quarter;

Alter table `western data`.`western data`
Rename column "Month Number" to "Month_Number";

    
 
 
 














	








