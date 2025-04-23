
  
    

        create or replace transient table FINANCE_DB.ANALYTICS.avg_close_by_symbol
         as
        (

SELECT
  stock_symbol,
  AVG(close) AS avg_close_price
FROM FINANCE_DB.ANALYTICS.input_stock_prices
GROUP BY stock_symbol
        );
      
  