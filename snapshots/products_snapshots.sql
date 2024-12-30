{% snapshot products_snapshots %}
   
   {{
      config(
        target_schema='bronze',
        strategy='timestamp',
        unique_key='id',
        updated_at='created_at',
      )
   }}

   select * from {{ source('landing', 'products') }}

{% endsnapshot %}