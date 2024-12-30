select
*
from 
{{ source('landing', 'orders')}}