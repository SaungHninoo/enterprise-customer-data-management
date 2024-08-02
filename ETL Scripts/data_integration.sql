-- Create a staging table for raw data
CREATE TABLE staging_customers (
    customer_id NUMBER,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    email VARCHAR2(100),
    phone_number VARCHAR2(15),
    source_system VARCHAR2(50),
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ETL procedure to load data from staging to main table
CREATE OR REPLACE PROCEDURE etl_load_customers IS
BEGIN
    INSERT INTO customers (customer_id, first_name, last_name, email, phone_number, updated_at)
    SELECT customer_id, first_name, last_name, email, phone_number, CURRENT_TIMESTAMP
    FROM staging_customers;
    
    COMMIT;
    
    DELETE FROM staging_customers;
    
    COMMIT;
END etl_load_customers;
/
