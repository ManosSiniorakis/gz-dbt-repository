SELECT *
    ,CAST(revenue AS INT64) - CAST(purchase_price AS float64) AS margin
    ,CAST(quantity AS INT64) * CAST(purchase_price AS float64) AS purchase_cost
FROM  {{ ref('sales')}}
JOIN {{ ref('product')}} USING (products_id)