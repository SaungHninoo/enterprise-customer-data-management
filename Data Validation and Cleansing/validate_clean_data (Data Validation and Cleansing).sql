-- Procedure to validate and cleanse customer data
CREATE OR REPLACE PROCEDURE validate_clean_customers IS
BEGIN
    -- Remove duplicates
    DELETE FROM customers
    WHERE ROWID NOT IN (
        SELECT MIN(ROWID)
        FROM customers
        GROUP BY email
    );
    
    -- Validate email format
    UPDATE customers
    SET email = NULL
    WHERE NOT REGEXP_LIKE(email, '^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$', 'i');
    
    COMMIT;
END validate_clean_customers;
/
