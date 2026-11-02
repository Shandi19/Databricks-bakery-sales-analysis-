

# Databricks Bakery Sales Investigation

## Objective

Use Databricks SQL to turn bakery transaction lines into product and store performance insights.

## Business questions

- Which individual Downtown sale generated the most revenue?
- Which product generated the most revenue across all stores?
- Which store location generated the most revenue?

## Key findings

- The highest-revenue Downtown transaction line was a Croissant sale worth 24.00.
- Sourdough Loaf was the top product with 56.00 in total revenue.
- Riverside was the top store location with 73.00 in total revenue.

## SQL skills demonstrated

- Selecting and limiting columns and rows
- Creating calculated columns with aliases
- Filtering rows with `WHERE`
- Sorting results with `ORDER BY`
- Aggregating with `SUM` and `COUNT`
- Grouping business categories with `GROUP BY`
- Turning a grouped query into a Databricks bar visualization

## Reproduce the analysis

1. Create a SQL notebook in Databricks Free Edition.
2. Run the dataset setup statement in `bakery_sales_analysis.sql`.
3. Run each analysis query in its own notebook cell.
4. Build a Bar visualization from the store-location summary.

## Result

The project demonstrates the difference between ranking individual transaction lines and aggregating all rows to answer a business question.
