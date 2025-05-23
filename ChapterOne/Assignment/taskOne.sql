USE ecommerce_projects;
CREATE TABLE users(
user_id INT,
user_name VARCHAR(20),
pass_word VARCHAR(20),
email VARCHAR(50),
first_name VARCHAR(20),
last_name VARCHAR(20),
created_at DATETIME,
updated_at DATETIME,
PRIMARY KEY(user_id)
);

CREATE TABLE products(
product_id INT,
product_name VARCHAR(20),
description TEXT,
price DECIMAL(10, 2),
stock_quantity INT,
category_id INT,
created_at DATETIME,
updated_at DATETIME,
PRIMARY KEY (product_id),
FOREIGN KEY(user_id) REFERENCES users(user_id)
);

CREATE TABLE orders (
    order_id INT,
    user_id INT,
    order_date DATETIME,
    total_amount DECIMAL(10, 2),
    status ENUM('Pending', 'Shipped', 'Delivered', 'Cancelled'),
    shipping_address VARCHAR(255),
    created_at DATETIME,
    updated_at DATETIME,
    PRIMARY KEY (order_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);



