with source as (
    select * from {{ source('nyc_taxi_raw', 'taxi_zone_lookup') }}
),

renamed as (

    select
        cast(LocationID as int)  as location_id,
        Borough                  as borough,
        Zone                     as zone_name,
        service_zone
    from source

)

select * from renamed