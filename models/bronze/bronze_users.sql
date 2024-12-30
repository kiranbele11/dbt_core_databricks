{{
    config(
        tags='contains_pii'
    )
}}


select
*
from
{{ source("landing", 'users')}}