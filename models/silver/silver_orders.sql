select
  id,
  date(date_format(created_at, 'yyyy-MM-dd')) as order_date,
  user_id,
  product_id,
  quantity,
  unit_price,
  {{ multiply_columns_and_round('quantity', 'unit_price') }} as order_amount

from
{{ ref('bronze_orders') }}