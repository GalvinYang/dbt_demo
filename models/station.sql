{{ config(
    materialized = 'table',
    ) }}

-- cast station_id to integer in order to join with trip
select  cast(station_id as INT64) as station_id,* except(station_id) from {{ source('sharebike','bikeshare_station_info') }}