{{ config(
    materialized = 'view',
    ) }}


select  * from {{ source('sharebike','bikeshare_trips') }} where trip_id='201709181413361363'