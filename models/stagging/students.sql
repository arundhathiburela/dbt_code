{{ config( materialized='table') }}

WITH tb1 as(
    select 
    id, 
    name,
    age,
    subject
    from{{source('datafeed_shared_schema','stg_students')}})
select * from tb1