
  create or replace   view AIRBNB.dev.dim_hosts_cleansed
  
   as (
    WITH src_hosts_clean
as
(
    select * FROM AIRBNB.dev.src_hosts

)

select 
    host_id,
    NVL(host_name,'Anonymous') AS host_name,
    is_superhost,
    created_at,
    updated_at
from src_hosts_clean
  );

