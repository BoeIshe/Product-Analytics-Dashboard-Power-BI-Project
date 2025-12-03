# Product-Analytics-Dashboard-Power-BI-Project
This project showcases the full life cycle of developing a Product Analytics Dashboard using Microsoft SQL Server and Power BI. The dashboard provides high-level insights into product, sales, profitability, and discount performance to support strategic decision-making.
# 📊 Product Analytics Dashboard – Power BI Project
*A complete end-to-end business intelligence solution*

## ⭐ Project Overview
This project showcases the full life cycle of developing a **Product Analytics Dashboard** using **Microsoft SQL Server** and **Power BI**. The dashboard provides high-level insights into product performance, sales trends, profitability, and discount behavior to support strategic decision-making.

The work was based on a management request outlining specific KPIs and visualizations for a one-page executive dashboard.

## 📌 Business Request (From Management)
**Subject:** *Request for Dashboard Development – Product Analytics Overview*

### Required Dashboard Insights
1. **Revenue by Country** – Top-performing regions  
2. **Revenue by Date & Year** – Year-to-year trend comparison  
3. **Profit & Unit Sales YoY Change** – High-level YoY performance  
4. **Revenue Breakdown by Discount Band** – Distribution of revenue by discounts  
5. **Detailed Table View** – Revenue and profit by country, customer type, and year  
6. **Additional Insights** – Any further breakdowns that support decision-making  

## 🛠️ Tools & Technologies Used
| Layer | Tools |
|-------|-------|
| **Database** | Microsoft SQL Server, SQL Server Management Studio (SSMS) |
| **Data Processing** | SQL (CTEs, joins, date functions, calculated fields) |
| **Visualization** | Power BI Desktop |
| **Data Files** | CSV files (Products, Sales, Discount Data) |
| **Assets** | Product images, icons, GIF animations |

## 🗂 Data Sources
Three flat files were provided as input:
- Product_Data.csv  
- Product_Sales.csv  
- Discount_Data.csv  

These files were imported into SQL Server using the Import Flat File wizard.

## 🧱 Database Modeling
### Tables Created
```
Product_Data
Product_Sales
Product_Discount
```

### Relationships
- Product_ID joins Product_Data ↔ Product_Sales  
- Month + Discount_Band joins Product_Sales ↔ Product_Discount  

### Transformations
- Revenue = Sale Price × Units Sold  
- Total Cost = Cost Price × Units Sold  
- Profit = Discounted Revenue – Total Cost  
- Extracted Month & Year  
- Joined tables via CTE  
- Cleaned fields for Power BI  

## 📊 Power BI Dashboard Features
- Interactive product image slicer  
- Product detail panel  
- Revenue by Country bar chart  
- Revenue by Year bar chart  
- Revenue by Discount Band donut chart  
- Detailed matrix table  
- KPI Cards (Profit YOY %, Units Sold YOY %)  
- Custom tooltip page  

## 📏 DAX Measures
### Profit YOY
```DAX
Profit YOY =
VAR LastYear =
    CALCULATE(
        SUM('Model'[Profit]),
        DATEADD('Model'[Date], -1, YEAR)
    )
RETURN
    (SUM('Model'[Profit]) - LastYear) / LastYear
```

### Units Sold YOY
```DAX
Units Sold YOY =
VAR LastYear =
    CALCULATE(
        SUM('Model'[Units_Sold]),
        DATEADD('Model'[Date], -1, YEAR)
    )
RETURN
    (SUM('Model'[Units_Sold]) - LastYear) / LastYear
```

## 📁 Recommended Repository Structure
```
/Product-Analytics-Dashboard
│── README.md
│── /database
│── /sql
│── /powerbi
│── /assets
```

## 🚀 Key Learnings
- Full BI lifecycle execution  
- SQL data modeling  
- Advanced Power BI development  
- DAX performance calculations  
- Executive dashboard design  

## 🙌 Conclusion
The Product Analytics Dashboard provides a comprehensive, executive-ready view of product and sales performance, demonstrating strong capabilities in SQL, data modeling, visualization, and BI reporting.
