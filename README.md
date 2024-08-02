# Enterprise Customer Data Management System

This repository contains PL/SQL scripts and other resources developed for the Enterprise Customer Data Management System project.

## Contents

- [Stored Procedures and Functions](stored_procedures)
- [ETL Scripts](etl_scripts)
- [Performance Optimization](optimization)
- [Data Validation and Cleansing](data_validation)
- [Reporting](reporting)
- [Deployment](deployment)

## Description

### Stored Procedures and Functions
- `manage_customer_data.sql`: A script to manage customer data, including CRUD operations and business logic.

### ETL Scripts
- `data_integration.sql`: A script for extracting, transforming, and loading customer data from multiple sources.

### Performance Optimization
- `performance_tuning.sql`: A script for optimizing query performance, including indexing and partitioning.

### Data Validation and Cleansing
- `validate_clean_data.sql`: A script for validating and cleansing incoming data to ensure accuracy and consistency.

### Reporting
- `customer_reports.sql`: A script for generating comprehensive customer reports using Oracle BI Publisher and Power BI.

### Deployment
- `deployment_scripts.sql`: Scripts for deploying the database objects and PL/SQL code to the production environment.

# Enterprise Customer Data Management System

This repository contains PL/SQL scripts and other resources developed for the Enterprise Customer Data Management System project.

## Contents

- [Stored Procedures and Functions](stored_procedures)
- [ETL Scripts](etl_scripts)
- [Performance Optimization](optimization)
- [Data Validation and Cleansing](data_validation)
- [Reporting](reporting)
- [Deployment](deployment)

## Description

### Stored Procedures and Functions

#### `customer_management_pkg`

The `customer_management_pkg` package provides a set of procedures and functions to manage customer data in the database. 

**Package Specification (`customer_management_pkg_spec.sql`):**

- **Procedure `add_customer`**:
  - **Description**: Adds a new customer to the `customers` table.
  - **Parameters**:
    - `p_first_name`: First name of the customer.
    - `p_last_name`: Last name of the customer.
    - `p_email`: Email address of the customer.
    - `p_phone_number`: Phone number of the customer.

- **Procedure `update_customer`**:
  - **Description**: Updates details of an existing customer.
  - **Parameters**:
    - `p_customer_id`: ID of the customer to be updated.
    - `p_first_name`: New first name of the customer.
    - `p_last_name`: New last name of the customer.
    - `p_email`: New email address of the customer.
    - `p_phone_number`: New phone number of the customer.

- **Function `get_customer`**:
  - **Description**: Retrieves customer details by ID.
  - **Parameters**:
    - `p_customer_id`: ID of the customer.
  - **Returns**: A concatenated string of customer details.

- **Procedure `delete_customer`**:
  - **Description**: Deletes a customer from the `customers` table.
  - **Parameters**:
    - `p_customer_id`: ID of the customer to be deleted.

- **Procedure `load_customers`**:
  - **Description**: Loads customer data from the `staging_customers` table to the `customers` table.
  - **Note**: This procedure assumes that the `staging_customers` table contains data to be loaded into the `customers` table.

**Package Body (`customer_management_pkg_body.sql`):**

- Contains the implementation details for the procedures and functions declared in the specification.

## Usage

### Stored Procedures and Functions

To use the procedures and functions in the `customer_management_pkg` package, you can execute PL/SQL blocks or call them directly from your application code.

**Examples:**

1. **Add a New Customer:**
   ```sql
   BEGIN
       customer_management_pkg.add_customer(
           p_first_name => 'John',
           p_last_name => 'Doe',
           p_email => 'john.doe@example.com',
           p_phone_number => '123-456-7890'
       );
   END;


## Usage

Instructions on how to use and run the scripts are provided in each respective folder.
