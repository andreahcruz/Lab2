# Labp2

Make sure to connect your Snowflake within airflow by using their connection UI; then what we did to connect snowflake with preset was via sqlalchemy link.

Next run the following snowflake sql queries as shown below

CREATE DATABASE FINANCE_DB;
CREATE SCHEMA ANALYTICS;

USE DATABASE FINANCE_DB;
USE SCHEMA ANALYTICS;

CREATE TABLE IF NOT EXISTS FINANCE_DB.ANALYTICS.stock_prices (
    stock_symbol STRING NOT NULL,   
    date DATE NOT NULL,
    open FLOAT,
    close FLOAT,
    min FLOAT,                      
    max FLOAT,                      
    volume BIGINT,
    PRIMARY KEY (stock_symbol, date) 
);

SELECT * FROM FINANCE_DB.ANALYTICS.stock_prices; -- This gets stock prices of last 180 days for both stocks

SELECT * FROM FINANCE_DB.ANALYTICS.stock_price_forecasts; -- This gets the 7 day forecast
SELECT * FROM FINANCE_DB.ANALYTICS.stock_prices_final; -- This is the final table

![image](https://github.com/user-attachments/assets/89581012-a7e8-4ffc-ae52-a2ac453ab3e0)
