INSERT INTO product (id, name, description, price, stock_quantity, category_id, supplier_id, is_active) VALUES
(1, 'Rice 1kg', 'White rice package', 1.50, 100, 1, 1, true),
(2, 'Beans 1kg', 'Black beans package', 1.20, 50, 1, 2, true),
(3, 'Milk 1L', 'Whole milk carton', 0.99, 200, 2, 3, true),
(4, 'Sugar 1kg', 'White sugar package', 1.10, 80, 1, 1, true),
(5, 'Coffee 500g', 'Ground coffee pack', 4.50, 40, 3, 2, true);


INSERT INTO supplier (id, name, contact, phone_number, address) VALUES
(1, 'Global Supplies Ltd.', 'contact@globalsupplies.com', '555-1234', '123 Main Street'),
(2, 'Fresh Market Distributors', 'info@freshmarket.com', '555-5678', '456 Market Ave'),
(3, 'Premium Products Co.', 'sales@premiumproducts.com', '555-9012', '789 Industrial Rd');


INSERT INTO category (id, name, description) VALUES
(1, 'Groceries', 'Essential food items'),
(2, 'Dairy', 'Milk and related products'),
(3, 'Beverages', 'Coffee, tea, and soft drinks');


INSERT INTO movement (id, movement_type, quantity, movement_date, description, product_id, user_id) VALUES
(1, 'entry', 50, '2025-01-01', 'Restock from supplier', 1, 1),
(2, 'exit', 10, '2025-01-02', 'Sold to customer', 2, 2),
(3, 'entry', 100, '2025-01-03', 'Restock from supplier', 3, 3),
(4, 'exit', 5, '2025-01-04', 'Sold to customer', 4, 2),
(5, 'entry', 20, '2025-01-05', 'Restock from supplier', 5, 1);

INSERT INTO inventory_adjustment (id, product_id, adjusted_quantity, description, adjustment_date, user_id) VALUES
(1, 1, 5, 'Physical count adjustment', '2025-01-06', 1),
(2, 2, -3, 'Correction due to damaged items', '2025-01-06', 2),
(3, 3, 10, 'Extra stock found', '2025-01-07', 3),
(4, 4, -2, 'Correction for theft', '2025-01-07', 2),
(5, 5, 0, 'No adjustments needed', '2025-01-08', 1);

INSERT INTO user_store (id, full_name, role, password) VALUES
(1, 'Admin User', 'admin', 'securepassword123'),
(2, 'Store Manager', 'employee', 'managerpassword'),
(3, 'Cashier One', 'employee', 'cashierpassword');
