SELECT
    customer,
    total_sales,

    CASE
        WHEN total_sales >= 70000 THEN 'High Value'
        WHEN total_sales >= 30000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment

FROM {{ ref('customer_segmentation') }}