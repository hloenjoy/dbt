
  create or replace   view AIRBNB.dev.src_listings
  
   as (
    WITH raw_listings 
as

(
    Select *
    from AIRBNB.raw.raw_listings
)

select 
    id AS listing_id,
    name as listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price as price_str,
    created_at,
    updated_at
FROM 
raw_listings
  );

