with cte as (
SELECT 
a.Product,
a.Category,
a.Brand,
a.Description,
a.Sale_Price,
a.Cost_Price,
a.Image_url,
b.Date,
b.Customer_Type,
b.Discount_Band,
b.Country,
b.Units_Sold,
(Sale_Price * Units_Sold) as Revenue,
(Cost_Price * Units_Sold) as Total_Cost,
FORMAT(Date,'MMMM') as Month,
FORMAT(Date, 'yyyy') as Year
FROM Product_data a
Join product_sales b 
On a.Product_ID = b.Product)

SELECT *,
(1 - discount * 0.1/100) * Revenue as Discount_Revenue
FROM cte a
join discount_data b
on a.Discount_Band = b.Discount_Band and a.Month = b.Month