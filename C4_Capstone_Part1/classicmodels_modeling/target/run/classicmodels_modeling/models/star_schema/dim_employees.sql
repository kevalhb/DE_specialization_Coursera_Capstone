
  
    

  create  table "postgres"."classicmodels_star_schema"."dim_employees__dbt_tmp"
  
  
    as
  
  (
    SELECT
    md5(cast(coalesce(cast(employeeNumber as TEXT), '') as TEXT))  as employee_key,
    lastName as employee_last_name, 
    firstName as employee_first_name, 
    jobTitle as job_title, 
    email as email
FROM classicmodels.employees
  );
  