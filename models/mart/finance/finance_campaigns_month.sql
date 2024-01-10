SELECT format_date('%Y-%m', date_date) as datemonth
    ,SUM(ads_cost) as ads_cost
    ,SUM(impression) as impression
    ,SUM(click) as click
    ,SUM(nb_of_transactions) as nb_of_transactions
    ,SUM(total_revenue) as total_revenue
    ,SUM(average_basket) as average_basket
    ,SUM(margin) as margin
    ,SUM(operational_margin) as operational_margin
    ,SUM(quantity) as quantity
    ,SUM(ads_margin) as ads_margin
FROM {{ref("finance_campaigns_day")}}
GROUP BY datemonth
