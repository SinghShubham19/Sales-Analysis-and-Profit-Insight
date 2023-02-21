# Sales Analysis and Profit Insight

A multi-tabled sales data of a company was analyzed over a period of 4 years. MySQL was used to generate primary insight about sales. I used Tableau for ETL and to generate 2 different interactive dashboards indicating profit and revenue v/s time, markets, customers, etc.



## Business Issue
The sales director is struggling to meaningfully track the sales. He needs more accurate insights about the company sales and then makes the necessary decisions regarding expansion, marketing, etc.
## Solution
Create a simple and informative dashboard about the company sales.

I used SQL queries in MySQL Workbench to look into the data and Tableau for ETL and Visualizations to create the insights dashboard.

## Preliminary insight using SQL

After a quick data exploration in MySQL Workbench, here are some initial findings:

- The database contains 5 tables: customers, date, markets, products, and transactions.
- The observation period is from 2017 to 2020.
- Two types of product : Own Type and Distribution
- Most of the transactions data are in INR(₹) currency, but we have 2 records in US($) currency. 


## ETL (Extract, Transform, Load)

Once I knew the basic features of the data I had to work with, I Imported the MySQL database into Tableau to do the necessary transformations and make a simple, reliable, and helpful dashboard.

### Data Modeling

The transaction table contains records shared with each of the pther four tables. Hence I modeled the data as a star schema with transaction table at the centre. 

### Filtering, Cleaning and Adding New Columns

- The company is serving only in India, So “Paris” and “New York” in the market table are garbage values, so filtering them out.
- The “currency” column (in transactions table) have 2 USD currency values, So created a new column called “Normalized Amount”, where all the sales_amount is in INR Currency.
## Dashboards

The two dashboards shows all the main information about the company sales.

### Sales Analysis
![dashboard1 jpg](https://user-images.githubusercontent.com/121576163/220355318-0c67a862-2841-4260-a9a3-526934b8809b.jpg)

### Profit Insight
![dashboard2 jpg](https://user-images.githubusercontent.com/121576163/220357111-5cdcfcb4-b4cf-4a8e-bd5a-760ba45b06f2.jpg)

- It can be filtered by YEAR and Month. It is an interactive Dashboard i.e, each other insights are inter-related and can be seen in any respects. So the sales director can have a deeper and quick view of the sales to support his decision making process.
## Recommendations

- Make a expansion strategy for Kanpur and Chennai since they generates the maximum profit margin despite generating lesser overall revenue.

- Start target campagin for Prod018 and Prod016 since they two are the most revenue generating products.

- Try to give special benefits to Modular and Surge stores as they are most profitable customers.
