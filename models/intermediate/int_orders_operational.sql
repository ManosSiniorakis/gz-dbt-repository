SELECT *
    , margin + CAST(shipping_fee AS float64) - CAST(logCost AS float64) - CAST(ship_cost AS float64) AS operational_margin
FROM {{ref('int_orders_margin')}}
JOIN {{ref('ship')}} USING (orders_id)