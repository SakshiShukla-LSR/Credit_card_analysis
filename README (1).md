# Credit Card Financial Report Dashboard in Power BI

Hello everyone, I'm Mahavir, we'll create a professional dashboard in Power BI, focusing on a Credit Card Financial Report.
The Data Base used for making this project is [Credit Card Financial Dashboard Using Power BI](https://www.kaggle.com/datasets/nibeditasahu/credit-card-financial-dashboard-using-power-bi).
The dataset has been already uploaded here in this Git, and again the daat was also upadted and the same has beed uploded with the name Updated_Data_for_credit_card and Updated_Data_for_credit_card_users

## Steps Overview

### Step 1: Project Overview
To develop a comprehensive credit card weekly dashboard that provides real-time insights into key performance metrics and trends, enabling stakeholders to monitor and analyze credit card operations 
effectively.

### Step 2: Data Extraction
In this step, we'll connect Power BI to a MySQL Database. After establishing the connection, we'll import the necessary data into Power BI, which will be used to build the dashboard.

### Step 3: Data Processing and DAX Queries
We will process the imported data and perform necessary calculations using DAX queries. This includes creating calculated columns, charts, and tables within Power BI.

### Step 4: Dashboard Creation and Insights
Here, we will build two dashboards:
- **Credit Card User Report**: Includes customer details and transactions, broken down by week and filtered by gender, income range, card type, and more.
- **Credit Card Transaction Report**: Focuses on transaction data, allowing users to analyze spending patterns over time.

We'll also share insights from these dashboards, discuss how to interpret them, and explain how these can be added to your resume to showcase your skills.


## Project Details

### Dashboard Insights
- **Credit Card User Report**: Includes visualizations of customer details and transaction data, filtered and broken down by various criteria.
- **Credit Card Transaction Report**: Provides insights into spending patterns and key metrics.

### MySQL Database Connection

## Visualizations
In the dashboard, we will use tree maps, charts, and other visualizations to provide insights into:
- Customer behavior
- Transaction trends
- Key performance indicators (KPIs) such as total revenue, interest rates, and customer satisfaction

## DAX Queries
AgeGroup = SWITCH(
 TRUE(),
 'public cust_detail'[customer_age] < 30, "20-30",
 'public cust_detail'[customer_age] >= 30 && 'public cust_detail'[customer_age] < 40, "30-40",
 'public cust_detail'[customer_age] >= 40 && 'public cust_detail'[customer_age] < 50, "40-50",
 'public cust_detail'[customer_age] >= 50 && 'public cust_detail'[customer_age] < 60, "50-60",
 'public cust_detail'[customer_age] >= 60, "60+",
 "unknown"
 )
IncomeGroup = SWITCH(
 TRUE(),
 'public cust_detail'[income] < 35000, "Low",
 'public cust_detail'[income] >= 35000 && 'public cust_detail'[income] <70000, "Med",
 'public cust_detail'[income] >= 70000, "High",
 "unknown"
)

-----------------------------------------------
week_num2 = WEEKNUM('public cc_detail'[week_start_date])
Revenue = 'public cc_detail'[annual_fees] + 'public cc_detail'[total_trans_amt] + 'public cc_detail'[interest_earned]
Current_week_Reveneue = CALCULATE(
 SUM('public cc_detail'[Revenue]),
 FILTER(
 ALL('public cc_detail'),
 'public cc_detail'[week_num2] = MAX('public cc_detail'[week_num2]))) 
Previous_week_Reveneue = CALCULATE(
 SUM('public cc_detail'[Revenue]),
 FILTER(
 ALL('public cc_detail'),
 'public cc_detail'[week_num2] = MAX('public cc_detail'[week_num2])-1))

### Project Insights- Week 53 (31st Dec)

# WoW change: 
  - Revenue increased by 28.8%, 
  - Total Transaction Amt & Count increased by xx% & xx%
  - Customer count increased by xx%
****Overview YTD:****
- Overall revenue is 57M
- Total interest is 8M
- Total transaction amount is 46M
- Male customers are contributing more in revenue 31M, female 26M
- Blue & Silver credit card are contributing to 93% of overall 
**transactions**
- TX, NY & CA is contributing to 68%
- Overall Activation rate is 57.5%
- Overall Delinquent rate is 6.06%


Feel free to check out the project files.





