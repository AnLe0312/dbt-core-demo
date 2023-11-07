{{ config(materialized='table') }}
with Customer as (
    select distinct * from `taptap-c2c5f.manual_dwh.ram_core_loyalty_brand_point__PointLog_202311*`
    where currencyCode in ('nestle', 'milo', 'nescafe', 'neslte1')
)

select * 
from Customer

