
  
    

        create or replace transient table FINANCE_DB.ANALYTICS.moving_avg_7_day
         as
        (

SELECT
  stock_symbol,
  date,
  close,
  AVG(close) OVER (
    PARTITION BY stock_symbol
    ORDER BY date
    ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
  ) AS moving_avg_7_day
FROM FINANCE_DB.ANALYTICS.input_stock_prices
        );
      
  