

SELECT
  stock_symbol,
  AVG(close) AS avg_close_price
FROM FINANCE_DB.ANALYTICS.input_stock_prices
GROUP BY stock_symbol