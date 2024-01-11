SELECT *
    ,CAST(revenue AS INT64) - CAST(purchase_price AS float64) AS margin
    ,CAST(quantity AS INT64) * CAST(purchase_price AS float64) AS purchase_cost
    ,{{create_margin_percent('revenue', 'purchase_price')}} as margin_percent
FROM  {{ ref('stg_raw__sales')}} 
JOIN {{ ref('stg_raw__product')}} USING (products_id)