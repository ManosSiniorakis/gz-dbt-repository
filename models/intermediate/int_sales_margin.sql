SELECT *
    ,CAST(s.revenue AS INT64) - CAST(p.purchase_price AS float64) AS margin
    ,CAST(s.quantity AS INT64) * CAST(p.purchase_price AS float64) AS purchase_cost
    ,{{create_margin_percent('revenue','s.quantity*CAST(p.purchase_price AS FLOAT64)')}} as margin_percent
FROM  {{ ref('stg_raw__sales')}} as s
JOIN {{ ref('stg_raw__product')}} as p USING (products_id)