CREATE TABLE Supplier (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    contact VARCHAR(255),
    phone_number VARCHAR(20),
    address TEXT
);

CREATE TABLE Category(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE UserStore(
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    role VARCHAR(50) CHECK (role IN ('admin', 'employee')),
    password VARCHAR(255) NOT NULL
);


CREATE TABLE PRODUCT (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL,
    category_id INT REFERENCES Category(id),
    supplier_id INT REFERENCES Supplier(id),
    is_active BOOLEAN DEFAULT TRUE

);

CREATE TABLE Movement(
    id SERIAL PRIMARY KEY,
    product_id INT REFERENCES Product(id),
    movement_type VARCHAR(10) CHECK (movement_type IN ('entry', 'exit')),
    quantity INT NOT NULL,
    movement_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_id INT REFERENCES user_store(id),
    description TEXT
);

CREATE TABLE InventoryAdjustment(
    id SERIAL PRIMARY KEY,
    product_id INT REFERENCES Product(id),
    adjusted_quantity INT,
    description TEXT,
    adjustment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_id INT REFERENCES user_store(id)
);

