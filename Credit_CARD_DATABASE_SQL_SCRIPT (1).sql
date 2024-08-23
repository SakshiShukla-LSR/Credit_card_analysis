CREATE DATABASE CREDIT_CARD_DB;
USE CREDIT_CARD_DB;

CREATE TABLE IF NOT EXISTS CREDITCARD_DETAIL (
	Client_Num INT NOT NULL,
    Card_Category VARCHAR(20) NOT NULL,
    Annual_Fees INT NOT NULL,
    Activation_30_Days INT NOT NULL,
    Customer_Acq_Cost INT NOT NULL,
    Week_Start_Date DATE NOT NULL,
    Week_Num VARCHAR(20) NOT NULL,
    Qtr VARCHAR(10) NOT NULL,
    current_year INT NOT NULL,
    Credit_Limit DECIMAL(10,2) NOT NULL,
    Total_Revolving_Bal INT NOT NULL,
    Total_Trans_Amt INT NOT NULL,
    Total_Trans_Ct INT NOT NULL,
    Avg_Utilization_Ratio DECIMAL(10,3) NOT NULL,
    Use_Chip VARCHAR(10) NOT NULL,
    Exp_Type VARCHAR(50) NOT NULL,
    Interest_Earned DECIMAL(10,3) NOT NULL,
    Delinquent_Acc VARCHAR(5) NOT NULL
);

CREATE TABLE CREDITCARD_USERS (
	Client_Num INT NOT NULL,
    Customer_Age DOUBLE NOT NULL,
    Gender VARCHAR(5) NOT NULL,
    Dependent_Count INT NOT NULL,
    Education_Level VARCHAR(50) NOT NULL,
    Marital_Status VARCHAR(20) NOT NULL,
    State_cd VARCHAR(50) NOT NULL,
    Zipcode VARCHAR(20) NOT NULL,
    Car_Owner VARCHAR(5) NOT NULL,
    House_Owner VARCHAR(5) NOT NULL,
    Personal_Loan VARCHAR(5) NOT NULL,
    Contact VARCHAR(50) NOT NULL,
    Customer_Job VARCHAR(50) NOT NULL,
    Income INT NOT NULL,
    Cust_Satisfaction_Score INT NOT NULL
);


SELECT * FROM CREDITCARD_DETAIL;
SELECT * FROM CREDITCARD_USERS;
