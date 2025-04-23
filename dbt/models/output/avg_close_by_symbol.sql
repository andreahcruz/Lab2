{{ config(materialized='table') }}

SELECT
  stock_symbol,
  AVG(close) AS avg_close_price
FROM {{ ref('input_stock_prices') }}
GROUP BY stock_symbol
