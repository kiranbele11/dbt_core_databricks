select
  id,
  created_at,
  title as product_name,
  category,
  ean,
  vendor,
  price
from
{{ ref('products_snapshots')}}
where dbt_valid_to is null
