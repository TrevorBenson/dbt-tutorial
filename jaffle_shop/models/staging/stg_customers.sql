{{
  config(
    materialized='view'
  )
}}

{% docs view_stg_customer %}

This view contains a cleaned up version of the `jaffle_shop.customers` table.
It renames the columns to be more user-friendly.

{% enddocs %}

select
    id as customer_id,
    first_name,
    last_name

from `dbt-tutorial`.jaffle_shop.customers
