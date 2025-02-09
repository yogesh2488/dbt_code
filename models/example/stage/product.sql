{{ config(materialized='table') }}

WITH tb1 as(
    select sku,name,type,price

    from {{source('datafeed_shared_schema','stg_product')}})
select * from tb1

