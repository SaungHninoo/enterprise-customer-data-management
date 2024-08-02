-- Create index on customer email for faster search
CREATE INDEX idx_customer_email ON customers (email);

-- Partition the customer table by created_at date
ALTER TABLE customers
PARTITION BY RANGE (created_at) (
    PARTITION p_old_data VALUES LESS THAN (TO_DATE('01-JAN-2020', 'DD-MON-YYYY')),
    PARTITION p_recent_data VALUES LESS THAN (TO_DATE('01-JAN-2023', 'DD-MON-YYYY')),
    PARTITION p_current_data VALUES LESS THAN (MAXVALUE)
);
