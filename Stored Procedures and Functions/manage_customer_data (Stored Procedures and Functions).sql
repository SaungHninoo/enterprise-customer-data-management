-- Create table for customer data
CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    email VARCHAR2(100),
    phone_number VARCHAR2(15),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP
);

-- Stored procedure to add a new customer
CREATE OR REPLACE PROCEDURE add_customer (
    p_first_name IN VARCHAR2,
    p_last_name IN VARCHAR2,
    p_email IN VARCHAR2,
    p_phone_number IN VARCHAR2
) IS
BEGIN
    INSERT INTO customers (customer_id, first_name, last_name, email, phone_number, updated_at)
    VALUES (customers_seq.NEXTVAL, p_first_name, p_last_name, p_email, p_phone_number, CURRENT_TIMESTAMP);
END add_customer;
/

-- Stored procedure to update customer details
CREATE OR REPLACE PROCEDURE update_customer (
    p_customer_id IN NUMBER,
    p_first_name IN VARCHAR2,
    p_last_name IN VARCHAR2,
    p_email IN VARCHAR2,
    p_phone_number IN VARCHAR2
) IS
BEGIN
    UPDATE customers
    SET first_name = p_first_name,
        last_name = p_last_name,
        email = p_email,
        phone_number = p_phone_number,
        updated_at = CURRENT_TIMESTAMP
    WHERE customer_id = p_customer_id;
END update_customer;
/

-- Function to get customer details by ID
CREATE OR REPLACE FUNCTION get_customer (
    p_customer_id IN NUMBER
) RETURN VARCHAR2 IS
    v_customer_info VARCHAR2(4000);
BEGIN
    SELECT first_name || ' ' || last_name || ', Email: ' || email || ', Phone: ' || phone_number
    INTO v_customer_info
    FROM customers
    WHERE customer_id = p_customer_id;
    RETURN v_customer_info;
END get_customer;
/
