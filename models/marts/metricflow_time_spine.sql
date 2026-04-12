{{ config(materialized='table') }}

with date_spine as (
    select date_day
    from unnest(
        generate_date_array('2016-01-01', '2030-12-31')
    ) as date_day
)

select date_day from date_spine