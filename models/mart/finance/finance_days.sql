SELECT date_date
    ,COUNT(orders_id) AS nb_of_transactions
    ,ROUND(SUM(revenue),2) AS total_revenue
    ,ROUND(SUM(revenue)/COUNT(orders_id),2) AS average_basket
    ,ROUND(SUM(margin),2) AS margin
    ,ROUND(SUM(operational_margin),2) AS operationa_margin
    ,SUM(quantity) AS quantity
FROM {{ref('int_orders_operational')}}
GROUP BY date_date