--Total Revenue

SELECT SUM(Sales) AS total_revenue
FROM `my-project-3531645.sales_project.sales_data`;

--Revenue by Month

SELECT
  EXTRACT(MONTH FROM Order_date) AS month,
  SUM(Sales) AS revenue
FROM `my-project-3531645.sales_project.sales_data`
GROUP BY month
ORDER BY month;

--Top Products

SELECT
  Sub_Category,
  SUM(Sales) AS revenue
FROM `my-project-3531645.sales_project.sales_data`
GROUP BY Sub_Category
ORDER BY revenue DESC
LIMIT 10;

--Profit by Region

SELECT
  Region,
  SUM(Profit) AS total_profit
FROM `my-project-3531645.sales_project.sales_data`
GROUP BY Region

--Profit Margin

SELECT
  Category,
  SUM(Profit)/SUM(Sales) AS profit_margin
FROM `my-project-3531645.sales_project.sales_data`
GROUP BY Category;
