{{ config(
    materialized = 'table',
    ) }}


select  * from {{ ref('trip_view') }} where trip_id!='201709181413361363'