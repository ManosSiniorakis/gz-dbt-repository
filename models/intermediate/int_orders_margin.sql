SELECT orders_id, date_date
  ,ROUND(SUM(margin),2) AS margin
  ,ROUND(SUM(purchase_cost),2) AS purchase_cost
  ,SUM(quantity) AS quantity
  ,ROUND(SUM(revenue),2) AS revenue
FROM {{ref('int_sales_margin')}}
GROUP BY orders_id, date_date