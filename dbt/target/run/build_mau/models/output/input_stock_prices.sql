
  
    

        create or replace transient table FINANCE_DB.ANALYTICS.input_stock_prices
         as
        (-- raw input passthrough
SELECT * FROM FINANCE_DB.ANALYTICS.stock_prices
        );
      
  