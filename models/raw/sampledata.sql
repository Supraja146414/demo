{{ config(materialized='table' , transient=false, schema='prod' )}}



select d.department_name
        ,d.department_id,
        e.salary
from {{ source('prod','departments')}} d 
inner join {{ source('prod','employees')}} e 
on d.department_id = e.department_id }} 
