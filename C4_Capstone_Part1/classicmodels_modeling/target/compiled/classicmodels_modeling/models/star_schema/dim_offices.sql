SELECT 
    
    md5(cast(coalesce(cast(officeCode as TEXT), '') as TEXT))  as office_key, 
    postalCode as postal_code, 
    city as city, 
    state as state, 
    country as country, 
    territory as territory
FROM classicmodels.offices