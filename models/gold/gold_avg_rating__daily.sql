select
   date(date_format(r.created_at, 'yyyy-MM-dd')) as review_date,
   r.product_id,
   p.product_name,
   avg(r.rating) as avg_rating
from {{ ref("bronze_reviews") }} r 
LEFT JOIN {{ ref("silver_products") }} p 
ON r.product_id = p.id
group by all