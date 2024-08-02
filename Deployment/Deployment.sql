-- Deployment script to create sequence for customer IDs
CREATE SEQUENCE customers_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

-- Grant necessary privileges
GRANT SELECT, INSERT, UPDATE, DELETE ON customers TO your_user;
GRANT EXECUTE ON add_customer TO your_user;
GRANT EXECUTE ON update_customer TO your_user;
GRANT EXECUTE ON get_customer TO your_user;
GRANT EXECUTE ON etl_load_customers TO your_user;
GRANT EXECUTE ON validate_clean_customers TO your_user;
GRANT EXECUTE ON monthly_customer_report TO your_user;
