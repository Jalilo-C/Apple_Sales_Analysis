import pandas as pd

# importing the data
apple_sales = pd.read_csv('csv_files/apple_global_sales_cleaned.csv')

# Creating customers table
customers = apple_sales[['country','region','city','customer_segment','customer_age_group','previous_device_os']].drop_duplicates().reset_index(drop=True)
customers['customer_id'] = range(1, len(customers)+1)

# Creating products table
products = apple_sales[['product_name','category','storage','color']].drop_duplicates().reset_index(drop=True)
products['product_id'] = range(1, len(products)+1)

# Merge IDs back to main table
apple_sales_fact = apple_sales.merge(customers, on=['country','region','city','customer_segment','customer_age_group','previous_device_os'], how='left')
apple_sales_fact = apple_sales_fact.merge(products, on=['product_name','category','storage','color'], how='left')

# Create sales table
sales = apple_sales_fact[['sale_id','sale_date', 'month', 'season', 'year','customer_id','product_id','units_sold','revenue_usd','discount_level', 'discount_amount', 'discount_pct','customer_rating','return_status']]

# Create our csv files
sales.to_csv('csv_files/sales.csv', index=False)
customers.to_csv('csv_files/customers.csv', index=False)
products.to_csv('csv_files/products.csv', index=False)