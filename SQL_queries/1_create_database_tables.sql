-- Create database
CREATE DATABASE apple_sales

-- Create customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    country VARCHAR(50),
    region VARCHAR(50),
    city VARCHAR(50),
    customer_segment VARCHAR(50),
    customer_age_group VARCHAR(20),
    previous_device_os VARCHAR(50)
);

-- Create products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    storage VARCHAR(20),
    color VARCHAR(20)
);

CREATE TABLE sales (
    sale_id VARCHAR(20) PRIMARY KEY,
    sale_date DATE,
    month VARCHAR(20),
    year INT,
    season VARCHAR(20),
    customer_id INT,
    product_id INT,
    units_sold INT,
    revenue_usd DECIMAL(12,2),
    discount_level VARCHAR(20),
    discount_amount DECIMAL(10,2),
    discount_pct DECIMAL(5,2),
    customer_rating DECIMAL(2,1),
    return_status VARCHAR(20),
    
    -- Foreign keys
    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    CONSTRAINT fk_product
        FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Load customers
COPY customers(customer_id,country,region,city,customer_segment,customer_age_group,previous_device_os)
FROM 'C:\Users\HP\OneDrive\Projet_DATA_ANALYST\Apple_Sales\csv_files\customers.csv' DELIMITER ',' CSV HEADER;

-- Load products
COPY products(product_id,product_name,category,storage,color)
FROM 'C:\Users\HP\OneDrive\Projet_DATA_ANALYST\Apple_Sales\csv_files\products.csv' DELIMITER ',' CSV HEADER;

-- Load sales
COPY sales(sale_id,sale_date,month,season,year,customer_id,product_id,units_sold,revenue_usd,
            discount_level,discount_amount,discount_pct,customer_rating,return_status)
FROM 'C:\Users\HP\OneDrive\Projet_DATA_ANALYST\Apple_Sales\csv_files\sales.csv' DELIMITER ',' CSV HEADER;

-- i replaced the 'â€“' with - in the age group column
UPDATE customers
SET customer_age_group = REPLACE(customer_age_group, 'â€“', '-');