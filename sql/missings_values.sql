SELECT *
FROM customer_sales
WHERE Shipping_Address IS NULL
   OR Temperature IS NULL
   OR Sensor_Reading IS NULL;
